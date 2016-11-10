class ParamsExamplesController < ApplicationController
  def query_params_method
    @message = params["my_message"]
    @message2 = params["another_message"]
    render 'query_params.html.erb'
  end

  def whatever_name_method
    @name = params["query_name"]
    @message = ""
    if @name.upcase.starts_with?("A")
      @message = "Hey your name starts with A!"
    end
    render 'name.html.erb'
  end

  def guessing_game_method
    winning_number = 32
    @guess = params["the_users_guess"].to_i
    if @guess > winning_number
      @message = "Pick lower!"
    elsif @guess < winning_number
      @message = "Pick higher!"
    else
      @message = "You win!"
    end
    render 'guess.html.erb'
  end
end
