Rails.application.routes.draw do
  get("/flexible/square/:number", { :controller => "calculations", :action => "flex_square" })
  get("/flexible/square_root/:number", { :controller => "calculations", :action => "flex_square_root" })
  get("/flexible/payment/:apr/:years/:principal", { :controller => "calculations", :action => "flex_payment" })
  get("/flexible/random/:start/:end", { :controller => "calculations", :action => "flex_random" })

  get("/square/new", { :controller => "calculations", :action => "square_form" })
  get("/square/results", { :controller => "calculations", :action => "square_form_results"})


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
