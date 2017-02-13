Rails.application.routes.draw do
  devise_for :users, :class_name => "User", :controllers => {
    :passwords => :passwords,
    :invitations => :invitations,
    :sessions => :sessions,
    :registrations => :registrations
  }#, skip: [:registrations]
  root to: 'supports#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
