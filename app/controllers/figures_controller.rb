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
    #binding.pry
    erb :"figures/show"
  end

  post '/figures' do
    #create a new figure
    # this would create a figure but would only initialize it's name. we can use mass assignment to also assing title_ids and landmark_ids
    #@figure = Figure.create(name: params[:figure][:name])
    @figure = Figure.create(params[:figure])
    if !params[:title][:name].empty?
      @figure.titles << Title.create(name: params[:title][:name])
    end

    if !params[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end

    @figure.save
    redirect to "/figures/#{@figure.id}"
  end


  get '/figures/:id/edit' do
    #display the figure edit form
    #form will contain current figure name, landmarks, and titles in fields
    #form will have hidden input that changes post to Patch
    #select current object by id
    @figure = Figure.find_by_id(params[:id])
    #binding.pry
    erb :"/figures/edit"
  end

  post '/figures/:id' do
    #reroutes to '/figures/:id'
    #updates all objects and attributes
    #saves
    #binding.pry
    @figure = Figure.find(params[:id])
    @figure.update(params[:figure])
    #we can use mass assignment to update title_ids and landmark_id and name all at once
    if !params[:title][:name].empty?
      @figure.titles << Title.create(name: params[:title][:name])
    end

    if !params[:landmark][:name].empty?
      @figure.landmarks << Landmark.create(params[:landmark])
    end

    @figure.save
    redirect to "/figures/#{@figure.id}"
  end


end
