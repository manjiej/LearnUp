class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :groups]

  def home
    @subjects = Subject.all
  end
end
