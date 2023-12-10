/** @type {import('next').NextConfig} */
const isProd = process.env.NODE_ENV === 'production';

const nextConfig = {
    env: {},
    reactStrictMode: true,
    swcMinify: true,
    compress: true,
    output: isProd ? 'export': 'standalone',
    images: {
        unoptimized: true,
    },
    distDir: 'build',
}

module.exports = nextConfig