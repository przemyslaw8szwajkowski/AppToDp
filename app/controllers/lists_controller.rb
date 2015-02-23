class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy, :finish]

  # GET /lists
  # GET /lists.json
  def index
    @user = User.all.where(id: current_user.id)
    @lists = List.all.where(user_id: current_user.id)
    @lists_done = List.done.where(user_id: current_user.id)
    @lists_infinite = List.infinite.where(user_id: current_user.id)
    # @point = List.point_sum.where(user_id: current_user.id)
    # @point_done  = List.point_done
    # @point_infinite = List.point_infinite
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
    @list.user_id = current_user.id
    respond_to do |format|
      if @list.save
        format.html { redirect_to root_path, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to @list, notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy
    respond_to do |format|
      format.html { redirect_to lists_url, notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def finish
   @list = List.find(params[:id])
   new = {:status => true}
   @list.update_attributes(new)
   redirect_to :action => "index"
  end

  def sum_point
   @user = User.find(params[:id])
   @user_point = User.find(params[:id]).point 
   @list_point = List.done.sum(:point).where(user_id: current_user.id) 
   @user.update(:point =>@user_point + @list_point)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:name, :status, :date_end, :user_id, :point)
    end
end
