import {Router} from 'express';
import {crearProducto} from '../controllers/crearProducto';
import {authenticateToken} from '../middleware/authentication';
import {authorizeRole} from '../middleware/authorization';
import {
	createCelular,
	deleteCelular,
	getCelulares,
	getCelularesById,
	updateCelular,
} from '../controllers/celularesController';
import {
	createComputadora,
	deleteComputadora,
	getComputadoras,
	getComputadorasById,
	updateComputadora,
} from '../controllers/computadorasController';

export const adminRoutes = Router();
adminRoutes.post('/crear/producto', authenticateToken, authorizeRole(['administrador']), crearProducto);
adminRoutes.post('/celulares/crear', authenticateToken, authorizeRole(['administrador']), createCelular);
adminRoutes.delete('/delete/celular/:id', authenticateToken, authorizeRole(['administrador']), deleteCelular);
adminRoutes.put('/update/celular/:id', authenticateToken, authorizeRole(['administrador']), updateCelular);
//adminRoutes.put('/update/celular/:id', updateCelular);

adminRoutes.post('/computadoras/create', authenticateToken, authorizeRole(['administrador']), createComputadora);
adminRoutes.delete('/delete/computadora/:id', authenticateToken, authorizeRole(['administrador']), deleteComputadora);
adminRoutes.put('/update/computadora/:id', authenticateToken, authorizeRole(['administrador']), updateComputadora);
