class ApplicationController < ActionController::Base
  
  def hello
    render html: "test deploy to heroku"
  end
  
end
