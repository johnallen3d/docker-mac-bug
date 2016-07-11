sane = require('sane');
var watcher = sane('test/', {glob: ['**/*']});
watcher.on('change', function(filepath, root, stat) { console.log('file changed', filepath); });
watcher.on('add', function(filepath, root, stat) { console.log('file add', filepath); });
