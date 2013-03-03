class Product < ActiveRecord::Base
  attr_accessible :data, :description, :name
   serialize :data, ActiveRecord::Coders::Hstore


 %w[author rating].each do |key|
   	attr_accessible key
   	define_method (key) do
   		data && data[key]
   	end

   	define_method ("#{key}=") do |value|
   		self.data = (data || {}).merge(key => value)
   	end
   end
end
