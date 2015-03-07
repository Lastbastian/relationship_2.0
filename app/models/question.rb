class Question < ActiveRecord::Base
  belongs_to :questionnaire
  has_many :options, dependent: :destroy
  accepts_nested_attributes_for :options, :reject_if => lambda { |o| o[:content].blank? }, allow_destroy:true
end
