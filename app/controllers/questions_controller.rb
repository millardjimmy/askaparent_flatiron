class QuestionsController < ApplicationController
  before_action :user_signed_in?

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.create(params[:question_text])
    if @question.save
      redirect_to root_url
    else
      render :new
    end
  end


  private

    def correct_user
      question = Question.find(params[:id])
      redirect_to root_url unless current_user && question.asker_id == current_user.id
    end
end
