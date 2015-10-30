class AddStageToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :stage, :integer
  end
end
