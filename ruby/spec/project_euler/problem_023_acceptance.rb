require_relative '../spec_helper'

require 'project_euler/problem_023'

module ProjectEuler
  describe Problem023 do
    it 'gives the correct answer' do
      Problem023.answer.must_equal 4179871
    end
  end
end
