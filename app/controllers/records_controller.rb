class RecordsController < ApplicationController
  before_action :set_record, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /records or /records.json
  def index
    #@records = Record.all
    @records = Record.where user_id: current_user.id
  end

  # GET /records/1 or /records/1.json
  def show
    if @record.user_id != current_user.id
      redirect_to record_url
      return
    end
  end

  # GET /records/new
  def new
    @record = Record.new
    @record.user_id = current_user.id
  end

  # GET /records/1/edit
  def edit
    if @record.user_id != current_user.id
      redirect_to record_url
      return
    end
  end

  # POST /records or /records.json
  def create
    @record = Record.new(record_params)
    if @record.user_id != current_user.id
      redirect_to record_url
      return
    end
    respond_to do |format|
      if @record.save
        format.html { redirect_to record_url(@record), notice: "Your thought record was successfully created." }
        format.json { render :show, status: :created, location: @record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /records/1 or /records/1.json
  def update
    if @record.user_id != current_user.id
      redirect_to record_url
      return
    end
    respond_to do |format|
      if @record.update(record_params)
        format.html { redirect_to record_url(@record), notice: "Your thought record was successfully updated." }
        format.json { render :show, status: :ok, location: @record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /records/1 or /records/1.json
  def destroy
    if @record.user_id != current_user.id
      redirect_to record_url
      return
    end
    @record.destroy

    respond_to do |format|
      format.html { redirect_to records_url, notice: "Your thought record was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @record = Record.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def record_params
      params.require(:record).permit(:entrylog, :situation, :autothoughtDesc, :autothoughtExp, :emotionsDesc, :emotionsRate, :adaptiveResp, :outcomes, :user_id)
    end
end
