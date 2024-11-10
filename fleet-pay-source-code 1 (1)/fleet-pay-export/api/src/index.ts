import http from "http";;
import express from "express";
require('dotenv').config();

import authRoutes from "./routes/auth/routes";
import adminRoutes from "./routes/admin/routes";
import companyRoutes from "./routes/company/routes";
import contractorRoutes from "./routes/contractor/routes";

// --- start imports code ---
import cors from "cors";
import { ValidationError } from "express-validation";
import { runMigrations } from "./migrations/migration";
import { BackendResponse } from "./models/response";

import admin from 'firebase-admin';

export const firebase = admin.initializeApp({
    credential: admin.credential.cert({
        clientEmail: "firebase-adminsdk-maln8@fleetpay-b9f98.iam.gserviceaccount.com",
        privateKey: process.env.GCP_PRIVATE_KEY!,
        projectId: "fleetpay-b9f98",
    }),
});


// --- end imports code ---

const app = express();

const server = http.createServer(app);

app.use(express.json({ limit: '50mb' }));

// --- start global_request_middlewares code ---
app.use(cors());
// --- end global_request_middlewares code ---

app.use("/auth", authRoutes);

app.use("/admin", adminRoutes);

app.use("/company", companyRoutes);

app.use("/contractor", contractorRoutes);

// --- start other_routes code ---

// --- end other_routes code ---

// --- start global_response_middlewares code ---

// --- end global_response_middlewares code ---

// Global Error handler
app.use((err: any, req: any, res: any, next: any) => {
    console.error(err);
    if (err.statusCode === 400) {
        let response: BackendResponse<String>;
        if (err instanceof ValidationError) {
            console.log(err.details)
            response = {
                code: 400,
                error: [
                    ...err.details.body?.map((e: any) => `${e.message} in body`) ?? [],
                    ...err.details.params?.map((e: any) => `${e.message} in params`) ?? []
                ].join(", ") ?? "Bad request"
            }
        } else if (err instanceof SyntaxError) {
            response = {
                code: 400,
                error: "Invalid JSON payload passed. " + err.message
            }
          // --- start extra_error_handler code ---

            // --- end extra_error_handler code ---
        } else {
            response = {
                code: 400,
                error: "Unknown error occurred"
            }
        }
        return res.status(400).json(response);
    }
    // Handle other errors
    res.status(500).json({
        code: 500,
        error: 'Internal server error'
    });
});

const PORT = process.env.PORT ?? 8000;

server.listen(PORT, () => {
    console.log(`⚡️[server]: Server is running at https://localhost:${PORT}`);
});

// --- start extension code ---

runMigrations();

// --- end extension code ---

export default app;
