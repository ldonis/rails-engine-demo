Dog::Engine.routes.draw do
    root to: "dashboards#show"
    resources :dashboards
end
