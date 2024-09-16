import {Request, Response, NextFunction} from 'express';

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

export const authorizeRole = (roles: string[]) => {
	return (req: Request, res: Response, next: NextFunction) => {
		console.log('User role nnn:', req.user?.rol);
		if (req.user && roles.includes(req.user.rol)) {
			next();
		} else {
			res.status(403).json({error: 'Forbidden: You do not have the correct role'});
		}
	};
};
