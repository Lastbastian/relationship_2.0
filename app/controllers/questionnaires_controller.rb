class QuestionnairesController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :update]

  def new
    @questionnaire = Questionnaire.new
    3.times { @questionnaire.questions.build }
  end

  def create
    @questionnaire = current_user.questionnaires.build(questionnaire_params)
    if @questionnaire.save
      flash[:info] = "You have successfully created a new questionnaire"
      redirect_to @questionnaire
    else
      render 'new'
    end
  end

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end

  def edit
    @questionnaire = Questionnaire.find(params[:id])
  end

  def update
    @questionnaire = Questionnaire.find(params[:id])
    if @questionnaire.update_attributes(questionnaire_params)
      flash[:success] = "Questionnaire updated"
      redirect_to @questionnaire
    else
      render 'edit'
    end
  end

  private

    def questionnaire_params
      params.require(:questionnaire).permit(:name, questions_attributes:[:id, :content, :_destroy])
    end

end
