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
   
   def square_root_form
      render("calculations/square_root_form_template.html.erb")
   end
   def square_root_form_results
      @user_number = params["user_number"].to_f
      @square_root = Math.sqrt(@user_number)
      render("calculations/square_root_form_results_template.html.erb")
   end
   
   def payment_form
      render("calculations/payment_form_template.html.erb")
   end
   def payment_form_results
      @user_apr = params["user_apr"].to_f
      @user_years = params["user_years"].to_f
      @user_pv = params["user_pv"].to_i
      @payment = (@user_apr / 100 / 12.0 * @user_pv) / (1.0 - ((1.0 + (@user_apr / 100 / 12.0))**(-@user_years*12.0)))
      render("calculations/payment_form_results_template.html.erb")
   end
   
   def random_form
      render("calculations/random_form_template.html.erb")
   end
   def random_form_results
      @user_min = params["user_min"].to_f
      @user_max = params["user_max"].to_f
      @random = rand(@user_min..@user_max)
      render("calculations/random_form_results_template.html.erb")
   end
   
   def word_count_form
      render("calculations/word_count_form_template.html.erb")
   end
   def word_count_form_results
      @user_text = params["user_text"]
      @user_word = params["user_word"]
      @word_count = @user_text.split.size
      @character_count_with_spaces = @user_text.size
      @character_count_without_spaces = @user_text.split.inject(0){|count,x| count + x.size }

      @occurrences = @user_text.scan(@user_word.to_s).size
      render("calculations/word_count_form_results_template.html.erb")
   end
   
end