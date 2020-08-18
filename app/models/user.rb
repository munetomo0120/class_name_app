class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  class User < ActiveRecord::Base
    has_many :bought_items, class_name: 'Item', foreign_key: 'buyer_id'
    has_many :sold_items, class_name: 'Item', foreign_key: 'seller_id'

  end
end
