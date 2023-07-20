class PagesController < ApplicationController

  def index
    @subject_id = params[:subject_id]
    @subject = Subject.find(@subject_id)
    @pages = @subject.pages
  end

  def show
    @page_id = params[:id]
    @page = Page.find(id:@page_id)
  end

  def new
    @page = Page.new
  end

  def create
    page = Page.new(page_params)
    subject = Subject.find(params['subject_id'])
    subject.pages << page
    if page.save
      redirect_to(subjects_path)
    else
      render('new')
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def delete
  end

  private
    def page_params
      params.require(:page).permit(:name, :visible, :position, :permalink, :content)
    end

end