class Event < ActiveRecord::Base
validates :detail, length: {maximum: 100, minimum: 5}
end
