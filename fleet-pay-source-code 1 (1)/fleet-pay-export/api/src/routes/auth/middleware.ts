import basicAuth from "basic-auth";
import { NextFunction, Request, Response } from "express";
import { JwtPayload, verify } from "jsonwebtoken";
import { BackendResponse } from "../../models/response";
import { validateCreds } from "./controllers";

// middleware to parse the token from the request

export async function authenticateUser(
  req: Request,
  res: Response,
  next: NextFunction
) {
  console.log(`${req.method} - ${req.url}`);
  const token = req.headers.authorization;
  try {
    if (!token) {
      res.setHeader("WWW-Authenticate", "Basic");
      return res.status(401).json({
        code: 401,
        error: "Authentication not provided",
      } as BackendResponse<null>);
    }

    if (token.startsWith("Bearer ")) {
      const jwtPayload = (await verify(
        token!.replace("Bearer ", ""),
        process.env.JWT_SECRET!
      )) as JwtPayload;
      req.headers["userId"] = jwtPayload["userId"];
    } else if (token.startsWith("Basic ")) {
      const creds = basicAuth(req);
      if (creds == null) {
        return res.status(401).json({
          code: 401,
          error: "Invalid authentication provided",
        } as BackendResponse<null>);
      }
      const {
        result: authUser,
        error,
        code,
      } = await validateCreds(creds.name, creds.pass);

      if (authUser == null) {
        return res.status(code).json({
          code: code,
          error: error,
        } as BackendResponse<null>);
      }
      req.headers["userId"] = authUser.id;
    }
  } catch (e) {
    return res.status(401).json({
      code: 401,
      error: "Invalid authentication provided",
    } as BackendResponse<null>);
  }
  next();
}
