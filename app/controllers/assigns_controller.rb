class AssignsController < ApplicationController
  def index
    words = Word.all
  end
end
