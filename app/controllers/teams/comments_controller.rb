class Teams::CommentsController < CommentsController
  before_action :set_commentable

  private

    def set_commentable
      @commentable = Team.find(params[:team_id])
    end
end
