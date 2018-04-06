class Title < ActiveRecord::Base
  has_many :figure_titles
  has_many :figures, through: :figure_titles

  # def self.add_new_title(params)
  #   #binding.pry
  #   @figure = Figure.find_by_id(params[:id])
  #   #if the landmark field is blank, then simply assign the ids
  #   @title = Title.create(name: params[:title][:name])
  #   @figure.titles << @title
  #
  # end

  # def add_many_titles(params)
  #   #adds titles from checkbox if appropriate
  #   @figure = Figure.find_by_id(params[:id])
  #   binding.pry
  #   #if checkboxes are checked
  #   if params[:landmark_ids]
  #     @figure.landmarks = params[:landmark_ids]
  #   end
  # end




end
