require 'test_helper'

class QuestionnaireTest < ActiveSupport::TestCase

  def setup
    @user = users(:bob)

    @user = users(:bob)
    @questionnaire = @user.questionnaires.build(partner_name: "Stephanie", relationship_status: "Yes")
  end

  test "should be valid" do
    assert @questionnaire.valid?
  end

  test "user id should be present" do
    @questionnaire.user_id = nil
    assert_not @questionnaire.valid?
  end

  test "partner name should be present" do
    @questionnaire.partner_name = "   "
    assert_not @questionnaire.valid?
  end

end
