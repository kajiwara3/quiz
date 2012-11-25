# coding: utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :privacy_agree

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :gender_id, :password, :password_confirmation, :remember_me, :privacy_agree
  belongs_to :gender

  validates :name, :email, :gender_id, presence: true
  validates :privacy_agree, presence: {on: :create}
  validate :privacy_agree_validate?

  def privacy_agree_validate?
    errors.add(:privacy_agree, "プライバシーポリシーへの合意が必要です") if privacy_agree == "false"
  end
end
