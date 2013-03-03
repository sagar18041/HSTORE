class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :name
      t.text :description
      t.hstore :data

      t.timestamps
    end
  end
end
