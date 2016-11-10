Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/query_params_url' => 'params_examples#query_params_method'
  get '/url_segment_params_url/:this_is_a_variable' => 'params_examples#url_segment_params_method'

  get '/name_url' => 'params_examples#whatever_name_method'
  get '/guessing_game_url' => 'params_examples#guessing_game_method'
end
