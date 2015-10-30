class AddTaskFileToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :task_file, :text
  end
end
