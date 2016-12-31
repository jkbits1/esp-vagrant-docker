"use strict";

(argv => {

  const http = require('http');
  const fs = require('fs');

  const redis = require("redis");

  class Args {
    constructor (argv) {
      this.args = Array.prototype.slice.call(argv, 2);
    }
  }

  let args = new Args(argv).args;
  let port        = args[0];
  let redisServer = args[1];
  let file        = args[2]; // 123

  const client = redis.createClient({
    host: redisServer
  });

  client.on("error", err => {
    console.log("Error " + err);
  });

  let server = http.createServer((req, res) => {
    let str = fs.createReadStream(file);

    // client.get("test2", (err, reply) => {
    //   if (err) {
    //     return console.log("error");
    //   }

    //   console.log(reply);
    //   // str.pipe(res);

    //   res.end(reply);
    // });

    client.lpop("items", (err, reply) => {
      if (err) {
        res.end("error");
        
        return console.log("error");
      }

      console.log(reply);
      // str.pipe(res);

      res.end(reply);
    });
  });

  server.listen(port, () => {

  });

})(process.argv);

