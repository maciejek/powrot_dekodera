class ListaPlikowController < ApplicationController

  # GET /lista_plikow
  # GET /pliki.json

  def index
	@pliki = Plik.all
  
	respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pliki }
    end
  end
  
  # GET /lista_plikow/1
  # GET /pliki/1.json
  
  def show
    @pliki = Plik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pliki }
    end
  end

  # GET /lista_plikow/new
  # GET /plikis/new.json
  def new
    @pliki = Plik.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pliki }
    end
  end

  # GET /plikis/1/edit
  def edit
    @pliki = Plik.find(params[:id])
  end

  # POST /plikis
  # POST /plikis.json
  def create
    @pliki = Plik.new(params[:pliki])

    respond_to do |format|
      if @pliki.save
        format.html { redirect_to @pliki, notice: 'Plik was successfully created.' }
        format.json { render json: @pliki, status: :created, location: @pliki }
      else
        format.html { render action: "new" }
        format.json { render json: @pliki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /plikis/1
  # PUT /plikis/1.json
  def update
    @pliki = Plik.find(params[:id])

    respond_to do |format|
      if @pliki.update_attributes(params[:pliki])
        format.html { redirect_to @pliki, notice: 'Plik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pliki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plikis/1
  # DELETE /plikis/1.json
  def destroy
    @pliki = Plik.find(params[:id])
    @pliki.destroy

    respond_to do |format|
      format.html { redirect_to plikis_url }
      format.json { head :no_content }
    end
  end
end
