Rails.application.routes.draw do

  resources :auctions
  resources :users
  resources :bids
  get '/' => "site#home"
  
end
