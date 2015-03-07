class Questionnaire < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :questions, :reject_if => lambda { |a| a[:content].blank? }, allow_destroy: true

  validates :user_id, presence: true
  validates :name, presence: true
end
