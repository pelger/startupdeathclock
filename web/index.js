'use strict';

var beanstalk_host = process.env.BEANSTALK_HOST||'127.0.0.1'
var web_host = process.env.WEB_HOST||'127.0.0.1'


var seneca = require('seneca')()

seneca
  .use('../lib/api.js')

  .use('../lib/doc.js')
  .use('../lib/hist.js')
  .use('../lib/real.js')

  .client({port:9000,pin:{role:'hist',kind:'clock',cmd:'*'},host:web_host})
  .client({port:9001,pin:{role:'real',kind:'clock',cmd:'*'},host:web_host})
  .client({port:9002,pin:{role:'doc',kind:'clock',cmd:'*'},host:web_host})

//  .client({type:'queue',pin:{role:'doc',kind:'clock',cmd:'*'},host:beanstalk_host})


var kraken = require('kraken-js'),
    app = {};


app.configure = function configure(nconf, next) {
    // Async method run on startup.
    next(null);
};


app.requestStart = function requestStart(server) {
    // Run before most express middleware has been registered.
};


app.requestBeforeRoute = function requestBeforeRoute(server) {
    // Run before any routes have been added.
    server.use( seneca.export('web') )
};


app.requestAfterRoute = function requestAfterRoute(server) {
    // Run after all routes have been added.
};


if (require.main === module) {
    kraken.create(app).listen(function (err) {
        if (err) {
            console.error(err.stack);
        }
    });
}


module.exports = app;
