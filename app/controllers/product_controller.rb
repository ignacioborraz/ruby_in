class ProductController < ApplicationController
  
  def index
  end
  
  def detail
    @id = params['id']
    @static = params[:static]
  end

end