class Item < ActiveRecord::Base
	has_many :session_items
end
