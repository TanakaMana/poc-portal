class AddPressUrlToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :press_url, :string
  end
end
