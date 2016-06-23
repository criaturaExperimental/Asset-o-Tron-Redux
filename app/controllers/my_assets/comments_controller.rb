class MyAssets::CommentsController < CommentsController
  before_action :set_commentable

  # Override next_page to work with nested resources
  def next_page
    redirect_to project_my_asset_path(@commentable.project, @commentable), notice: "Comment successfully posted"
  end

  private

    def set_commentable
      @commentable = MyAsset.find(params[:my_asset_id])
    end
end
