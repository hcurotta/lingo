Lingo::Application.routes.draw do
  
get "/" => "Words#index"

get "/words" => "Words#index", :as => :words
get "/words/new" => "Words#new", :as => :new_word


get "/words/:id" => "Words#show", :as => :show_word


get "/words/flagged" => "Words#flagged", :as => :flagged_words

post "/words/" => "Words#create", :as => :words

get "/words/vote_up/:id" => "Words#vote_up", :as => :vote_up
get "/words/delete/:id" => "Words#delete", :as => :delete

get "/words/flag/:id" => "Words#flag", :as => :flag
get "/words/unflag/:id" => "Words#unflag", :as => :unflag


end
