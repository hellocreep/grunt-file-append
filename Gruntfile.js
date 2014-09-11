/*
 * grunt-file-append
 * http://dj7.dyndns.org
 *
 * Copyright (c) 2013 Efim Vl. Dejin
 * Licensed under the MIT license.
 */

'use strict';



module.exports = function(grunt) {

  grunt.initConfig({
    // Configuration to be run (and then tested).
    file_append: {
      default_options: {
        files: {
          'tmp/testing1': {
            prepend: "text",
            input: 'out/file/path'
          },
          'tmp/testing2': {
            append: "text"
          },
          'tmp/testing3': {
            prependFile: 'prepend/file/path'
            appendFile: 'append/file/path'
          }
        }
      }
    }
  });


  // Actually load this plugin's task(s).
  grunt.loadTasks('tasks');

  grunt.registerTask('default', ['file_append'])
}