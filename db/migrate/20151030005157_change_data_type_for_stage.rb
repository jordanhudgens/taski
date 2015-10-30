class ChangeDataTypeForStage < ActiveRecord::Migration
  def change
    change_column :projects, :stage, :string
  end
end
