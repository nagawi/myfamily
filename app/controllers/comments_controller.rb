class CommentsController < ApplicationController
  def index

    @comments = Comment.all

    @comment = Comment.new

  end

  def create

    @comment = Comment.new(comment_params)

    @comment.save!
    redirect_to  :action => 'index',  notice: 'Comment was successfully updated.'
  rescue => e
    render :'index'

  end

  def comment_params

    params.require(:comment).permit(:name,:cmt)
    
  end
end
