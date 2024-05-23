import { pool } from "../db.js";

export const crear = async (req, res) => {
    const {valor, tipo} = req.body;
    const [rows] = await pool.query('CALL sp_crear(?, ?)', [valor, tipo])
    res.json(rows)
}

export const listar = async (req, res) => {
    const [rows] = await pool.query('CALL sp_listar()')
    res.json(rows[0])
}

export const mostrar1 = async (req, res) => {
    const {id} = req.params;
    const [rows] = await pool.query('CALL sp_mostrar1(?)', [id])
    res.json(rows[0])
}



// export const editar = async (req, res) => {
//     const id = req.params;
//     const {valor, tipo} = req.body;
//     const [rows] = await pool.query('CALL sp_editar(?, ?)', [valor, tipo])
//     res.json(rows)
// }
