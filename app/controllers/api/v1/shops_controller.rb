module Api::V1
  class ShopsController < ApplicationController
    before_action :set_shop, only: [:show, :update, :destroy]

    # GET /shops
    def index
      @shops = Shop.order(:id)

      render json: @shops
    end

    # GET /shops/1
    def show
      render json: @shop
    end

    # POST /shops
    def create
      @shop = Shop.new(shop_params)

      if @shop.save
        render json: @shop, status: :created
      else
        render json: @shop.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /shops/1
    def update
      if @shop.update(shop_params)
        render json: @shop
      else
        render json: @shop.errors, status: :unprocessable_entity
      end
    end

    # DELETE /shops/1
    def destroy
      @shop.destroy
      if @shop.destroy
        head :no_content, status: :ok
      else
        render json: @shop.errors, status: :unprocessable_entity
      end
    end

    private

      # Use callbacks to share common setup or constraints between actions.
      def set_shop
        @shop = Shop.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def shop_params
        params.require(:shop).permit(:name, :hours, :address, :coordinates)
      end

  end
end
