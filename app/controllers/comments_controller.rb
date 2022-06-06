class CommentsController < ApplicationController
    def create
        if @current_user
        @comment = Comment.new
        @comment["body"] = params["comment"]["body"]
        @comment["user_id"] = @current_user["id"]
        @comment["post_id"] = params["comment"]["post_id"]
        @comment.save
        else
        flash["notice"] = "Login first."
        end
      redirect_to "/posts"
    end
end
