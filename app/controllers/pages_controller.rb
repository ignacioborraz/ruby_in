class PagesController < ApplicationController

  def index
    @subject_id = params[:subject_id]
    @subject = Subject.find(@subject_id)
    @pages = @subject.pages
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def delete
  end

end