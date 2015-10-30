class AddDivisionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :division, :string
  end
end
