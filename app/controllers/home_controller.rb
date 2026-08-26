class HomeController < ApplicationController

  def hello
    render json: { message: "Hello, #{User.first().name}!" }
  end

end
