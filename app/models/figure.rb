class Figure < ActiveRecord::Base
  has_many :landmarks
  has_many :figure_titles
  has_many :titles, through: :figure_titles




    # def update_landmarks()
    # #create a new landmark if they filled in the field
    # #shovel that landmark's id into params[landmark_ids]
    #   if !!params[:landmark][:name].empty?
    #       @landmark = Landmark.create(name: params[:landmark][:name])
    #       params[:figure][:landmark_ids] << @landmark.id #too low level?
    #       # @figure.landmarks << @landmark
    #   #if the landmark field is blank, then simply assign the ids
    #   else
    #     @figure.landmark_ids = params[landmark_ids]
    #   end
    # end


end
