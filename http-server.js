const http = require('http');

http.createServer(function(req, res) {
  res.write('Hello, this is example http server on Google Cloud Run!');
  res.end(); 
}).listen(8080);