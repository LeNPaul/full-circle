var express = require('express')
var serveStatic = require('serve-static')
var path = require('path')

var app = express()

app.use(serveStatic('_site', {
  'index': ['index.html', 'index.htm']
}))

app.use(function(req, res) {
  res.status(400);
  res.sendFile(path.join(__dirname + '/_site/404.html'));
});

app.use(function(error, req, res, next) {
  res.send('500: Internal Server Error', 500);
});

var port = process.env.PORT || 4000;

app.listen(port)
console.log('Magic happens on port ' + port); 	
