class ArticulosController < ApplicationController
    #before_action   :validate_usuario, except: [:show, :index]
    before_action   :authenticate_usuario!, except: [:show, :index]
    before_action   :set_articulo, except: [:index, :new, :create]

    def index
        @articulos = Articulo.all
    end

    def show
        @articulo.update_contador_visitas
        @comentario = Comentario.new
    end

    def new
        @articulo = Articulo.new
    end

    def edit
    end

    def create
        @articulo = current_usuario.articulo.new(articulo_params)
        if @articulo.save
            redirect_to @articulo
        else
            render :new
        end
    end

    def destroy
        @articulo.destroy
        redirect_to articulos_path
    end

    def update
        if @articulo.update(articulo_params)
            redirect_to @articulo
        else
            render :edit
        end
    end

    private

    def set_articulo
        @articulo = Articulo.find(params[:id])
    end

    def validate_usuario
        redirect_to new_usuario_session_path, notice: "Necesitas iniciar sesión antes"
    end

    def articulo_params
        params.require(:articulo).permit(:titulo, :cuerpo)
    end
end
