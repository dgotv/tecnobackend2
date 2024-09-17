import {QueryResult} from 'pg';
import pool from '../database/db_connect';
import {Request, Response} from 'express';

export const getComputadoras = async (req: Request, res: Response): Promise<Response> => {
	try {
		const response: QueryResult = await pool.query('SELECT * FROM computadoras;');
		return res.status(200).json(response.rows);
	} catch (error) {
		console.error(console);
		return res.status(500).json('Internal Server Error');
	}
};

export const getComputadorasById = async (req: Request, res: Response): Promise<Response> => {
	const id = parseInt(req.params.id);
	try {
		const response: QueryResult = await pool.query('SELECT * FROM computadoras WHERE id = $1', [id]);
		return res.json(response.rows);
	} catch (error) {
		console.error(error);
		return res.status(500).json('Internal Server Error');
	}
};

export const createComputadora = async (req: Request, res: Response): Promise<Response> => {
	const {computadorarMarca, computadoraModelo, computadoraPrecio, computadoraDescripcion, computadoraImagen} = req.body;

	if (
		computadorarMarca !== null &&
		computadoraModelo !== null &&
		computadoraPrecio !== null &&
		computadoraDescripcion !== null &&
		computadoraImagen
	) {
		try {
			await pool.query(
				'INSERT INTO computadoras (marca, modelo, precio, descripcion, imagen) values ($1, $2, $3, $4, $5)',
				[computadorarMarca, computadoraModelo, computadoraPrecio, computadoraDescripcion, computadoraImagen],
			);
			return res.status(201).json({
				message: 'Computadora creada exitosamente',
				computadora: {
					computadorarMarca,
					computadoraModelo,
					computadoraPrecio,
					computadoraDescripcion,
					computadoraImagen,
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

export const deleteComputadora = async (req: Request, res: Response): Promise<Response> => {
	const id = parseInt(req.params.id);

	try {
		await pool.query('DELETE FROM computadoras WHERE id = $1', [id]);
		return res.status(200).json(`El celular ${id} fue borrado exitosamente.`);
	} catch (error) {
		console.error(error);
		return res.status(500).json('Internal Server Error');
	}
};

export const updateComputadora = async (req: Request, res: Response): Promise<Response> => {
	const id = parseInt(req.params.id);
	const {marca, modelo, precio, descripcion, imagen} = req.body;

	try {
		const computador: QueryResult = await pool.query('SELECT * FROM computadoras WHERE id = $1', [id]);
		if (computador.rowCount === 0) {
			return res.status(404).json({message: 'Computador no encontrado'});
		}

		const result: QueryResult = await pool.query(
			'UPDATE computadoras SET marca = $1, modelo = $2, precio = $3, descripcion = $4, imagen = $5 WHERE id = $6',
			[marca, modelo, precio, descripcion, imagen, id],
		);

		return res.status(200).json({
			message: 'Computador actualizado con éxito',
			computadores: {
				id,
				marca,
				modelo,
				precio,
				descripcion,
				imagen,
			},
		});
	} catch (error) {
		console.error('Error al actualizar el Computador:', error);
		return res.status(500).json({message: 'Error interno del servidor'});
	}
};
