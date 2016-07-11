// sane = require('sane');
// var watcher = sane('test/', {glob: ['**/*']});
// watcher.on('change', function(filepath, root, stat) { console.log('file changed', filepath); });
// watcher.on('add', function(filepath, root, stat) { console.log('file add', filepath); });
var fs = require('fs');
var path = require('path');

var dir = 'test/';

fs.watch(dir, function(event, filename) {
    console.log(event, filename);
    var fullpath = path.join(dir, filename);
    fs.lstat(fullpath, function(error, stat) {
        console.log(error, stat);
        fs.lstat(fullpath, function(error, stat) {
            console.log(error, stat);
        });
    });
});
