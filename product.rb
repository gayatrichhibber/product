class Product < ActiveRecord::Base
include PublicActivity::Model
  tracked
  #tracked owner: ->(controller, model) { controller && controller.current_product }
  #attr_accessible :name, :price

  #belongs_to :user
  #has_many :comments, dependent: :destroy
end
