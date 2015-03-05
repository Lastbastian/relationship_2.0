class QuestionnairesController < ApplicationController
  before_action :logged_in_user, only: [:new, :edit, :update]

  def new
    @questionnaire = Questionnaire.new
  end

  def create
    @questionnaire = current_user.questionnaires.build(questionnaire_params)
    if @questionnaire.save
      # @user.send_activation_email
      flash[:info] = "You have successfully completed our questionnaire!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  private

    def questionnaire_params
      params.require(:questionnaire).permit(:name)
    end

end
