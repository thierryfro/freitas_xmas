class AddGiftToLeed < ActiveRecord::Migration[6.1]
  def change
    add_reference :leeds, :gift, index: true
  end
end
