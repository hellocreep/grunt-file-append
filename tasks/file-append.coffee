'use strict'


module.exports = (grunt) ->

	grunt.registerMultiTask 'file_append', 'Append or prepend data to file.', () ->
		options = @options()

		for key, file of options.files
			filepath = file.source || key

		if not grunt.file.exists filepath
			grunt.log.warn """Source file "#{filepath}" not found."""
			return false

		prepend = file.prepend || ""
		append  = file.append  || ""
		fileContent = grunt.file.read filepath
		value = "#{ prepend }#{ fileContent }#{ append }"
		grunt.file.write filepath, value
