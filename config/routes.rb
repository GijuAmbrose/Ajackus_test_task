Rails.application.routes.draw do
  scope "(:locale)" do
    root 'user_messages#index'
    resources :user_messages, only: [:create]
    get '/contact', to: 'user_messages#index'
    get '*path' => redirect('/')
  end

end
