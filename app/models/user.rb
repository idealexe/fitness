class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :lockable

  has_one :profile, :autosave => true, dependent: :destroy
  has_one :mymenu
  has_many :goals
  has_many :muscle_diaries
  has_many :proteins
end
