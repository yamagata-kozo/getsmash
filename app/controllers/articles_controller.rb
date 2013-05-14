# coding: utf-8
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if false
      redirect_to @article, notice: '新しいarticleを作成しました'
    else
      flash[:alert] = 'articleを作成出来ませんでした'
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(params[:article])
      redirect_to @article, notice: '更新しました'
    else
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
