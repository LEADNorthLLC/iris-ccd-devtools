
import Image from "next/image";
import { links } from '@/constants/nav'
import Link from "next/link";

export default function Home() {
  
  return (
    <div className="w-full h-full m-5">
        Home Page
        <div class="flex justify-evenly items-center w-full h-full">
        {
          links && links.map((link) => (
              <Link href={link.to}>
                    <div class="relative cursor-pointer ">
                        <span class="absolute top-0 left-0 w-full h-full mt-1 ml-1 bg-indigo-500 rounded-lg "></span>
                        <div
                            class="relative p-6 bg-white  border-2 border-indigo-500 dark:border-gray-300 rounded-lg hover:scale-105 transition duration-500">
                            <div class="flex items-center">
                                <h3 class="my-2 ml-3 text-lg font-bold text-gray-800 ">{link.display}</h3>
                            </div>
                            {
                              link.desc && (
                                <p class="text-gray-600 ">
                                    {link.desc}
                                </p>
                              )
                            }
                        </div>
                    </div>
              </Link>
            ))
          }
        </div>
    </div>
  );
}
