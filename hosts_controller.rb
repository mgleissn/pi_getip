class HostsController < ApplicationController
  # GET /hosts
  # GET /hosts.json
  def index
    @hosts = Host.all

    render json: @hosts
  end

  # GET /hosts/1
  # GET /hosts/1.json
  def show
    @host = Host.find(params[:id])

    render json: @host
  end

  # POST /hosts
  # POST /hosts.json
  def create
    @host = Host.new(params[:host])

    if @host.save
      render json: @host, status: :created, location: @host
    else
      render json: @host.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hosts/1
  # PATCH/PUT /hosts/1.json
  def update
    @host = Host.find(params[:id])

    if @host.update(params[:host])
      head :no_content
    else
      render json: @host.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hosts/1
  # DELETE /hosts/1.json
  def destroy
    @host = Host.find(params[:id])
    @host.destroy

    head :no_content
  end
end
