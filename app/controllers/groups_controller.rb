
class GroupsController < ApplicationController
    before_action :set_group, only: [:show, :update]
  
    def index
      groups = Group.includes(:users).all
      render json: GroupSerializer.new(groups).serialized_json
    end
  
    def show
      messages = if params[:datetime]
                  @group.messages.where('created_at > ?', params[:datetime])
                 else
                  @group.messages
                 end
      render json: MessageSerializer.new(messages).serialized_json
    end
  
    def create
      group = Group.new(group_params)
      if group.save
        render json: GroupSerializer.new(group).serialized_json
      else
        render json: { error: 'could not be created' }
      end
    end
  
    def update
      if @group.update(group_params)
        render json: GroupSerializer.new(@group).serialized_json
      else
        render json: { error: 'could not be updated' }
      end
    end
  
    private
  
    def set_group
      @group = Group.find(params[:id])
    end
  
    def group_params
      params.require(:group).permit(:name, :description, :image_url, user_ids: [])
    end
  end
