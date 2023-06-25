require_relative 'library'
require_relative '1_login', '2_main_menu'
require 'io/console'

$loggedin = nil
$meter_number = nil

def login

    puts "Welcome to your meter manager!"; delay(1)
    puts "Please sign in with your meter number and password"; clear_text(1.3)

    print "Meter Number: "
    $meter_number = gets.chomp()
    
    print "Password:  "
    password = STDIN.noecho(&:gets).chomp
    #clear_text(0)
    
    processing()


    if password == "password"
        puts "Welcome, #{"Bola Tinubu"}!"
        $logggedin = true
    else 
        puts "Password incorrect. Please retry."
        $loggedin = false
    end

    clear_text(1);  clear_text(0);  clear_text(0);  clear_text(0)

end

def main_menu

    puts "You have #{258.52} units remaining."
    puts "Based on recent usage, you have #{11} day(s) of electricity left."; delay(1)
    new_line()

    puts "1: Purchase units"
    puts "2: Set up automated purchases"
    puts "3: Turn ON/OFF low unit alarm"
    puts "4: More options"

    new_line(3)

    puts "0: Close meter manager"

    action = gets.chomp()

    if action == 1
        purchase_units()
    elsif action == 2
        schedule_purchases()
    elsif action == 3
        alarm_control()
    elsif action = 4
        more_options()
    else 
        return
    end

end


def event_manager
    $loggedin = nil
    $meter_number = nil

    login()
    main_menu()
end


event_manager()
