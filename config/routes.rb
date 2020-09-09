Rails.application.routes.draw do
  scope "(:locale)" do
    root 'user_messages#index'
    resources :user_messages, only: [:create]
  end
end
