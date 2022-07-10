require './logger.rb'

class Logger 
  def initialize 
    @f = File.open('Log.txt', 'a')
    # @@f = nil
  end

  @@f = Logger.new 

  def self.instanse_method 
    return @@f
  end

  # def self.say_method
  #   puts "Hi Artem!"
  # end 

  def log_method text
    @f.puts text
    # @f.close
  end

  private_class_method :new
end