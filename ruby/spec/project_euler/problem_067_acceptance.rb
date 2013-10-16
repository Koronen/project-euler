require_relative '../spec_helper'

require 'project_euler/problem_067'

module ProjectEuler
  describe Problem067 do
    it 'gives the correct answer' do
      Problem067.answer.must_equal 7273
    end
  end
end
