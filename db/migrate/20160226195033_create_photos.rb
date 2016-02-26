class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :descriptoin
      t.string :file

      t.timestamps null: false
    end
  end
end
