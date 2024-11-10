import { Flowbite, ThemeModeScript } from "flowbite-react";
import { Inter } from "next/font/google";
import { cache } from "react";
import { twMerge } from "tailwind-merge";
import { AuthProvider } from "../contexts/auth_context";
import { me } from "../src/services/backend";
import "./globals.css";
import { customTheme } from "./theme";

const inter = Inter({ subsets: ["latin"] });

export const dynamic = "force-dynamic";

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  const { result: user } = await cache(me)();
  return (
    <html lang="en">
      <head>
        {/* <link
          href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap"
          rel="stylesheet"
          type="text/css"
        /> */}
        <title>Fleet Pay</title>
        <ThemeModeScript />
      </head>
      <body className={twMerge("bg-gray-50 dark:bg-gray-900", inter.className)}>
        <Flowbite theme={{ theme: customTheme }}>
          <AuthProvider user={user}>{children}</AuthProvider>
        </Flowbite>
      </body>
    </html>
  );
}
