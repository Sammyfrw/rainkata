class Main
  def initialize
    @user = ""
  end

  def menu
    welcome_message
    query_for_kata
    run_kata
  end

  private

  def welcome_message
    puts "Welcome to Rain's Kata!"
    puts "Are you ready to select a Kata to code?"
  end

  def query_for_kata
    puts "Which kata do you want to run?"
    choice = gets.chomp
    validate_choice
  end

  def validate_choice
  end

  def run_kata
  end

end

