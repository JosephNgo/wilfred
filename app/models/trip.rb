class Trip < ActiveRecord::Base
	has_and_belongs_to_many :sessions
end
