class SessionItemsController < ApplicationController
  before_action :set_session_item, only: [:show, :edit, :update, :destroy]

  # GET /session_items
  # GET /session_items.json
  def index
    @session_items = SessionItem.all
  end

  # GET /session_items/1
  # GET /session_items/1.json
  def show
  end

  # GET /session_items/new
  def new
    @session_item = SessionItem.new
  end

  # GET /session_items/1/edit
  def edit
  end

  # POST /session_items
  # POST /session_items.json
  def create
    @session_item = SessionItem.new(session_item_params)
    respond_to do |format|
      if @session_item.save
        remove_item_from_inventory
        format.html { redirect_to @session_item, notice: 'Session item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @session_item }
      else
        format.html { render action: 'new' }
        format.json { render json: @session_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /session_items/1
  # PATCH/PUT /session_items/1.json
  def update
    respond_to do |format|
      if @session_item.update(session_item_params)
        remove_item_from_inventory
        format.html { redirect_to @session_item, notice: 'Session item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @session_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def remove_item_from_inventory
    @session_item = SessionItem.find(params[:id])
    a = @session_item.item
    a.qty -= @session_item.session_qty
    a.save
  end

  def return_item_to_inventory
    @session_item = SessionItem.find(params[:id])
    a = @session_item.item
    a.qty += @session_item.session_qty
    a.save
  end

  # DELETE /session_items/1
  # DELETE /session_items/1.json
  def destroy
    return_item_to_inventory
    @session_item.destroy

    respond_to do |format|

      format.html { redirect_to session_items_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_session_item
      @session_item = SessionItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_item_params
      params.require(:session_item).permit(:item_id, :session_id, :session_qty, :note)
    end
end
