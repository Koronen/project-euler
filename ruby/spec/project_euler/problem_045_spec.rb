require 'spec_helper'

require 'project_euler/problem_045'

module ProjectEuler
  describe Problem045 do
    describe ".triangle" do
      it "generates triangle numbers correctly" do
        Problem045.triangle(1).must_equal 1
        Problem045.triangle(2).must_equal 3
        Problem045.triangle(3).must_equal 6
        Problem045.triangle(4).must_equal 10
        Problem045.triangle(5).must_equal 15
      end
    end

    describe ".pentagonal" do
      it "generates pentagonal numbers correctly" do
        Problem045.pentagonal(1).must_equal 1
        Problem045.pentagonal(2).must_equal 5
        Problem045.pentagonal(3).must_equal 12
        Problem045.pentagonal(4).must_equal 22
        Problem045.pentagonal(5).must_equal 35
      end
    end

    describe ".hexagonal" do
      it "generates hexagonal numbers correctly" do
        Problem045.hexagonal(1).must_equal 1
        Problem045.hexagonal(2).must_equal 6
        Problem045.hexagonal(3).must_equal 15
        Problem045.hexagonal(4).must_equal 28
        Problem045.hexagonal(5).must_equal 45
      end
    end
  end
end
