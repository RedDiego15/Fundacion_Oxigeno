require 'rest-client'
require 'json'

class DonationsController < ApplicationController
  before_action :set_dato, only: [:show, :edit, :update, :destroy]

  def donation
    @response = HTTParty.get('http://localhost:8000/api/supplys')
    # response = RestClient.get('https://pokeapi.co/api/v2/pokemon/1')

    # results = JSON.parse(response.to_str)
    # name = results['forms'][0]['name']
    # puts "El nombre del pokemon es: #{name}"
    # @name = "entroo"
  end


end
