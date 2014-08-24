class PagesController < ApplicationController
  
  before_action :set_page, only: [:show, :edit, :update, :destroy]
  
  def index
    #@pages = Page.where(slug: 'index').first
    @pages = Page.all
  end
  
  def new
    @page = Page.new
  end
  
  def create
    @page = Page.new(page_params)
    @page.save!
    redirect_to action: :show, id: @page.id
  end
  
  def show
    
  end    

  def about
    @page = Page.where(slug: 'about').first
   # @page = Page.find(2)
  end
  
  def contact
    
  end
  
  def portfolio
    
  end
  
  def set_page
    @page = Page.find(params[:id])
  end
  
  def page_params
    params.require(:page).permit(:title, :slug, :content)
  end  
end
