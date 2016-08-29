class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :bride_dress
  has_one :groom_suit
  has_many :bride_accessories
  has_one :bride_beautican
  has_one :bride_hairdresser
  has_many :church_bests
  has_one :church_ceremony
  has_many :church_decorations
  has_many :church_rings
  has_many :groom_accessories
  has_many :guests
  has_many :wedding_decorations
  has_one :wedding_room
  has_many :wedding_services
end
