class GroupsController < ApplicationController
  before_action :set_group, only: [:show, :edit, :update, :destroy, :join]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def join
    @group_member = GroupMember.create(group_id: @group_id, user_id: current_user.id)
    @group.group_members << @group_member
    # @group.members += 1
  end

  # GET /groups
  # GET /groups.json
  def index
    @groups = Group.where(subject_id: params[:subject_id])
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
    @group = Group.find(params[:id])
    @comments = Comment.where(group_id: params[:group_id])
    @comment = Comment.new
    @marker = @group.slice[latitude: @group.latitude, longitude: @group.longitude]
  end

  # GET /groups/new
  def new
    @subject = Subject.find(params[:subject_id])
    @group = Group.new
  end


  # POST /groups
  # POST /groups.json
  def create
    @group = Group.new(group_params)
    @user = current_user

    # authorize @group

    @subject = Subject.find(params[:subject_id])
    @group.subject = @subject
    @group.user = @user
    if @group.save
      redirect_to subject_groups_path(@subject)
    else
      render :new
    end

    # respond_to do |format|
    #   if @group.save
    #     format.html { redirect_to @group, notice: 'Group was successfully created.' }
    #     format.json { render :show, status: :created, location: @group }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @group.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # GET /groups/1/edit
  def edit

  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    # respond_to do |format|
    #   if @group.update(group_params)
    #     format.html { redirect_to @group, notice: 'Group was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @group }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @group.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @group.destroy
    # respond_to do |format|
    #   format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:title, :description, :timeline, :location, :user_id, :subject_id)
    end
end
