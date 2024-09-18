import localFont from "next/font/local";
import "./globals.css";
import { Sidebar, TopBar } from "@/components";

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
  title: "CCD Tools",
  description: "A tool created by LEAD North LLC",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased overflow-x-hidden`}
      >
        <TopBar />
        <div className="flex overflow-hidden">
          <Sidebar />
          {children}
        </div>
      </body>
    </html>
  );
}
