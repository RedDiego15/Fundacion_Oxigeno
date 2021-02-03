class DonarController < ApplicationController
    def index

    end

    def new

    end

    def create
        @name = params[:donation][:name]
        @idProperty = params[:donation][:idProperty]
        @amount = params[:donation][:amount]


        @result = HTTParty.post("https://oxigenfundationapi.herokuapp.com/api/supplys", 
            :body => { :name => @name.to_str, 
                       :id_property => @idProperty.to_str, 
                       :amount => @amount.to_str
                     }.to_json,
            :headers => { 'Content-Type' => 'application/json' } )

        redirect_to "/donar"
    end

end