class SayHello
    attr_accessor :names

    def initialize(names= "World")
        @names = names
    end


    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hi #{name}!"
            end
        else
            puts "Hi #{@names}"
        end
    end

    def say_goodbye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            puts "Goodbye #{@names.join(", ")}!"
        else
            puts "Goodbye #{@names}!"
        end
    end

    
end

if __FILE__ == $0
    mg = SayHello.new
    mg.say_hi
    mg.say_goodbye

    mg.names="Alex"
    mg.say_hi
    mg.say_goodbye

    mg.names=["Leo","Katie","Ale", "Laz", "Ernie"]
    mg.say_hi
    mg.say_goodbye

    mg.names=nil    
    mg.say_hi
    mg.say_goodbye
end