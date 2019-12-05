class CommentsController < ApplicationController
  def index
    @comments = Comment.where(group_id: params[:group_id])
  end

  def new
    @group = Group.find(params[:group_id])
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)

    @group = Group.find(params[:group_id])
    @comment.group = @group
    if @comment.save
      redirect_to group_path(@group)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:content)
    end
end
