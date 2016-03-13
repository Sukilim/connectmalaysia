Rails.application.routes.draw do

# ==============================================================================================
# Static Pages
# ==============================================================================================

root to: "pages#index"


# ==============================================================================================
# Resource
# ==============================================================================================

resources :users, only: [:new, :create, :show, :edit, :update, :destroy] 

# ==============================================================================================
# User Sessions/Login/Logout
# ==============================================================================================

resources :user_sessions, only: [:create]

get :login, to: 'user_sessions#new'
delete :logout, to: 'user_sessions#destroy'

end