class FiguresController < ApplicationController

  get '/figures' do
    #home page listing all figures as links
    @figures = Figure.all
    erb :"/figures/index"
  end

  get '/figures/new' do
    #new figure form. the form will have the following functions
    #select from existing or create a new landmark
    #select from existing or create a new title
    erb :"/figures/new"
  end

  get '/figures/:id' do
    #render show page
    #display new figure and its attributes (figure name, landmarks, and titles)

    @figure = Figure.find_by_id(params[:id])
    erb :"figures/show"
  end

  post '/figures' do
    #create a new figure
    @figure = Figure.create(name: params[:figure][:name])
    #create a new landmark if they filled in the field
    #shovel that landmark's id into params[landmark_ids]
    if !!params[:landmark][:name].empty?
        @landmark = Landmark.create(name: params[:landmark][:name])
        params[:figure][:landmark_ids] << @landmark.id #too low level?
        # @figure.landmarks << @landmark
    #if the landmark field is blank, then simply assign the ids
    else
      @figure.landmark_ids = params[landmark_ids]
    end


    #create a new landmark if they filled in the field
    #shovel that landmark's id into params[landmark_ids]
    if !!params[:landmark][:name].empty?
        @landmark = Landmark.create(name: params[:landmark][:name])
        params[:figure][:landmark_ids] << @landmark.id #too low level?
        # @figure.landmarks << @landmark
    #if the landmark field is blank, then simply assign the ids
    else
      @figure.landmark_ids = params[landmark_ids]
    end



    @figure.landmarks =

    reroute to "/figures/:id"
  end


  get '/figures/:id/edit' do
    #display the figure edit form
    #form will contain current figure name, landmarks, and titles in fields
    #form will have hidden input that changes post to Patch
    #select current object by id
    erb :"/figures/edit"
  end

  patch '/figures/edit' do
    #reroutes to '/figures/:id'
    #updates all objects and attributes
    #saves

  end


end
