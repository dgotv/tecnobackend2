import {QueryResult} from 'pg';
import pool from '../database/db_connect';
import {Request, Response} from 'express';

export const getUsuarioById = async (req: Request, res: Response): Promise<Response> => {
	const id = parseInt(req.params.id);

	if (isNaN(id)) {
		return res.status(400).json({message: 'ID inválido'});
	}

	try {
		const response: QueryResult = await pool.query('SELECT * FROM usuarios WHERE id = $1', [id]);
		// Verifica si el usuario fue encontrado
		if (response.rows.length === 0) {
			return res.status(404).json({message: 'Usuario no encontrado'});
		}

		return res.json(response.rows[0]);
	} catch (error) {
		console.error('Error al obtener el ususario', error);
		return res.status(500).json({message: 'Error interno del servidor'});
	}
};
