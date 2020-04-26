class Part2sController < ApplicationController
  before_action :set_part2, only: [:show, :edit, :update, :destroy]

  # GET /part2s
  # GET /part2s.json
  def index
    @part2s = Part2.all
  end

  # GET /part2s/1
  # GET /part2s/1.json
  def show
  end

  # GET /part2s/new
  def new
    @part2 = Part2.new
  end

  # GET /part2s/1/edit
  def edit
  end

  # POST /part2s
  # POST /part2s.json
  def create
    if params[:part2] == nil
      redirect_to new_part2_url
      return
    end

    @part2 = Part2.new(part2_params)
    @part2s = Part2.all

    respond_to do |format|
      if @part2.save
        format.html { redirect_to new_part3_path, notice: 'Part2 was successfully created.' }
        format.json { render :show, status: :created, location: @part2 }
      else
        format.html { render :new }
        format.json { render json: @part2.errors, status: :unprocessable_entity }
      end
    end

   if @part2s.length() > 1
      @part2s[@part2s.length() - 2].destroy()
    end
  end

  # PATCH/PUT /part2s/1
  # PATCH/PUT /part2s/1.json
  def update
    respond_to do |format|
      if @part2.update(part2_params)
        format.html { redirect_to results_index_url, notice: 'Part2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @part2 }
      else
        format.html { render :edit }
        format.json { render json: @part2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part2s/1
  # DELETE /part2s/1.json
  def destroy
    @part2.destroy
    respond_to do |format|
      format.html { redirect_to results_index_url, notice: 'Part2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def name
    return "Race"
  end

  def information
    return "Racism is the belief that characteristics and abilities can be
    attributed to people simply on the basis of their race and that some racial
    groups are superior to others. Racism and discrimination have been used as
    powerful weapons encouraging fear or hatred of others in times of conflict
    and war, and even during economic downturns. In the US, racism is a well
    known issue. From racial profiling to other issues such as affirmative
    action, police brutality against minorities and the history of slavery and
    the rising resentment against immigrants."
  end

  def sourceTitle
    titles = ["Understanding and Defining White Privilege?", "Racism-Global Issues", "The Racial Wealth Gap"]
    return titles
  end

  def sources
    cite = ["https://www.thoughtco.com/white-privilege-definition-3026087", "https://www.globalissues.org/article/165/racism#RacisminNorthAmerica", "https://www.thoughtco.com/acial-wealth-gap-3026683"]
    return cite
  end

  def countTotal
    @part2s = Part2.all
    total = @part2s[@part2s.length() - 1].ans1 + @part2s[@part2s.length() - 1].ans2 +
    @part2s[@part2s.length() - 1].ans3 + @part2s[@part2s.length() - 1].ans4 + @part2s[@part2s.length() - 1].ans5 +
      @part2s[@part2s.length() - 1].ans6 + @part2s[@part2s.length() - 1].ans7 +
      @part2s[@part2s.length() - 1].ans8 + @part2s[@part2s.length() - 1].ans9 + @part2s[@part2s.length() - 1].ans10
    return total
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part2
      @part2 = Part2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def part2_params
      params.require(:part2).permit(:ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10)
    end
end
