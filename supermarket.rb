# In this Kata, you have products available. The idea is that you should write
# a function that, upon user input, allows them to add a price to each product
# per kilogram. These products will be displayed at that per kilogram price
# afterward. Then, a random value is generated to specify the total weight of
# products being bought, or alternatively, the number of a product that is
# being bought.

# The code should be able to accomodate for the fact that if the weight is
# above 1000 kg, it should be turned into tonnes. Then, the products can be
# bought in batches. If a product is bought in 6s, then refer to the product
# as a half-dozen. If it is bought in 12s, a dozen.

class Supermarket
  def initialize
    PRODUCTS = %w(Apple Oranges Grapes Banannas)
    @prices_per_kilo = {}
  end

  def run
    welcome_to_supermarket
    list_items
    get_product_prices
    generate_quantities
  end

  private

  def welcome_to_supermarket
    puts "Welcome to the supermarket!"
    puts "You will need to add prices per kilogram for each item on the list."
  end

  def list_items
    puts "These are the items currently on the list: "
    puts PRODUCTS
  end

  def get_product_prices
    ask_for_prices
    confirm_prices
  end

  def ask_for_prices
    PRODUCTS.each do |product|
      puts "How would you price: " + product + "?"
      @prices_per_kilo[product: gets.chomp]
    end
  end

  def confirm_prices
    are_prices_correct?
    @user_choice = gets.chomp
    validate_choice
  end

  def are_prices_correct?
    puts "Here are the prices you've listed:"
    puts @prices_per_kilo
    print "Is that correct? Y/N >"
  end

  def validate_choice
    if prices_incorrect?
      ask_for_prices
    end
    invalid_choice?
  end

  def prices_incorrect?
    @user_choice == N
  end

  def invalid_choice?
    if @user_choice != Y
      puts "Invalid choice."
      are_prices_correct?
    end
  end

  def generate_quantities
  end
end
