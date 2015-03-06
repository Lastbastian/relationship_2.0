class SurveysController < ApplicationController

before_action :logged_in_user, only: [:new, :edit, :update]

  def new
    @survey = Survey.new
    @questionnaire = Questionnaire.find(1)
  end

  def create
    @survey = current_user.surveys.build(survey_params)
    if @survey.save
      # @user.send_activation_email
      flash[:info] = "You have successfully completed our survey!"
      redirect_to current_user
    else
      render 'new'
    end
  end

  private

    def survey_params
      params.require(:survey).permit(:name)
    end

end
