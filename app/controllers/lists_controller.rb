class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
  end

  # GET /lists/new
  def new
    @list = List.new
  end

  # GET /lists/1/edit
  def edit
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(list_params)
    
    respond_to do |format|
      if @list.save
        format.html { redirect_to @list.ventum, notice: 'Venta exitosa.' }
        format.json { render :show, status: :created, location: @list.ventum }
      else
        format.html { redirect_to @list.ventum, notice: 'Venta no exitosa, insucifiencte stock o cantidad inaceptable.' }
        format.json { render json: @list.ventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        redirect_to "/posts/"+@comment.post.id.to_s, notice: "Comment created successfully"
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    respond_to do |format|
      @list.destroy
      format.html { redirect_to @list.ventum, notice: 'Producto eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:producto, :costo, :cantidad, :ventum_id)
    end
end
