class Part3sController < ApplicationController
  before_action :set_part3, only: [:show, :edit, :update, :destroy]

  # GET /part3s
  # GET /part3s.json
  def index
    @part3s = Part3.all
  end

  # GET /part3s/1
  # GET /part3s/1.json
  def show
  end

  # GET /part3s/new
  def new
    @part3 = Part3.new
  end

  # GET /part3s/1/edit
  def edit
  end

  # POST /part3s
  # POST /part3s.json
  def create
    if params[:part3] == nil
      redirect_to new_part3_url
      return
    end

    @part3 = Part3.new(part3_params)
    @part3s = Part3.all

    respond_to do |format|
      if @part3.save
        format.html { redirect_to new_part4_path, notice: 'Part3 was successfully created.' }
        format.json { render :show, status: :created, location: @part3 }
      else
        format.html { render :new }
        format.json { render json: @part3.errors, status: :unprocessable_entity }
      end
    end

    if @part3s.length() > 1
      @part3s[@part3s.length() - 2].destroy()
    end
  end

  # PATCH/PUT /part3s/1
  # PATCH/PUT /part3s/1.json
  def update
    respond_to do |format|
      if @part3.update(part3_params)
        format.html { redirect_to results_index_url, notice: 'Part3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @part3 }
      else
        format.html { render :edit }
        format.json { render json: @part3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part3s/1
  # DELETE /part3s/1.json
  def destroy
    @part3.destroy
    respond_to do |format|
      format.html { redirect_to results_index_url, notice: 'Part3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def name
    return "Gender"
  end

  def information
    return "Gender Issues is interdisciplinary and cross-national in scope
    focusing on gender and gender equality. Gender issues include all aspects
    and concerns related to women’s and men’s lives and situation in society,
    to the way they interrelate, their differences in access to and use of
    resources, their activities, and how they react to changes, interventions
    and policies. Gender equality is the goal, while gender neutrality and
    gender equity are practices and ways of thinking that help in achieving the goal.
    Gender equality is more than equal representation, it is strongly tied to women's rights"
  end

  def sourceTitle
    titles = ["Examples of Male Privilege", "Gender Issues", "What is Male Privilege"]
    return titles
  end

  def sources
    cite = ["https://everydayfeminism.com/2016/02/160-examples-of-male-privilege/", "https://www.apa.org/research/action/gender", "http://www.academicroom.com/topics/what-is-male-privilege"]
    return cite
  end

  def countTotal
    @part3s = Part3.all
    total = @part3s[@part3s.length() - 1].ans1 + @part3s[@part3s.length() - 1].ans2 +
    @part3s[@part3s.length() - 1].ans3 + @part3s[@part3s.length() - 1].ans4 + @part3s[@part3s.length() - 1].ans5 +
      @part3s[@part3s.length() - 1].ans6 + @part3s[@part3s.length() - 1].ans7 +
      @part3s[@part3s.length() - 1].ans8 + @part3s[@part3s.length() - 1].ans9 + @part3s[@part3s.length() - 1].ans10
    return total
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part3
      @part3 = Part3.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def part3_params
      params.require(:part3).permit(:ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10)
    end
end
