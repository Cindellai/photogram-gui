class CommentsController < ActionController::Base
  def create
    input_photo_id = params.fetch("query_photo_id")
    input_body = params.fetch("query_body")
    input_author_id = params.fetch("query_author_id")

    new_comment = Comment.new
    new_comment.photo_id = input_photo_id
    new_comment.body = input_body
    new_comment.author_id = input_author_id
    new_comment.save

    next_url = "/photos/" + input_photo_id.to_s
    redirect_to(next_url)
  end
end
