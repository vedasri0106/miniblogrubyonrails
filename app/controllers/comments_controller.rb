class CommentsController < ApplicationController
    def create
      comment = Comment.new(comment_params.merge(user_id: current_user.id, post_id: params[:post_id]))
      if comment.save
        # Turbo-compatible rendering
        render turbo_stream: turbo_stream.append("comments_#{comment.post_id}", partial: "comments/comment", locals: { comment: comment })
      else
        # Handle validation errors
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:content)
    end


  end