const Koa = require('koa');
const _ = require('koa-route');

const App = new Koa();

App.use(_.get('/', async ctx => {
  ctx.body = 'Hello World!';
}));

console.log('Listening on Port 1111');
App.listen(1111);
