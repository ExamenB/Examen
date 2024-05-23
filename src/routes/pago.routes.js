import { Router } from "express";
import { crear, listar, mostrar1 } from "../controllers/pago.controller.js";

const router = Router();

router.get("/", listar)
router.get("/:id", mostrar1)
router.post("/", crear)


// router.put("/:id", editar)

export default router;