# coding: utf-8
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessor :privacy_agree

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :gender_id, :password, :password_confirmation, :remember_me, :privacy_agree
  belongs_to :gender

  validates :name, :email, :gender_id, :password, :privacy_agree, presence: true
  validate :privacy_agree_validate?

  def privacy_agree_validate?
    logger.debug '================ 1'
    logger.debug privacy_agree
    errors.add(:privacy_agree, "プライバシーポリシーへの合意が必要です") if privacy_agree == "false"
  end
end
