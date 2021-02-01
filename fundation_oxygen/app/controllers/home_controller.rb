require 'rest-client'
require 'json'

class HomeController < ApplicationController
  before_action :set_dato, only: [:show, :edit, :update, :destroy]

  def index
    @response = HTTParty.get('http://localhost:8000/api/supplys')
  end

  def realizarDonacion
    
  end

  # Este metodo se llama automaticamente en la vista home/solicitarDonacion
  def solicitarDonacion
    @supplys = HTTParty.get('http://localhost:8000/api/supplys')
    @oxigens = HTTParty.get('http://localhost:8000/api/oxigens')  
  end



end
