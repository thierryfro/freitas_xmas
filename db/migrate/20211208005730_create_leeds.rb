class CreateLeeds < ActiveRecord::Migration[6.1]
  def change
    create_table :leeds do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
