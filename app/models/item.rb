class Item < ApplicationRecord
  class Item < ActiveRecord::Base
    belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"
    belongs_to :seller, class_name: "User", foreign_key: "seller_id"

  end
end
