###
# grunt-file-append
# http://github.com/devlato/grunt-file-append
#
# Copyright (c) 2014 "Cowboy" Ben Alman, contributors
# Licensed under the MIT license.
###


'use strict';


module.exports = (grunt) ->

  grunt.initConfig
    file_append:
      options:
        files: [{
          source:  ''  # path
          append:  ''  # data to append
          prepend: ''  # data to prepend
        }]

  grunt.loadTasks 'tasks'
  grunt.registerTask 'default', ['file_append']
