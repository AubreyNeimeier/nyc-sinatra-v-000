class LandmarksController < ApplicationController

  get '/landmarks' do
    #display landmarks
    erb :"/landmarks/index"
  end

  get '/landmarks/new' do
    #form for creating a new landmark
    #simpler than new figures
    #form should post to /landmarks
    erb :'/landmarks/new'
  end

  get '/landmarks/:id' do
    #display attributes of specific landmark
    erb :"/landmarks/show"
  end

  post '/landmarks' do
    #capture info and instantiate new landmark and attributes
    #redirect to "/landmarks/:id"
  end

  get '/landmarks/:id/edit' do
    #render edit form
    #select landmark object with id for use in form
    erb :"/landmarks/edit"
  end

  patch '/landmarks/:id' do
    #update landmarks and attributes, save
    #redirect to "/landmarks/:id"
  end

end
