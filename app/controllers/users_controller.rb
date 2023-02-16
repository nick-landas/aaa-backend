class UsersController < ApplicationController
    def index
      users = User.includes(:groups).all
      render json: UserSerializer.new(users).serialized_json
    end
  
    def update
      user = User.find(params[:id])
      membership = user.memberships.find_by(group_id: params[:group_id])
      membership.update(last_viewed: params[:last_viewed])
      render json: MembershipSerializer.new(membership, include: [:group]).serialized_json
    end
  
    def create
      user = User.new(user_params)
      if user.save
        render json: UserSerializer.new(user).serialized_json
      else
        render json: { error: 'error creating user' }
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:email, :name, :image_url)
    end
  end
