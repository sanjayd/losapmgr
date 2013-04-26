require 'spec_helper'

describe MembersController do
  let(:member) {FactoryGirl.create(:member)}
  
  before do
    Member.stubs(:find).with(member.id).returns(member)
  end

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
  
  describe 'new' do
    it 'should handle html' do
      get 'new', format: 'html'
      should respond_with(:success)
    end
    
    it 'should handle json' do
      get 'new', format: 'json'
      should respond_with(:success)
    end
  end

  describe 'create' do
    describe 'success' do
      before do
        ActiveModel::Errors.any_instance.stubs(:empty?).returns(true)
      end
      
      it 'should handle html' do
        post :create, format: 'html'
        should redirect_to(members_path)
      end
      
      it 'should handle json' do
        post :create, format: 'json'
        should respond_with 201
      end
    end
    
    describe 'failure' do
      before do
        ActiveModel::Errors.any_instance.stubs(:empty?).returns(false)
      end
    
      it 'should handle html' do
        post :create, format: 'html'
        should respond_with(200)
      end
      
      it 'should handle json' do
        post :create, format: 'json'
        should respond_with(422)
      end
    end
  end

  describe 'edit' do
    it 'should handle html' do
      get 'edit', format: 'html', id: member.id
      should respond_with(:success)
    end
    
    it 'should handle json' do
      get 'edit', format: 'json', id: member.id
      should respond_with(:success)
    end
  end

  describe 'update' do
    describe 'success' do
      before do
        ActiveModel::Errors.any_instance.stubs(:empty?).returns(true)
      end
      
      it 'should handle html' do
        put 'update', format: 'html', id: member.id
        should respond_with(302)
      end
      
      it 'should handle json' do
        put 'update', format: 'json', id: member.id
        should respond_with(204)
      end
    end
    
    describe 'failure' do
      before do
        ActiveModel::Errors.any_instance.stubs(:empty?).returns(false)
      end
      
      it 'should handle html' do
        put 'update', format: 'html', id: member.id
        should respond_with(200)
      end
      
      it 'should handle json' do
        put 'update', format: 'json', id: member.id
        should respond_with(422)
      end
    end
  end
  
  describe 'destroy' do
    it 'should handle html' do
      delete 'destroy', format: 'html', id: member.id
      should respond_with(302)
    end
    
    it 'should handle json' do
      delete 'destroy', format: 'json', id: member.id
      should respond_with(204)
    end
  end

end
