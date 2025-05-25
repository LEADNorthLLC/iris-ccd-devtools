/** @type {import('next').NextConfig} */
const nextConfig = {
    output: 'standalone',
    async rewrites() {
        return [
            {
                source: '/csp/visualizer/service/:path*',
                destination: 'http://localhost:62773/csp/visualizer/service/:path*', // This is your actual API backend
            },
        ];
    },
};

export default nextConfig;
