class Questionnaire < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :questions, allow_destroy: true

  validates :user_id, presence: true
  validates :name, presence: true
end
