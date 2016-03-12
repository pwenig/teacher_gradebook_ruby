class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end

end
