require 'spec_helper'

require 'project_euler/problem_037'

module ProjectEuler
  describe Problem037 do
    it 'gives the correct answer' do
      Problem037.answer.must_equal 748317
    end
  end
end
