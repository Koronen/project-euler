require_relative '../spec_helper'

require 'project_euler/problem_021'

module ProjectEuler
  describe Problem021 do
    it 'gives the correct answer' do
      Problem021.answer.must_equal 31626
    end
  end
end
