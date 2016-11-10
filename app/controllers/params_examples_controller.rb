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
end
