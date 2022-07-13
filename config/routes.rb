Rails.application.routes.draw do
  get "/first", to: "site#first", as: :first_page
  get "/second", to: "site#second", as: :second_page
  root "site#first"
end
