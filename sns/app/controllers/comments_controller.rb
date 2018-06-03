class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :check_ownership!, only: [:destroy]
    
    def create
        new_comment = Comment.new(content: params[:content],
                                  post_id: params[:post_id],
                                  user_id: current_user.id)
        new_comment.save
<<<<<<< HEAD
        redirect_back(fallback_location: root_path)
=======
        redirect_to root_path
>>>>>>> af4017824b688259477c27d0c7e3d0a0d4b38209
    end
    
    def destroy
        @comment.destroy
<<<<<<< HEAD
        redirect_back(fallback_location: root_path)
=======
        redirect_to root_path
>>>>>>> af4017824b688259477c27d0c7e3d0a0d4b38209
    end
    
    private
        def check_ownership!
            @comment = Comment.find_by(id: params[:id])
            redirect_to root_path if @comment.user.id != current_user.id
        end
end
