class Subjects::CommentsController < CommentsController
  before_action :set_commentable

  private

  def set_commentable
    @commentable = Subject.find(params[:subject_id]).order(created_at: :desc).
  end
end
