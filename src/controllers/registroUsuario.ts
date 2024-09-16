import pool from '../database/db_connect';
import {Request, Response} from 'express';
import bcrypt from 'bcrypt';

export const registroUsuario = async (req: Request, res: Response): Promise<Response> => {
	const {nombre, correo, clave, rol = 'cliente'} = req.body;

	//encriptación
	const saltRounds = 10;
	try {
		const hashedPassword = await bcrypt.hash(clave, saltRounds);
		await pool.query('INSERT INTO usuarios (nombre, correo, clave, rol ) values ($1, $2, $3, $4)', [
			nombre,
			correo,
			hashedPassword,
			rol,
		]);
		return res.status(201).json({
			message: 'Usuario creado exitosamente',
			usuario: {
				nombre,
				correo,
			},
		});
	} catch (error) {
		console.error(error);
		return res.status(500).json('Internal Server Error');
	}
};
