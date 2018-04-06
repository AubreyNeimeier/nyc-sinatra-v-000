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

  post '/figures' do
    #display new figure and its attributes (figure name, landmarks, and titles)
    erb :"/figures/show"
  end

  get '/figures/:id/edit' do
    #display the figure edit form
    #form will contain current figure name, landmarks, and titles in fields
    #form will have hidden input that changes post to Patch
    #select current object by id
    erb :"/figures/edit"
  end




end
