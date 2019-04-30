module Api::V1
  class CoffeesController < ApplicationController
    before_action :set_coffee, only: [:show, :update, :destroy]

    # GET /coffees
    def index
      if params[:shop_id]
        @coffees = Shop.find(params[:shop_id]).coffees
      else
        @coffees = Coffee.order(:id)
      end

      render json: @coffees
    end

    # GET /coffees/1
    def show
      render json: @coffee
    end

    # POST /coffees
    def create
      @coffee = Coffee.new(coffee_params)

      if @coffee.save
        render json: @coffee, status: :created
      else
        render json: @coffee.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /coffees/1
    def update
      if @coffee.update(coffee_params)
        render json: @coffee
      else
        render json: @coffee.errors, status: :unprocessable_entity
      end
    end

    # DELETE /coffees/1
    def destroy
      @coffee.destroy
      if @coffee.destroy
        head :no_content, status: :ok
      else
        render json: @coffee.errors, status: :unprocessable_entity
      end
    end

    private

      # Use callbacks to share common setup or constraints between actions.
      def set_coffee
        @coffee = Coffee.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def coffee_params
        params.require(:coffee).permit(:name, :description, :roaster, :producer, :washing_station, :min_altitude, :max_altitude, :season_start, :season_end)
      end

  end
end
