class CreateCreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :create_images do |t|
      t.string :file
      t.string :view_count
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
