class OwnersController < ApplicationController
  respond_to :json

  # GET /owners
  # GET /owners.json
  def index
    @owners = Owner.all
  end

  # GET /owners/1
  # GET /owners/1.json
  def show
    @owner = Owner.find_by(slug: params[:owner_name])
  end

end
