class SolicitarController < ApplicationController

    def index
        @prod = HTTParty.get('https://oxigenfundationapi.herokuapp.com/api/supplys')
    end

    def new
        @response = HTTParty.get('https://oxigenfundationapi.herokuapp.com/api/supplys')
    end

    def create
        @namePerson = params[:solicitar][:namePerson]
        @idProperty = params[:solicitar][:idProperty]
        @amount = params[:solicitar][:amount]
        @nameProduct = params[:solicitar][:nameProduct]

        @result = HTTParty.post("https://oxigenfundationapi.herokuapp.com/api/solicitud", 
            :body => { :namePerson => @namePerson.to_str, 
                       :id_property => @idProperty.to_str, 
                       :nameProduct => @nameProduct.to_str,
                       :amount => @amount.to_str
                     }.to_json,
            :headers => { 'Content-Type' => 'application/json' } )

        redirect_to '/solicitar'
    end

end