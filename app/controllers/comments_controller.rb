class CommentsController < ApplicationController
    def new
        @comments = Comment.new
    end
    def create
        @comments = Comment.new
        @comments["body"] = params["comment"]["body"]
        @comments.save
    end
end
