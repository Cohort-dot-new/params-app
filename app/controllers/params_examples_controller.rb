class ParamsExamplesController < ApplicationController
  @@winning_number = rand(1..100)

  def query_params_method
    @message = params["my_message"]
    @message2 = params["another_message"]
    render 'query_params.html.erb'
  end

  def url_segment_params_method
    @value = params["this_is_a_variable"]
    render 'url_segment_params.html.erb'
  end

  def form_params_method
    render 'form.html.erb'
  end

  def form_result_method
    @value = params["form_message"]
    render 'form_result.html.erb'
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

  def guessing_form_method
    render 'guessing_form.html.erb'
  end

  def guessing_form_result_method
    @guess = params["input_number"].to_i
    if @guess > @@winning_number
      @message = "Pick lower!"
    elsif @guess < @@winning_number
      @message = "Pick higher!"
    else
      @message = "You win!"
      @@winning_number = rand(1..100)
    end
    render 'guessing_form_result.html.erb'
  end
end
