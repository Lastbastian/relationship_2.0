class QuestionnairesController < ApplicationController
  def show
    @questionnaire = Questionnaire.find(params[:questionnaire_id])
  end
end
