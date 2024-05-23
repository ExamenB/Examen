import { Router } from "express";
import { crear, eliminar, listar, editar, mostrar1 } from "../controllers/pago.controller.js";

const router = Router();

router.get("/", listar)
router.get("/:id", mostrar1)
router.post("/", crear)
router.put("/:id", editar)
router.delete("/:id", eliminar)

export default router;