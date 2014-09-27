module ProjectEuler
  class Problem045 < ProjectEuler::ProblemBase
    class << self
      def answer!
        tn = 285 + 1; t = triangle(tn)
        pn = 165 + 1; p = pentagonal(pn)
        hn = 143 + 1; h = hexagonal(hn)

        loop do
          return t if t == p && p == h

          if t <= p && t <= h
            while t <= p && t <= h && !(t == p && p == h)
              tn += 1
              t = triangle(tn)
            end
          elsif p <= t && p <= h
            while p <= t && p <= h && !(t == p && p == h)
              pn += 1
              p = pentagonal(pn)
            end
          else
            while h <= t && h <= p && !(t == p && p == h)
              hn += 1
              h = hexagonal(hn)
            end
          end
        end
      end

      def triangle(n)
        n*(n+1)/2
      end

      def pentagonal(n)
        n*(3*n-1)/2
      end

      def hexagonal(n)
        n*(2*n-1)
      end
    end
  end
end
