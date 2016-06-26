class WordsController < ApplicationController
  before_action :get_list

  def index
    render json: {
      words: @list.words
    }
  end

  def create
    word = Word.new(word_params)
    word.list = @list

    if word.save
      render json: { word: word }
    else
      render json: {
      message: "Not able to create word",
      errors: word.errors,
      }, status: :unprocessible_entity
    end
  end

  def edit
    word = @list.words.find( params[:id] )
  end

  def update
    word = @list.words.find(params[:id])

    if word.update(word_params)
      render json: { word: word }
    else
      render json: {
      message: "Not able to update word",
      errors: word.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    word = @list.word.find(params[:id])

    if word.destroy
      render json: { word: nil }
    else
      render json: {
        message: "Something went wrong, please try again",
      }, status: :unprocessible_entity
    end
  end

  private
  def get_list
    @list = List.find(params[:list_id])
  end

  def word_params
    params.require(:word).permit(:base_language, :translation)
  end
end
