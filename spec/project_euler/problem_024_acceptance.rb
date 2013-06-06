require_relative '../spec_helper'

require 'project_euler/problem_024'

module ProjectEuler
  describe Problem024 do
    it 'gives the correct answer' do
      Problem024.answer.must_equal 2783915460
    end
  end
end
