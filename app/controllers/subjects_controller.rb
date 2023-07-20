class SubjectsController < ApplicationController
  def index
    @subjects = Subject.order('position ASC')
  end

  def show
    @id = params[:id]
    @subject = Subject.find(@id)
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
    @id = params[:id]
    @subject = Subject.find(@id)
  end

  def update
    @id = params[:id]
    @subject = Subject.find(@id)
    if @subject.update(subject_params)
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def delete
    @id = params[:id]
    @subject = Subject.find(@id)
  end

  def destroy
    @id = params[:id]
    @subject = Subject.find(@id)
    @subject.destroy
    redirect_to(subjects_path)
  end

  private
    def subject_params
      params.require(:subject).permit(:name, :visible, :position)
    end

  
end
