import {QueryResult} from 'pg';
import pool from '../database/db_connect';
import {Request, Response} from 'express';

/**
 * Get All Data of celulares Table.
 * @param req
 * @param res
 * @returns celulares
 */

export const getCelulares = async (req: Request, res: Response): Promise<Response> => {
	try {
		const response: QueryResult = await pool.query('SELECT * FROM celulares;');
		return res.status(200).json(response.rows);
	} catch (error) {
		console.error(console);
		return res.status(500).json('Internal Server Error');
	}
};

//celulares by id

export const getCelularesById = async (req: Request, res: Response): Promise<Response> => {
	const id = parseInt(req.params.id);
	try {
		const response: QueryResult = await pool.query('SELECT * FROM celulares WHERE id = $1', [id]);
		return res.json(response.rows);
	} catch (error) {
		console.error(error);
		return res.status(500).json('Internal Server Error');
	}
};

//Create a new celular

export const createCelular = async (req: Request, res: Response): Promise<Response> => {
	const {celularId, celularMarca, celularModelo, celularPrecio, celularDescripcion, celularImagen} = req.body;

	if (
		celularMarca !== null &&
		celularModelo !== null &&
		celularPrecio !== null &&
		celularDescripcion !== null &&
		celularImagen
	) {
		try {
			await pool.query(
				'INSERT INTO celulares (id, marca, modelo, precio, descripcion, imagen) values ($1, $2, $3, $4, $5, $6)',
				[celularId, celularMarca, celularModelo, celularPrecio, celularDescripcion, celularImagen],
			);
			return res.status(201).json({
				message: 'Celular creado exitosamente',
				celular: {
					celularId,
					celularMarca,
					celularModelo,
					celularPrecio,
					celularDescripcion,
					celularImagen,
				},
			});
		} catch (error) {
			console.error(error);
			return res.status(500).json('Internal Server Error');
		}
	} else {
		return res.status(500).json('Internal Server Error');
	}
};

//Delete celular by id

export const deleteCelular = async (req: Request, res: Response): Promise<Response> => {
	const id = parseInt(req.params.id);

	try {
		await pool.query('DELETE FROM celulares WHERE id = $1', [id]);
		return res.status(200).json(`El celular ${id} fue borrado exitosamente.`);
	} catch (error) {
		console.error(error);
		return res.status(500).json('Internal Server Error');
	}
};

//Update celular by Id

export const updateCelular = async (req: Request, res: Response): Promise<Response> => {
	const id = parseInt(req.params.id); // Obtener el id desde los parámetros de la URL
	const {marca, modelo, precio, descripcion, imagen} = req.body; // Obtener los datos del cuerpo de la solicitud

	try {
		// Verificar si el celular con el ID existe
		const celular: QueryResult = await pool.query('SELECT * FROM celulares WHERE id = $1', [id]);
		if (celular.rowCount === 0) {
			return res.status(404).json({message: 'Celular no encontrado'});
		}

		// Actualizar el celular en la base de datos
		const result: QueryResult = await pool.query(
			'UPDATE celulares SET marca = $1, modelo = $2, precio = $3, descripcion = $4, imagen = $5 WHERE id = $6',
			[marca, modelo, precio, descripcion, imagen, id],
		);

		return res.status(200).json({
			message: 'Celular actualizado con éxito',
			celulares: {
				id,
				marca,
				modelo,
				precio,
				descripcion,
				imagen,
			},
		});
	} catch (error) {
		console.error('Error al actualizar el celular:', error);
		return res.status(500).json({message: 'Error interno del servidor'});
	}
};

///no funciono este update
export const udateejemll = async (req: Request, res: Response): Promise<Response> => {
	const id = parseInt(req.params.id);
	const {marca, modelo, precio, descripcion, imagen} = req.body;

	try {
		await pool.query(
			'UPDATE celulares SET marca = $1, modelo = $2, precio =$3, descripcion = $4, imagen = $5 WHERE id = $6',
			[marca, modelo, precio, descripcion, imagen, id],
		);

		return res.json({
			message: 'Celular actualizado con exito.',
			celulares: {
				marca,
				modelo,
				precio,
				descripcion,
				imagen,
				id,
			},
		});
	} catch (error) {
		console.error(error);
		return res.status(500).json('Internal Server Error');
	}
};
