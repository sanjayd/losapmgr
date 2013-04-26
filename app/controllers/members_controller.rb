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
  
  def create
    flash[:notice] = 'Created new member' if member.save
    respond_with member, location: members_path
  end
  
  def edit
    respond_with member
  end

  def update
    flash[:notice] = 'Updated member' if member.save
    respond_with member, location: members_path
  end
  
  def destroy
    flash[:notice] = 'Deleted member' if member.destroy
    respond_with member, location: members_path
  end
end
