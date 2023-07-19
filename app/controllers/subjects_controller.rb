class SubjectsController < ApplicationController
  def index
  end

  def show
    @id = params[:id]
    @subject = Subject.find(@id)
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
