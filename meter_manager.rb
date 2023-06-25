require_relative 'library'
require_relative '1_login'
require_relative '2_main_menu.rb'
require 'io/console'


def main_menu

    puts "You have #{258.52} units remaining."
    puts "Based on recent usage, you have #{11} day(s) of electricity left."; delay(3)
    new_line()

    puts "1: Purchase units"; delay(1)
    puts "2: Set up automated purchases"; delay(1)
    puts "3: Turn ON/OFF low unit alarm"; delay(1)
    puts "4: More options"; delay(1)

    new_line(3)

    puts "0: Close meter manager"

    action = gets.chomp.to_i()

    clear_text(0)
    
    if action == 1
        buy_units()
    elsif action == 2
        schedule_purchases()
    elsif action == 3
        alarm_control()
    elsif action == 4
        more_options()
    else 
        system "clear"
    end

end


def event_manager

    login()
    main_menu()
end


event_manager()
