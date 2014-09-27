require 'spec_helper'

require 'project_euler/problem_035'

module ProjectEuler
  describe Problem035 do
    describe ".rotations_of" do
      it "returns single rotation for single digit n" do
        Problem035.rotations_of(2).must_equal [2]
        Problem035.rotations_of(3).must_equal [3]
        Problem035.rotations_of(5).must_equal [5]
        Problem035.rotations_of(7).must_equal [7]
      end

      it "returns up to two distinct rotations for double digit n" do
        Problem035.rotations_of(11).must_equal [11]
        Problem035.rotations_of(13).must_equal [13, 31]
        Problem035.rotations_of(17).must_equal [17, 71]
        Problem035.rotations_of(31).must_equal [31, 13]
        Problem035.rotations_of(37).must_equal [37, 73]
        Problem035.rotations_of(71).must_equal [71, 17]
        Problem035.rotations_of(73).must_equal [73, 37]
        Problem035.rotations_of(79).must_equal [79, 97]
        Problem035.rotations_of(97).must_equal [97, 79]
      end
    end
  end
end
