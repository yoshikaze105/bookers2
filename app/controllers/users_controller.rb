class UsersController < ApplicationController
  def new
    @book = Book.new
  end

  def index
   @users = User.all
  end

  def show
  
  end

  def create
    # １. データを新規登録するためのインスタンス作成
    @book = Book.new(list_params)
    # ２. データをデータベースに保存するためのsaveメソッド実行
    book.save
    # ３. books画面へリダイレクト
    redirect_to book_path
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
