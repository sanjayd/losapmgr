class MembersController < ApplicationController
  respond_to :html, :json
  
  expose(:members)
  
  def index
    respond_with members
  end
end
