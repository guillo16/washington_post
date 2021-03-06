class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_articles, only: [:show, :edit, :update, :destroy]
  before_action :set_categories, only: [:index, :show]
  def index
    @articles = Article.all
  end

  def show
    @articles = Article.all.limit(20).order(created_at: :desc)
  end

  def new
    @article = Article.new
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def create
    @article = Article.new(article_params)
    @article.category_id = params[:category_id]
    @article.user = current_user
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_articles
    @article = Article.find(params[:id])
  end

  def set_categories
    @categories = Category.all
  end

  def article_params
    params.require(:article).permit(:title, :subtitle, :content_1, :content_2, :content_3, :content_4, :photo1, :photo2, :photo3, :footer_1, :footer_2)
  end
end
