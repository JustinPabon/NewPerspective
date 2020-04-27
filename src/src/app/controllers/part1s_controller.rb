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
    if params[:part1] == nil
      redirect_to new_part1_url
      return
    end
    @part1 = Part1.new(part1_params)
    @part1s = Part1.all

    respond_to do |format|
      if @part1.save
        format.html { redirect_to new_part2_url, notice: 'Part1 was successfully created.' }
        format.json { render :show, status: :created, location: @part1 }
      else
        format.html { render :new }
        format.json { render json: @part1.errors, status: :unprocessable_entity }
      end
    end
    
    if @part1s.length() > 1
      @part1s[@part1s.length() - 2].destroy()
    end
  end

  # PATCH/PUT /part1s/1
  # PATCH/PUT /part1s/1.json
  def update
    respond_to do |format|
      if @part1.update(part1_params)
        format.html { redirect_to results_index_url, notice: 'Part1 was successfully updated.' }
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
      format.html { redirect_to results_index_url, notice: 'Part1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def name
    return "Economic Class"
  end

  def information
    return "Socioeconomic status profoundly impacts an individual or family’s
    reputation and standing in the community. Socioeconomic issues include the
    ethics, fairness and results of policies, theories and institutions that may
    result in a different standard of treatment and opportunities based on income
    and background. Poverty is a major socioeconomic issue because lack of money
    for basic necessities is the source of many other socioeconomic concerns."
  end

  def sourceTitle
    titles = ["What Are Socioeconomic Issues?", "List of Socio-Economic Factors", "Causes of Poverty"]
    return titles
  end

  def sources
    cite = ["https://www.theclassroom.com/what-are-socioeconomic-issues-12082619.html", "https://classroom.synonym.com/list-of-socio-economic-factors-12083166.html", "https://www.globalissues.org/issue/2/causes-of-poverty"]
    return cite
  end

  def countTotal
    @part1s = Part1.all
    total = @part1s[@part1s.length() - 1].ans1 + @part1s[@part1s.length() - 1].ans2 +
    @part1s[@part1s.length() - 1].ans3 + @part1s[@part1s.length() - 1].ans4 + @part1s[@part1s.length() - 1].ans5 +
      @part1s[@part1s.length() - 1].ans6 + @part1s[@part1s.length() - 1].ans7 +
      @part1s[@part1s.length() - 1].ans8 + @part1s[@part1s.length() - 1].ans9 + @part1s[@part1s.length() - 1].ans10
    return total
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
