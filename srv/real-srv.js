var redis_host = process.env.REDIS_HOST||'127.0.0.1'

require('seneca')()
  .use('../lib/real.js')
//  .listen({type:'pubsub',host:redis_host})
  .listen({host: '0.0.0.0', port:9001})
