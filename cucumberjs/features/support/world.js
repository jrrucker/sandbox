'use strict'

var fs = require('fs');
var webdriver = require('selenium-webdriver');

var buildChromeDriver = function() {
    return new webdriver.Builder().
        withCapabilities(webdriver.Capabilities.chrome()).
        build();
};

var driver = buildChromeDriver();

var getDriver = function() {
    return driver;
};

var World = function (callback) {

    var defaultTimeout = 5000;
    var screenshotPath = "screenshots";

    this.webdriver = webdriver;
    this.driver = driver;

    if(!fs.existsSync(screenshotPath)) {
        fs.mkdirSync(screenshotPath);
    }

    this.waitFor = function(cssLocator, timeout) {
        var waitTimeout = timeout || defaultTimeout;
        return driver.wait(function () {
            return driver.isElementPresent({
                css: cssLocator
            });
        }, waitTimeout);
    };

    callback();
};

module.exports.World = World;
module.exports.getDriver = getDriver;
