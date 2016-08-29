class ClientsController < ApplicationController
  def index
    @client = Client.all
    @client.each do |client|

      @pago = client.subscription_id

    end

    @subs = Subscription.find(@pago)
    @nombre = @subs.name

  end

  def new
    @client = Client.new
  end

  def create

  end


  private
    def client_params
      params.require(:client).permit(:nombre, :apellido, :genero, :edad, :correo, :cel, :direccion, :barrio, :ciudad, :fecha_fin, :activo, :fecha_ultpago, :fecha_finpago, :contrato)
    end

end
