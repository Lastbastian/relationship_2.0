class Answer < ActiveRecord::Base
  belongs_to :Survey
  has_many :options
end
