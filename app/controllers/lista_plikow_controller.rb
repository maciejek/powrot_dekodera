class ListaPlikowController < ApplicationController

  # GET /pliki
  # GET /pliki.json
  
  def index
    @pliki = Plik.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pliki }
    end
  end

  # GET /pliki/1
  # GET /pliki/1.json
  def show
    @plik = Plik.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plik }
    end
  end

  # GET /pliki/new
  # GET /pliki/new.json
  def new
    @plik = Plik.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @plik }
    end
  end

  # GET /pliki/1/edit
  def edit
    @plik = Plik.find(params[:id])
  end

  # POST /pliki
  # POST /pliki.json
  def create
    @plik = Plik.new(params[:plik])

    respond_to do |format|
      if @plik.save
        format.html { redirect_to lista_plikow_path(@plik), notice: 'Plik was successfully created.' }
        format.json { render json: @plik, status: :created, location: @plik }
      else
        format.html { render action: "new" }
        format.json { render json: @plik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pliki/1
  # PUT /pliki/1.json
  def update
    @plik = Plik.find(params[:id])

    respond_to do |format|
      if @plik.update_attributes(params[:plik])
        format.html { redirect_to @plik, notice: 'Plik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @plik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pliki/1
  # DELETE /pliki/1.json
  def destroy
    @plik = Plik.find(params[:id])
    @plik.destroy

    respond_to do |format|
      format.html { redirect_to lista_plikow_index_path }
      format.json { head :no_content }
    end
  end
end
