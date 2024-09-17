import express from 'express';
import {adminRoutes} from './routes/adminRoutes';
import {usuarioRoutes} from './routes/usuarioRoutes';
import cors from 'cors';

require('dotenv').config();

const app = express();
const port = process.env.PORT;

app.use(cors());
app.use(express.json());

app.use(usuarioRoutes);
app.use(adminRoutes);

app.listen(port, () => {
	return console.log(`server is listening on ${port}`);
});
