class BloksController < ApplicationController
  before_action :set_blok, only: %i[ show edit update destroy ]

  # GET /bloks or /bloks.json
  def index
    @bloks = Blok.all
  end

  # GET /bloks/1 or /bloks/1.json
  def show
  end

  # GET /bloks/new
  def new
    @blok = Blok.new
  end

  # GET /bloks/1/edit
  def edit
  end

  # POST /bloks or /bloks.json
  def create
    @blok = Blok.new(blok_params)

    respond_to do |format|
      if @blok.save
        format.html { redirect_to blok_url(@blok), notice: "Blok was successfully created." }
        format.json { render :show, status: :created, location: @blok }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blok.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bloks/1 or /bloks/1.json
  def update
    respond_to do |format|
      if @blok.update(blok_params)
        format.html { redirect_to blok_url(@blok), notice: "Blok was successfully updated." }
        format.json { render :show, status: :ok, location: @blok }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blok.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bloks/1 or /bloks/1.json
  def destroy
    @blok.destroy

    respond_to do |format|
      format.html { redirect_to bloks_url, notice: "Blok was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blok
      @blok = Blok.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blok_params
      params.require(:blok).permit(:title, :body)
    end
end
