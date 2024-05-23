import { Router } from "express";
import { crear } from "../controllers/pago.controller.js";

const router = Router();

router.post("/", crear)

export default router;