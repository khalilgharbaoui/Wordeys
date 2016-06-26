class ListsController < ApplicationController

  def index
    lists = List.all
      render json: {
        meta: {
        count: List.count,
        page: 0
      },
      lists: List.order(id: :desc)
    }
  end

  def show
    list = List.find(params[:id])
      render json: {
        list: list
      }
  end

  def new
    list = List.new

    render json: {
      list: list
    }
  end

  def create
    list = List.new(list_params)

    if list.save
      render json: {
        list: list
      }
    else
      render json: {
      message: "Not able to create a new list, please try again",
      errors: list.errors,
      }, status: :unprocessible_entity
    end
  end

  def edit
    list = List.find(params[:id])

    render json: {
      list: list
    }
  end

  def update
    list = List.find(params[:id])

    if list.save
      render json: {
        list: list
      }
    else
      render json: {
      message: "Not able to update list, please try again",
      errors: list.errors,
      }, status: :unprocessible_entity
    end
  end

  def destroy
    list = List.find(params[:id])

    if list.destroy
      render json: {
        list: nil
      }
    else
      render json: {
      message: "Not able to delete list, please try again",
      }, status: :unprocessible_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:title, :words, :base_language, :translation, :username)
  end

end
