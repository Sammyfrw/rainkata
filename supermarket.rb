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
    @prices_per_kilo = []
  end

  def run
    welcome_to_supermarket
    list_items
    ask_for_prices
    generate_quantities
  end
end
