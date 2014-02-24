class SessionItem < ActiveRecord::Base
	belongs_to :item
	belongs_to :session

	validates_presence_of :item_id
	validates_presence_of :session_id
end
