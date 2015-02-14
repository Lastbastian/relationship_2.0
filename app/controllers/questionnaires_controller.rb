class QuestionnairesController < ApplicationController

  def index
    @questionnaire = Questionnaire.all
  end

  def show
     @questionnaire = Questionnaire.find(params[:id])
     @questions = @questionnaire.questions
  end

end
