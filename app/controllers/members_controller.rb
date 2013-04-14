class MembersController < ApplicationController
  respond_to :html, :json
  
  expose :members
  expose :member
  
  def index
    respond_with members
  end
  
  def new
    respond_with member
  end
    
end
