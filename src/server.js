import { createProxyMiddleware } from 'http-proxy-middleware';

const proxy = createProxyMiddleware({
  target: 'https://padmdb.rainbowsite.net',
  changeOrigin: true,
  pathRewrite: {
    '^/api': '/listJson/skill_list.json'
  }
});

/**
 * @param {{ use: (arg0: string, arg1: import("http-proxy-middleware").RequestHandler) => void; }} app
 */
export default function (app) {
  app.use('/api', proxy);
}
