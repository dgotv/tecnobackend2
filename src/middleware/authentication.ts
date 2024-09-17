import {Request, Response, NextFunction} from 'express';
import jwt from 'jsonwebtoken';

interface User {
	rol: string;
}

declare global {
	namespace Express {
		interface Request {
			user: User;
		}
	}
}

require('dotenv').config();

export const authenticateToken = (req: Request, res: Response, next: NextFunction) => {
	const authHeaders = req.headers['authorization'];
	const token = authHeaders && authHeaders.split(' ')[1];
	if (!token) {
		return res.status(401).json({error: 'Auth Token Not Found'});
	}
	interface JwtPayload {
		rol: string;
		id: number;
	}

	jwt.verify(token, `${process.env.ACCESS_TOKEN_SECRET}`, (err, decoded) => {
		if (err) {
			console.error('Token verification  mal error:', err);
			return res.status(403).json({error: 'Invalid Token'});
		}
		req.user = decoded as JwtPayload;
		console.log('Authenticated user no enc:', req.user);
		next();
	});
};
