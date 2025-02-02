class CreateDirectories < ActiveRecord::Migration[7.0]
  def change
    create_table :directories do |t|
      t.string :name, null: false
      t.references :parent, null: true, index: true, foreign_key: { to_table: :directories }

      t.timestamps
    end
  end
end
