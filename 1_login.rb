require_relative 'library'

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
    else 
        puts "Password incorrect. Please retry."
    end

    clear_text(1);  clear_text(0);  clear_text(0);  clear_text(0)

end