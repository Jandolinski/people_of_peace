require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :body => "MyString",
      :answer => "MyText"
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input#question_body[name=?]", "question[body]"

      assert_select "textarea#question_answer[name=?]", "question[answer]"
    end
  end
end
