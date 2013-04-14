require 'spec_helper'

describe MembersController do

  describe 'index' do
    it 'should handle html' do
      get 'index', format: 'html'
      should respond_with(:success)
    end
    
    it 'should handle json' do
      get 'index', format: 'json'
      should respond_with(:success)
    end
  end
end
