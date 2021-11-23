Rails.application.routes.draw do
  mount Dog::Engine => "/dog"
end
