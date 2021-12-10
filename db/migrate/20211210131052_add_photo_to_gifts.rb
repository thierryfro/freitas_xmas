class AddPhotoToGifts < ActiveRecord::Migration[6.1]
  def change
    add_column :gifts, :photo, :string
  end
end
