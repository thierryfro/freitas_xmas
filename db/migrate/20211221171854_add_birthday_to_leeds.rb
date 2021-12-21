class AddBirthdayToLeeds < ActiveRecord::Migration[6.1]
  def change
    add_column :leeds, :birthday, :string
  end
end
