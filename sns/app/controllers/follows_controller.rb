class FollowsController < ApplicationController
    before_action :authenticate_user!
    
    def create
        Follow.create(followed_id: params[:followed_id],
                      follower_id: current_user.id)
<<<<<<< HEAD
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        Follow.find_by(followed_id: params[:id], follower_id: current_user.id).destroy
        redirect_back(fallback_location: root_path)
=======
        redirect_to root_path
    end
    
    def destroy
        Follow.find_by(followed_id: params[:id],
                       follower_id: current_user.id).destroy
        redirect_to root_path
>>>>>>> af4017824b688259477c27d0c7e3d0a0d4b38209
    end
    
    
end
