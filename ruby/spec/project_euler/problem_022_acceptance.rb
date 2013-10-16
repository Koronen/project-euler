require_relative '../spec_helper'

require 'project_euler/problem_022'

module ProjectEuler
  describe Problem022 do
    it 'gives the correct answer' do
      Problem022.answer.must_equal 871198282
    end
  end
end
