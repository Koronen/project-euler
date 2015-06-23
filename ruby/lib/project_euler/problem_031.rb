require 'project_euler/problem_base'

module ProjectEuler
  # Solution to problem #031.
  class Problem031 < ProblemBase
    COINS = [1, 2, 5, 10, 20, 50, 100, 200]

    def self.answer!
      ways_to_make_amount_using_coins(200, COINS)
    end

    def self.ways_to_make_amount_using_coins(amount, coins)
      return 1 if amount == 0
      return 0 if amount < 0 || amount > 0 && coins.empty?

      using_largest_coin = ways_to_make_amount_using_coins(
        amount - coins.last, coins
      )
      not_using_largest_coin = ways_to_make_amount_using_coins(
        amount, coins[0..-2]
      )

      using_largest_coin + not_using_largest_coin
    end
  end
end
