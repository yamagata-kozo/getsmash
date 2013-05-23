# coding: utf-8
class ArticlesController < ApplicationController
  def index
    @articles = Article.includes(:category).all
  end

  def show
    @article = Article.joins(:category).find(params[:id])
  end

  def new
    @article = Article.new
    @categories = Category.all
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to @article, notice: '新しいarticleを作成しました'
    else
      @categories = Category.all
      flash[:alert] = t('flash_messages.article.create_error')
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
    @categories = Category.all
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to @article, notice: '更新しました'
    else
      @categories = Category.all
      flash[:alert] = '更新出来ませんでした'
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path, notice: '削除しました'
  end
end
