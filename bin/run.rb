require_relative '../config/environment'

# puts FileMgmt.scan_file("/Users/bryan/Development/code/module-one-final-project-guidelines-dumbo-web-071618/Thorfile")
# bryan = User.new(name: "Bryan")
# bryan.save
# refactor = Category.new(name: "Refactor")
# refactor.save
bryan = User.first
refactor = Category.first
todo = bryan.build_todo("path/to/file/is/bananas","this is a random todo to do",refactor)
todo.save
toodo = bryan.build_todo("this/path/is/even/more/bananas","not as random string of todo", refactor)
toodo.save
Pry.start
