class SessionItem < ActiveRecord::Base
	belongs_to :item
	belongs_to :session

	def default_session_qty
    	read_attribute(:session_qty).presence ||= 0
  	end

	validates_presence_of :item_id
	validates :item_id, uniqueness: true
	validates_presence_of :session_id
end
