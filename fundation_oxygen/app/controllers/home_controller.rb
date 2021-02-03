class HomeController < ApplicationController
  before_action :set_dato, only: [:show, :edit, :update, :destroy]

  def index
    @response = HTTParty.get('https://oxigenfundationapi.herokuapp.com/api/supplys')
  end

  # def realizarDonacion
  #   @supplys = HTTParty.get('https://oxigenfundationapi.herokuapp.com/api/supplys')


  #   def realizar_Donacion(name,id_property,amount)
  #   @send = HTTParty.post('https://oxigenfundationapi.herokuapp.com/api/supplys',
                        
  #                         :query => {'name': name,
  #                                     'id_property':id_property,
  #                                     'amount': amount});
  #   end
  # end

  # Este metodo se llama automaticamente en la vista home/solicitarDonacion
  # def solicitarDonacion
  #   @supplys = HTTParty.get('https://oxigenfundationapi.herokuapp.com/api/supplys')
  #   @oxigens = HTTParty.get('https://oxigenfundationapi.herokuapp.com/api/oxigens')  
  # end

end
