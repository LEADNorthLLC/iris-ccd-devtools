/** @type {import('next').NextConfig} */
const nextConfig = {
  async rewrites() {
    return [
      {
        source: '/csp/visualizer/service/:path*',
        destination: 'http://localhost:62773/csp/visualizer/service/:path*',
      },
    ];
  },
};

module.exports = nextConfig;