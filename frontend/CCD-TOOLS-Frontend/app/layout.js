import localFont from "next/font/local";
import "./globals.css";
<<<<<<< HEAD
import { Sidebar, TopBar } from "@/components";
=======
import ClientLayout from "./ClientLayout";
>>>>>>> main

const geistSans = localFont({
  src: "./fonts/GeistVF.woff",
  variable: "--font-geist-sans",
  weight: "100 900",
});
const geistMono = localFont({
  src: "./fonts/GeistMonoVF.woff",
  variable: "--font-geist-mono",
  weight: "100 900",
});

export const metadata = {
<<<<<<< HEAD
  title: "CCD DevTools",
  description: "A CCD evaluation and testing tool created by LEAD North LLC",
=======
  title: "Iris Interoperability DevTools",
  description: "An evaluation and testing tool created by LEAD North LLC",
>>>>>>> main
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
<<<<<<< HEAD
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased overflow-x-hidden`}
      >
        <TopBar />
        <div className="flex overflow-hidden">
          <Sidebar />
          {children}
        </div>
=======
      <body className={`${geistSans.variable} ${geistMono.variable} antialiased overflow-x-hidden`}>
        <ClientLayout>{children}</ClientLayout>
>>>>>>> main
      </body>
    </html>
  );
}
