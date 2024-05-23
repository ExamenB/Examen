import { pool } from "../db.js";

export const crear = async (req, res) => {
    try {
        const { valor, tipo } = req.body;
        const [rows] = await pool.query('CALL sp_crear(?, ?)', [valor, tipo]);
        res.json({
            "Usuario creado": "",
            "Valor": valor,
            "Tipo": tipo
        });
    } catch (error) {
        res.json({ "Error": error });
    }
};

export const listar = async (req, res) => {
    try {
        const [rows] = await pool.query('CALL sp_listar()');
        res.json(rows[0]);
    } catch (error) {
        res.json({ "Error": error });
    }
};

export const mostrar1 = async (req, res) => {
    try {
        const { id } = req.params;
        const [rows] = await pool.query('CALL sp_mostrar1(?)', [id]);
        res.json(rows[0]);
    } catch (error) {
        res.json({ "Error": error });
    }
};

export const editar = async (req, res) => {
    try {
        const { id } = req.params;
        const { valor, tipo } = req.body;
        const [rows] = await pool.query('CALL sp_editar(?, ?, ?)', [id, valor, tipo]);
        res.json({
            "Valores modificados exitosamente:": "",
            "id": id,
            "valor": valor,
            "tipo": tipo
        });
    } catch (error) {
        res.json({ "Error": error });
    }
};

export const eliminar = async (req, res) => {
    try {
        const { id } = req.params;
        const [rows] = await pool.query('CALL sp_elim(?)', [id]);
        res.json({ "Ha sido eliminada el pago con la id": id });
    } catch (error) {
        res.json({ "Error": error });
    }
};