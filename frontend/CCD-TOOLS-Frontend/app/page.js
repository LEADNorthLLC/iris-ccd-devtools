import Image from "next/image";
import axios from "axios";

const postXPath = async () => {
  await axios.post('/csp/visualizer/service/xpath/', {
    firstName: 'Fred',
    lastName: 'Flintstone'
  })
}

const postCCDToSDA = async () => {
  await axios.post('/csp/visualizer/service/transform/', {
    firstName: 'Fred',
    lastName: 'Flintstone'
  })
}

export default function Home() {
  return (
    <div className="grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]">
       
    </div>
  );
}
