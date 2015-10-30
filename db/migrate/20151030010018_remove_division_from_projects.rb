class RemoveDivisionFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :division, :string
  end
end
