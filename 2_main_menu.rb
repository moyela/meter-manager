require_relative 'library'
require 'nokogiri'

def buy_units()
    puts "How much do you want to top up your meter with?"
    puts "NOTE: 1 unit = N200.00"
    
    new_line(3)
    puts "1: N5,000"
    puts "2: N10,000"
    puts "3: N20,000"
    puts "4: Enter a number"

    new_line(3)
    puts "0: Go back to main menu"


    action = gets.chomp.to_i()

    if action == 1
        puts "You have purchased 25 units"
        add_units_to_html_file(25)
    elsif action == 2
        puts "You have purchased 50 units"
        add_units_to_html_file(50)
    elsif action == 3
        puts "You have purchased 100 units"
        add_units_to_html_file(100)
    elsif action == 4
       puts "404 Network error. Custom unit purchases are not available at this time"
    else 
        return
    end

end

def schedule_purchases()
    # scheduled purchases are off by default
    default = false
    puts "Automated Purchases"
    puts "To prevent blackouts, we can top up your meter when your units are low."
    new_line(3)

    if default == false
        puts "1: Turn ON automated purchased and set your unit limit"
    else
        puts "1: Turn OFF automated purchases"
    end

    new_line(3)
    puts "0: Go back to main menu"

    action = gets.chomp.to_i()

    if action == 1
        if default == false
            default = true
            puts "Your account will be charged N5000 when your meter balance falls below 2.0 units"

        elsif default == true
            default = false
            puts "Automated purchases are OFF"
        end
    else 
        
    end

end

def alarm_control()
    feature_not_ready()
    return
end

def more_options()
    feature_not_ready()
   return
end