Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  get 'welcome/index' => "welcome#index}"
  root 'welcome#index'
  get '/articles/:id(.:format)' => "articles#show"
  get '/articles/(.:format)' => "articles#index"
delete '/articles/.:id(.:format)' => "articles#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
