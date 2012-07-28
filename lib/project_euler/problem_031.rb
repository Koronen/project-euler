module ProjectEuler
  class Problem031 < ProjectEuler::ProblemBase
    COINS = [1, 2, 5, 10, 20, 50, 100, 200]

    class << self
      def ways_to_make(amount)
        if amount <= 0
          return 1
        else
          ways_to_make_amount_using_coins(amount, COINS)
        end
      end

      def ways_to_make_amount_using_coins(amount, coins)
        return 1 if amount == 0
        return 0 if amount < 0
        return 0 if amount > 0 && coins.empty?

        largest_coin = coins.sort.select{|c| c <= amount }.last

        using_largest_coin = ways_to_make_amount_using_coins(amount - largest_coin, coins.select{|c| c <= amount - largest_coin })
        not_using_largest_coin = ways_to_make_amount_using_coins(amount, coins.select{|c| c < largest_coin })

        using_largest_coin + not_using_largest_coin
      end

      def answer!
        ways_to_make 200
      end
    end
  end
end
