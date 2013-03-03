class IndexProductsData < ActiveRecord::Migration
  def up
  	execute"CREATE INDEX product_data ON products USING GIST(data)"
  end

  def down
  	execute"DROP INDEX product_data"
  end
end
