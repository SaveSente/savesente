import { Router } from "express";
import * as walletController from "../controllers/wallets.js";


const router = Router();

router.post('/create', walletController.create_wallet);

export default router;