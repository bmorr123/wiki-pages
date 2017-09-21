class Wiki < ActiveRecord::Base
  belongs_to :user

  scope :visible_to_user, -> (user) { where(user_id: user.id) }

  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true, length: { minimum: 20 }
  validates :user, presence: true
end
