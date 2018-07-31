class User < ActiveRecord::Base
    has_many :todos

    def build_todo(file_path, comment, category)
        new_todo =  self.todos.build(file_path: file_path, comment: comment)
        new_todo.category = category
        new_todo.save
    end

    def list_all_todos
        Todo.all.select do |todo|
          todo.user == self
        end
    end

    def find_by_file_path(file_path)
      Todo.all.select do |todo|
        todo.file_path == file_path
      end
    end
end
