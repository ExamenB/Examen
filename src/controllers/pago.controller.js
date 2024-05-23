import { pool } from "../db.js";

export const crear = async (req, res) => {
    const {valor, tipo} = req.body;
    const [rows] = await pool.query('CALL sp_crear(?, ?)', [valor, tipo])
    res.json(rows)
}
