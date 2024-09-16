import pool from '../database/db_connect';
import {Request, Response} from 'express';
import jwt from 'jsonwebtoken';
import bcrypt from 'bcrypt';

export const login = async (req: Request, response: Response): Promise<Response> => {
	const {correo, clave} = req.body;

	const query = await pool.query('SELECT * FROM usuarios WHERE correo = $1', [correo]);
	const user = query.rows[0];
	if (user) {
		const isMatch = await bcrypt.compare(clave, user.clave);
		const payload = {
			id: user.id,
			rol: user.rol,
		};

		if (isMatch) {
			const accessToken = jwt.sign(payload, `${process.env.ACCESS_TOKEN_SECRET}`, {expiresIn: '1h'});
			return response.status(200).json({accessToken});
		} else {
			return response.status(400).json('contraseña incorrecta');
		}
	} else {
		return response.status(400).json('Usuario no encontrado');
	}
};
