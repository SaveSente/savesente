import { Router } from "express";
import * as userController from "../controllers/user.js";


const router = Router();

// Route to create a new user
router.post('/create', userController.create_customer);
router.get('/:id', userController.get_customer);

export default router;