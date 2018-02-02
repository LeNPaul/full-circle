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

app.listen(4000)
