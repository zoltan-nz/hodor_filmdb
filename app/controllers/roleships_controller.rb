class RoleshipsController < ApplicationController
  before_action :set_roleship, only: [:show, :edit, :update, :destroy]

  # GET /roleships
  # GET /roleships.json
  def index
    @roleships = Roleship.all
  end

  # GET /roleships/1
  # GET /roleships/1.json
  def show
  end

  # GET /roleships/new
  def new
    @roleship = Roleship.new
  end

  # GET /roleships/1/edit
  def edit
  end

  # POST /roleships
  # POST /roleships.json
  def create
    @roleship = Roleship.new(roleship_params)

    respond_to do |format|
      if @roleship.save
        format.html { redirect_to @roleship, notice: 'Roleship was successfully created.' }
        format.json { render action: 'show', status: :created, location: @roleship }
      else
        format.html { render action: 'new' }
        format.json { render json: @roleship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roleships/1
  # PATCH/PUT /roleships/1.json
  def update
    respond_to do |format|
      if @roleship.update(roleship_params)
        format.html { redirect_to @roleship, notice: 'Roleship was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @roleship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roleships/1
  # DELETE /roleships/1.json
  def destroy
    @roleship.destroy
    respond_to do |format|
      format.html { redirect_to roleships_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roleship
      @roleship = Roleship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roleship_params
      params.require(:roleship).permit(:participant_id, :film_id, :role_id)
    end
end
