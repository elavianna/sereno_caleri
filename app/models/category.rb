class Category < ActiveRecord::Base
has_many :item, dependent: :destroy
end
