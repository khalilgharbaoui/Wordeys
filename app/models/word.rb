class Word < ActiveRecord::Base
  belongs_to :list
  belongs_to :user
end
