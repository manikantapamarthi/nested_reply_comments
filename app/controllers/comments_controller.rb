class CommentsController < ApplicationController


  def create
    @comment = current_user.comments.new(comments_params)
    if @comment.save
      redirect_to post_path(params[:post_id])
    else
      flash[:notice] = @comment.errors.full_messages.to_sentence
    end
  end

  private

  def comments_params
    params.require(:comment).permit(:content, :parent_id).merge(post_id: params[:post_id])
  end
end
