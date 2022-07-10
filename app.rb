class Logger 
  def initialize 
    @f = File.open('Log.txt', 'a')
    # @@f = nil
  end

  @@f = nil

  def self.instanse_method 
    if @@f == nil 
      @@f = Logger.new 
    end

    return @@f
  end

  def self.say_method
    puts "Hi Artem!"
  end 

  def log_method text
    @f.puts text
    # @f.close
  end
end

Logger.say_method
Logger.instanse_method.log_method('Hi Artem 2!')
Logger.instanse_method.log_method('Hi Artem 3!')

logger = Logger.new 
logger.log_method('Privet!')