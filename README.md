grunt-file-append
=================

grunt-file-append remastered


Here is typical Gruntfile code:

```javascript
module.exports = function(grunt) {
  grunt.initConfig({
    // Configuration to be run (and then tested).
    file_append: {
      default_options: {
        files: {
          'tmp/testing1': {
            prepend: "text",
            input: './test/fixtures/testing1'
          },
          'tmp/testing2': {
            append: "text"
          },
          'tmp/testing3': {
            prependFile: 'file/path'
            appendFile: 'file/path'
          }
        }
      }
    }
  });

  // Actually load this plugin's task(s).
  grunt.loadTasks('tasks');
  grunt.registerTask('default', ['file_append'])
}
```
