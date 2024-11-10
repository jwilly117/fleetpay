import { PrismaClient } from "@prisma/client";

import admin from "firebase-admin";
import { Message } from "firebase-admin/lib/messaging/messaging-api";

const prisma = new PrismaClient();


export async function sendNotification({
    userId,
    title,
    message,
    action,
}: {
    userId: string;
    title: string;
    message: string
    action: string;
}) {

    const user = await prisma.user.findFirst({
        where: {
            id: userId,
        },
        select: {
            fcmTokens: true
        }
    });

    if (!user) {
        console.error("User not found while sending notification");
        return;
    }

    let sentTokens = await Promise.all(user.fcmTokens.map(async (token) => {
        const payload: Message = {
            token: token,
            notification: {
                title: title,
                body: message,
            },
            data: {
                action_url: action
            },
        };
        return admin.messaging()
            .send(payload)
            .then(() => {
                return token;
            })
            .catch((e) => {
                console.error("Unable to send notification to ", token);
                return null
            });
    }))


    const validTokens: string[] = sentTokens.filter(token => token !== null) as string[];


    if (validTokens.length < user.fcmTokens.length) {
        await prisma.user.update({
            where: {
                id: userId,
            },
            data: {
                fcmTokens: {
                    set: validTokens
                }
            }
        });
    }
}