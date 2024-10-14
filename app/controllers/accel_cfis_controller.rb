class AccelCfisController < ApplicationController
  before_action :set_accel_cfi, only: %i[ show edit update destroy ]
  def confirmation
    render 'confirm'
  end
  # GET /accel_cfis or /accel_cfis.json
  def index
    @accel_cfis = AccelCfi.all
  end

  # GET /accel_cfis/1 or /accel_cfis/1.json
  def show
  end

  # GET /accel_cfis/new
  def new
    @accel_cfi = AccelCfi.new
  end

  # GET /accel_cfis/1/edit
  def edit
  end

  # POST /accel_cfis or /accel_cfis.json
  def create
    @accel_cfi = AccelCfi.new(accel_cfi_params)

    respond_to do |format|
      if @accel_cfi.save
        AccelCfiMailer.mail_cfi(@accel_cfi).deliver_later
        format.html { redirect_to accel_cfis_confirm_path, notice: @accel_cfi.name }
        #format.json { render :show, status: :created, location: @accel_cfi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @accel_cfi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accel_cfis/1 or /accel_cfis/1.json
  # def update
  #   respond_to do |format|
  #     if @accel_cfi.update(accel_cfi_params)
  #       format.html { redirect_to accel_cfi_url(@accel_cfi), notice: "Accel cfi was successfully updated." }
  #       format.json { render :show, status: :ok, location: @accel_cfi }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @accel_cfi.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /accel_cfis/1 or /accel_cfis/1.json
  def destroy
    @accel_cfi.destroy

    respond_to do |format|
      format.html { redirect_to accel_cfis_url, notice: "Accel cfi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accel_cfi
      @accel_cfi = AccelCfi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accel_cfi_params
      params.require(:accel_cfi).permit(:name, :phone, :email)
    end
end
