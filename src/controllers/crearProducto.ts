import pool from '../database/db_connect';
import {Request, Response} from 'express';

// Controlador para crear un producto
export const crearProducto = async (req: Request, res: Response): Promise<Response | undefined> => {
	const {categoria_id, marca, modelo, precio, descripcion, imagen} = req.body;
	console.log('Datos recibidos:', req.body);

	try {
		// Dependiendo de la categoría, insertar en la tabla correspondiente
		if (categoria_id === 1) {
			// Categoría de Celulares
			const celularQuery = `INSERT INTO celulares (marca, modelo, precio, descripcion, imagen)
        VALUES ($1, $2, $3, $4, $5)`;

			const celularValues = [marca, modelo, precio, descripcion, imagen];
			await pool.query(celularQuery, celularValues);
		} else if (categoria_id === 2) {
			// Categoría de Computadoras
			const computadoraQuery = `INSERT INTO computadoras (marca, modelo, precio, descripcion, imagen)
        VALUES ($1, $2, $3, $4, $5)`;
			const computadoraValues = [marca, modelo, precio, descripcion, imagen];
			await pool.query(computadoraQuery, computadoraValues);
		} else {
			return res.status(400).json({error: 'Categoría no válida'});
		}

		res.status(201).json({message: 'Producto creado exitosamente'});
	} catch (error) {
		console.error('Error al crear el producto:', error);
		res.status(500).json({error: 'Error al crear el producto'});
	}
};
