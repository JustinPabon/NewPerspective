class Part4sController < ApplicationController
  before_action :set_part4, only: [:show, :edit, :update, :destroy]

  # GET /part4s
  # GET /part4s.json
  def index
    @part4s = Part4.all
  end

  # GET /part4s/1
  # GET /part4s/1.json
  def show
  end

  # GET /part4s/new
  def new
    @part4 = Part4.new
  end

  # GET /part4s/1/edit
  def edit
  end

  # POST /part4s
  # POST /part4s.json
  def create
    if params[:part4] == nil
      redirect_to new_part4_url
      return
    end

    @part4 = Part4.new(part4_params)
    @part4s = Part4.all

    respond_to do |format|
      if @part4.save
        format.html { redirect_to new_part5_path, notice: 'Part4 was successfully created.' }
        format.json { render :show, status: :created, location: @part4 }
      else
        format.html { render :new }
        format.json { render json: @part4.errors, status: :unprocessable_entity }
      end
    end

  if @part4s.length() > 1
      @part4s[@part4s.length() - 2].destroy()
    end
  end

  # PATCH/PUT /part4s/1
  # PATCH/PUT /part4s/1.json
  def update
    respond_to do |format|
      if @part4.update(part4_params)
        format.html { redirect_to results_index_url, notice: 'Part4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @part4 }
      else
        format.html { render :edit }
        format.json { render json: @part4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part4s/1
  # DELETE /part4s/1.json
  def destroy
    @part4.destroy
    respond_to do |format|
      format.html { redirect_to results_index_url, notice: 'Part4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def name
    return "Sexuality"
  end

  def information
    return "Heterosexual is considered the normative form
    of sexual orientation. There are both institutional and cultural forces encouraging
    heterosexuality in society. Heterosexual privilege is based in the existence of
    homophobia in society, particularly at the individual level. Institutions
    such as marriage stop homosexual partners from accessing each other's health
    insurance, tax benefits or adopting a child together. Same sex marriage is
    only legal in 27 countries, mostly in the northern hemisphere. This
    results in an inability for non-heterosexual couples to benefit from the
    institutional structures that are based on heterosexuality, resulting in
    privilege for those who are heterosexual."
  end

  def sourceTitle
    titles = ["Sexual - Privilege Checklist", "30+ Examples of Heterosexual (Straight) Privileges", "Sexual Orientation and Human Rights"]
    return titles
  end

  def sources
    cite = ["https://projecthumanities.asu.edu/content/sexual-privilege-checklist", "https://www.itspronouncedmetrosexual.com/2012/01/29-examples-of-heterosexual-privilege/", "http://hrlibrary.umn.edu/edumat/studyguides/sexualorientation.html"]
    return cite
  end

  def countTotal
    @part4s = Part4.all
    total = @part4s[@part4s.length() - 1].ans1 + @part4s[@part4s.length() - 1].ans2 +
    @part4s[@part4s.length() - 1].ans3 + @part4s[@part4s.length() - 1].ans4 + @part4s[@part4s.length() - 1].ans5 +
      @part4s[@part4s.length() - 1].ans6 + @part4s[@part4s.length() - 1].ans7 +
      @part4s[@part4s.length() - 1].ans8 + @part4s[@part4s.length() - 1].ans9 + @part4s[@part4s.length() - 1].ans10
    return total
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part4
      @part4 = Part4.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def part4_params
      params.require(:part4).permit(:ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10)
    end
end
