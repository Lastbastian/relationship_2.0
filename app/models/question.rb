class Question < ActiveRecord::Base
  belongs_to :questionnaire
  has_many :answers, dependent: :destroy
  has_many :options
  accepts_nested_attributes_for :answers
end
