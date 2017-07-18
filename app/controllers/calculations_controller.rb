class CalculationsController < ApplicationController
   def flex_square
      @user_number = params["number"].to_i
      @squared_number = @user_number ** 2
      render("calculations/flexible_square_template.html.erb")
   end
   
   def flex_square_root
      @user_number = params["number"].to_i
      @square_root_number = Math.sqrt(@user_number)
      render("calculations/flexible_square_root_template.html.erb")
   end
   
   def flex_payment
      @apr = (params["apr"].to_i / 100.0)
      @years = params["years"].to_i
      @principal = params["principal"].to_i
      @payment = (@apr / 100 / 12.0 * @principal) / (1.0 - ((1.0 + (@apr / 100 / 12.0))**(-@years*12.0)))
      render("calculations/flexible_payment_template.html.erb")
   end
   
   def flex_random
      @start = params["start"].to_i
      @end = params["end"].to_i
      @random_number = rand(@start..@end)
      render("calculations/flexible_random_template.html.erb")
   end
   
   def square_form
      render("calculations/square_form_template.html.erb")
   end
   
   def square_form_results
      @number = params["user_number"].to_f
      @square = @number ** 2
      render("calculations/square_form_results_template.html.erb")
   end
end