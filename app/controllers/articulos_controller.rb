class ArticulosController < ApplicationController
    def index
        @articulos = Articulo.all
    end

    def show
        @articulo = Articulo.find(params[:id])
    end
end
