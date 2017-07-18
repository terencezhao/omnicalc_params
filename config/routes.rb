Rails.application.routes.draw do
  get("/flexible/square/:number", { :controller => "calculations", :action => "flex_square" })
  get("/flexible/square_root/:number", { :controller => "calculations", :action => "flex_square_root" })
  get("/flexible/payment/:apr/:years/:principal", { :controller => "calculations", :action => "flex_payment" })
  get("/flexible/random/:start/:end", { :controller => "calculations", :action => "flex_random" })

  get("/square/new", { :controller => "calculations", :action => "square_form" })
  get("/square/results", { :controller => "calculations", :action => "square_form_results" })
  
  get("/square_root/new", { :controller => "calculations", :action => "square_root_form" })
  get("/square_root/results", { :controller => "calculations", :action => "square_root_form_results" })
  
  get("/payment/new", { :controller => "calculations", :action => "payment_form" })
  get("/payment/results", { :controller => "calculations", :action => "payment_form_results" })

  get("/random/new", { :controller => "calculations", :action => "random_form" })
  get("/random/results", { :controller => "calculations", :action => "random_form_results" })
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
end
