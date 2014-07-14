grunt-file-append
=================

grunt-file-append remastered


Here is typical Gruntfile code:
<source lang="coffeescript">
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
</source>
