require 'spec_helper'

require 'project_euler/problem_081'

  describe ProjectEuler::Problem081 do
    it 'gives the correct answer' do
      ProjectEuler::Problem081.answer.must_equal 427337
    end
  end
