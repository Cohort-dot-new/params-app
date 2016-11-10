Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/query_params_url' => 'params_examples#query_params_method'
  get '/name_url' => 'params_examples#whatever_name_method'
end
