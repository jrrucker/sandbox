module.exports = function (grunt) {

    'use strict';

    require('time-grunt')(grunt);
    require('load-grunt-tasks')(grunt);

    grunt.initConfig({

        connect: {
            server: {
                options: {
                    port: 8000,
                    base: 'src'
                }
            }
        },

        cucumberjs: {
            src: ['features/**/*.feature']
        },

        clean: {
            test: ['screenshots']
        }

    });

    grunt.registerTask('default', 'connect');
    grunt.registerTask('test', ['clean', 'connect', 'cucumberjs']);

}
