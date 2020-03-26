class Part1sController < ApplicationController
  before_action :set_part1, only: [:show, :edit, :update, :destroy]

  # GET /part1s
  # GET /part1s.json
  def index
    @part1s = Part1.all
  end

  # GET /part1s/1
  # GET /part1s/1.json
  def show
  end

  # GET /part1s/new
  def new
    @part1 = Part1.new
  end

  # GET /part1s/1/edit
  def edit
  end

  # POST /part1s
  # POST /part1s.json
  def create
    @part1 = Part1.new(part1_params)

    respond_to do |format|
      if @part1.save
        format.html { redirect_to @part1, notice: 'Part1 was successfully created.' }
        format.json { render :show, status: :created, location: @part1 }
      else
        format.html { render :new }
        format.json { render json: @part1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /part1s/1
  # PATCH/PUT /part1s/1.json
  def update
    respond_to do |format|
      if @part1.update(part1_params)
        format.html { redirect_to @part1, notice: 'Part1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @part1 }
      else
        format.html { render :edit }
        format.json { render json: @part1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part1s/1
  # DELETE /part1s/1.json
  def destroy
    @part1.destroy
    respond_to do |format|
      format.html { redirect_to part1s_url, notice: 'Part1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part1
      @part1 = Part1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def part1_params
      params.require(:part1).permit(:ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10)
    end
end
