class ReimbursementsController < ApplicationController
  before_action :set_reimbursement, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: [:create, :new, :confirmation]
  #invisible_captcha only: [:create], honeypot: :confirm_email



  # GET /reimbursements or /reimbursements.json
  def index
    @reimbursements = Reimbursement.all
  end

  # GET /reimbursements/1 or /reimbursements/1.json
  def show
  end

  # GET /reimbursements/new
  def new
    @reimbursement = Reimbursement.new
  end

  # GET /reimbursements/1/edit
  def edit
  end

    # Mark as paid in the show view
    def mark_as_paid_view
      @reimbursement = Reimbursement.find(params[:id])
      @reimbursement.update(status: 'Paid')
      redirect_to reimbursement_url(@reimbursement), notice: 'Reimbursement marked as paid.'
    end
  
    # Mark as view in the show view
    def mark_as_viewed_view
      @reimbursement = Reimbursement.find(params[:id])
      @reimbursement.update(status: 'Viewed')
      redirect_to reimbursement_url(@reimbursement), notice: 'Reimbursement marked as viewed.'
    end
  
    # Mark as paid in the index view
    def mark_as_paid_index
      @reimbursement = Reimbursement.find(params[:id])
      @reimbursement.update(status: 'Paid')
      redirect_to reimbursement_index_path, notice: 'Reimbursement marked as paid.'
    end
  
    # Mark as view in the index view
    def mark_as_viewed_index
      @reimbursement = Reimbursement.find(params[:id])
      @reimbursement.update(status: 'Viewed')
      redirect_to reimbursement_index_path, notice: 'Reimbursement marked as viewed.'
    end

  # POST /reimbursements or /reimbursements.json
  def create
    @reimbursement = Reimbursement.new(reimbursement_params)

    respond_to do |format|
      if @reimbursement.save
        ReimbursementMailer.reimbursement_mailer(@reimbursement).deliver_later
        format.html { redirect_to reimbursement_confirmation_path }
        #format.json { render :show, status: :created, location: @reimbursement }
      else
        format.html { render :new, status: :unprocessable_entity }
        #format.json { render json: @reimbursement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reimbursements/1 or /reimbursements/1.json
  def update
    respond_to do |format|
      if @reimbursement.update(reimbursement_params)
        format.html { redirect_to reimbursement_url(@reimbursement), notice: "Reimbursement was successfully updated." }
        format.json { render :show, status: :ok, location: @reimbursement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reimbursement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reimbursements/1 or /reimbursements/1.json
  def destroy
    @reimbursement.destroy

    respond_to do |format|
      format.html { redirect_to reimbursement_index_url, notice: "Reimbursement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reimbursement
      @reimbursement = Reimbursement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reimbursement_params
      params.require(:reimbursement).permit(:first_name, :last_name, :entry_date, :amount, :preferred_payment, :username, :upload, :receipt, :status, :email )
    end
end
