module Api
  module V1
    class DirectorsController < ApplicationController
      before_action :set_director, only: [:show, :update, :destroy]
    
      # GET /directors
      def index
        @directors = Director.all
    
        render json: @directors.includes(:pickups), only: [:name]
      end
    
      # GET /directors/1
      def show
        render json: @director
      end
    
      # POST /directors
      def create
        @director = Director.new(director_params)
    
        if @director.save
          render json: @director, status: :created, location: @director
        else
          render json: @director.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /directors/1
      def update
        if @director.update(director_params)
          render json: @director
        else
          render json: @director.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /directors/1
      def destroy
        @director.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_director
          @director = Director.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def director_params
          params.require(:director).permit(:name)
        end
    end
  end
end


