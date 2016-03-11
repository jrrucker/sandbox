'use strict';

var expect = require('chai').expect;

module.exports = function () {

    this.World = require('../support/world.js').World;
    this.After = require('../support/hooks.js').After;

    this.Given(/^I am on the demo page$/, function (callback) {
        this.driver.get('http://localhost:8000');
        this.driver.findElement({ css: 'body.white' })
            .then(function () {
                callback();
            });
    });

    this.When(/^I click the (blue|red|green) button$/, function (color, callback) {
        var identifier = 'button.' + color + '-button';
        this.driver.findElement({ css: identifier })
            .click()
            .then(function () {
                callback();
            });
    });

    this.Then(/^I see the background change to (blue|red|green)$/, function (color, callback) {
        var identifier = 'body.' + color ;
        this.waitFor(identifier);
        this.driver.findElement({ css: identifier})
            .then(function (elements) {
                callback();
            });
    });

};
