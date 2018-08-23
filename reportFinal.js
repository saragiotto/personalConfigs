var fs = require('fs');
var obj;
var path = 'swiftLint.json'
var rules = [];
var count = [];


function readFiles(dirname, onError) {
  fs.readdir(dirname, function(err, filenames) {
    if (err) {
      onError(err);
      return;
    }
    // console.log('success');
    filenames.forEach(function(filename) {
        fs.readFile(dirname + filename, 'utf8', function (err, data) {
          if (err) throw err;
          obj = JSON.parse(data);
          
          // obj.forEach(function(item, index, array) {
          //   var index = rules.indexOf(item['rule_id']);

          //   if ( index == -1) {
          //       rules.push(item['rule_id'].toString());
          //       count.push(1);
          //   } else {
          //       count[index] += 1;
          //   }
          // });

          // rules.forEach(function(rule, index, array) {
          //   console.log(rule + ' ' + count[index]);
          // });

          console.log(filename.split('.').shift() + ';' + obj.length);
        });
    });
  });
}

readFiles('/Users/leonardo.saragiotto/Documents/SublimePrj/SwiftReports/', function(err) {
  throw err;
});


