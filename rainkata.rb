require "./Supermarket"

class Main
  def initialize
    @user_choice = ""
    KATA = %w(Supermarket)
    QUIT = "QUIT"
  end

  def menu
    welcome_message
    query_for_kata
    run_kata
  end

  private

  def welcome_message
    puts "Welcome to Rain's Kata!"
    puts "Are you ready to Kata?"
  end

  def query_for_kata
    while inalid_choice?
      prompt_choices
      @user_choice = gets.chomp
      validate_choice
    end
  end

  def prompt_choices
    puts "Which kata do you want to run? Your selections include:"
    puts KATA
    puts "Alternatively, to quit, type QUIT."
  end

  def validate_choice
    quit_if_commanded
    if invalid_choice?
      puts "That Kata does not exist."
    end
  end

  def invalid_choice?
    !KATA.include?(@user_choice)
  end

  def quit_if_commanded
    @user_choice == QUIT
    exit
  end


  def run_kata
    puts "Running kata: " + @user_choice
    kata = @user_choice.new
    kata.run
  end
end

