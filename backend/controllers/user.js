import user from "../models/user.js";
import bitnobApi from "../utitls/bitnobConfig.js";



export const create_customer = async (req, res, next) => {
  try {
    const { firstName, lastName, email, phone, countryCode } = req.body;

    // Validate required fields
    if (!firstName || !lastName || !email || !phone || !countryCode) {
      return res.status(400).json({ error: 'All fields are required' });
    }

     const existingUser = await user.findOne({ where: { email } });
    if (existingUser) {
      return res.status(409).json({ error: 'User with this email already exists' });
    }

    // Create user in the database
    const newUser = await user.create({
      firstName,
      lastName,
      email,
      phone,
      countryCode
    });

    //create customer in Bitnob
    try{
        const response = await bitnobApi.post('/customers', {
            firstName: firstName,
            lastName: lastName,
            email,
            phone,
            countryCode: countryCode,
        });

        console.log('Bitnob response:', response.data);
        if (response?.data?.status !== true) {
        return res.status(response.status).json({ error: 'Failed to create customer in Bitnob' });
        }
        const bitnobCustomerId = response?.data?.data?.id;
        // Update user with Bitnob customer ID
        await newUser.update({ bitnob_customer_id: bitnobCustomerId });
    }catch (error) {
      console.error('Error creating user in Bitnob:', error);
      return res.status(500).json({ error: 'Failed to create customer in Bitnob' });
    } 

    return res.status(201).json({
        message: 'User created successfully',
        user: {
          id: newUser.id,
            firstName: newUser.firstName,
            lastName: newUser.lastName,
            email: newUser.email,
            phone: newUser.phone,
            countryCode: newUser.countryCode,
            bitnob_customer_id: newUser.bitnob_customer_id,
        }
    });
  } catch (error) {
    console.error('Error creating user:', error);
    return res.status(500).json({ error: 'Internal server error' });
  }
}