import 'dotenv/config'
import express from 'express';
import cors from 'cors';
import userRoutes from './routes/user.js';


const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());

app.use('/api/customers', userRoutes);

app.listen(PORT,()=>{
    console.log(`App listening on port ${PORT}`)
})