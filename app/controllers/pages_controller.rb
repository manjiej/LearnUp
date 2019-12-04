class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :group]

  def home
    @subjects = Subject.all
  end

  def group
    @groups = Group.where(subject_id: params[:subject_id])
  end


end
