class CreateStudents < ActiveRecord::Migration
  def up
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
    end
  end

  def down
    drop_table :students
  end
end

#to implicitly create down, use change instead of up and down