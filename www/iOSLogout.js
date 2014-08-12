var exec = require('cordova/exec');

var iOSLogout = function(callback) {
  exec(callback, callback, 'iOSLogout', 'iOSLogout', []);
};

module.exports = iOSLogout;
