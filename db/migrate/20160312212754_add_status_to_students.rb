class AddStatusToStudents < ActiveRecord::Migration
  def change
      add_column :students, :status, :string
  end

  def self.down
    remove_column :students, :status
  end

end
