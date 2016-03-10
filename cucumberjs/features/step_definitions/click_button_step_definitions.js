'use strict';

var expect = require('chai').expect;

module.exports = function () {

    this.World = require('../support/world.js').World;
    this.After = require('../support/hooks.js').After;

    this.Given(/^I am on the demo page$/, function (callback) {
        this.driver.get('http://localhost:8000');
        this.driver.findElement({ css: 'body.loaded' })
            .then(function () {
                callback();
            });
    });

    this.When(/^I click the demo button$/, function (callback) {
        this.driver.findElement({ css: 'button#test-button' })
            .click()
            .then(function () {
                callback();
            });
    });

    this.Then(/^I see the background change$/, function (callback) {
        this.waitFor('body.end');
        this.driver.findElement({ css: 'body.end'})
            .then(function (elements) {
                callback();
            });
    });

};
