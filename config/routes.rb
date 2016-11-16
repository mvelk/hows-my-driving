Rails.application.routes.draw do
  root to: 'pages#main'
  get '/pull-tweets', to: 'pages#pull_tweets'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
