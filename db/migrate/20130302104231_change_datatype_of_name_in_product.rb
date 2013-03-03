class ChangeDatatypeOfNameInProduct < ActiveRecord::Migration
  def up
  	change_table :products do |t|
      t.change :name, :string
    end
  end

  def down
  end
end
