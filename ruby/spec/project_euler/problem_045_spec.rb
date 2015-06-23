require 'spec_helper'

require 'project_euler/problem_045'

describe ProjectEuler::Problem045 do
  subject { ProjectEuler::Problem045 }

  describe '.triangle' do
    it 'generates triangle numbers correctly' do
      subject.triangle(1).must_equal 1
      subject.triangle(2).must_equal 3
      subject.triangle(3).must_equal 6
      subject.triangle(4).must_equal 10
      subject.triangle(5).must_equal 15
    end
  end

  describe '.pentagonal' do
    it 'generates pentagonal numbers correctly' do
      subject.pentagonal(1).must_equal 1
      subject.pentagonal(2).must_equal 5
      subject.pentagonal(3).must_equal 12
      subject.pentagonal(4).must_equal 22
      subject.pentagonal(5).must_equal 35
    end
  end

  describe '.hexagonal' do
    it 'generates hexagonal numbers correctly' do
      subject.hexagonal(1).must_equal 1
      subject.hexagonal(2).must_equal 6
      subject.hexagonal(3).must_equal 15
      subject.hexagonal(4).must_equal 28
      subject.hexagonal(5).must_equal 45
    end
  end
end
