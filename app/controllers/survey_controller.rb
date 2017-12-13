class SurveyController < ApplicationController
  def index
  end

  def add_survey
    @result = params[:survey]
    # session[:result] = params[:survey]
    redirect_to '/surveys/result'
  end
  
  def result
    # @result = session[:result]
    if session[:count]
      session[:count] += 1
    else
      session[:count] = 0
    end
    render 'result'
  end
end
