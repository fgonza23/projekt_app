Rails.application.routes.draw do

  as :user do
    put '/user/confirmations' => 'confirmations#update', :via => :patch, :as => :update_user_confirmation
  end

  devise_for :users, controllers: {
    registraions: 'registraions',
    confirmation: 'confirmations'
  }
    root to: "home#index"

end
