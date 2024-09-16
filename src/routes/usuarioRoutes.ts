import {Router} from 'express';
import {registroUsuario} from '../controllers/registroUsuario';
import {login} from '../controllers/loginUsuario';
import {getCelulares, getCelularesById} from '../controllers/celularesController';
import {getComputadoras, getComputadorasById} from '../controllers/computadorasController';
import {getUsuarioById} from '../controllers/perfilUsuario';

export const usuarioRoutes = Router();
usuarioRoutes.post('/registro/usuario', registroUsuario);
usuarioRoutes.post('/login/usuario', login);
usuarioRoutes.get('/perfil/usuario/:id', getUsuarioById);
usuarioRoutes.get('/home', getCelulares, getComputadoras); //no usar esta ruta
usuarioRoutes.get('/celulares', getCelulares);
usuarioRoutes.get('/celulares/:id', getCelularesById);
usuarioRoutes.get('/computadoras', getComputadoras);
usuarioRoutes.get('/computadoras/:id', getComputadorasById);
