# Project name: NewPerspective
# Description: Assesses social issues that students should look into for volunteer work.
# Filename: part5s_controller.rb
# Description: Controller for the Part 5 (Disabilites) of the questionaire.
# Last modified on: April 26, 2020
#
# Note: This file was generated by a scaffold with functions modified or created where noted.

class Part5sController < ApplicationController
  before_action :set_part5, only: [:show, :edit, :update, :destroy]

  # GET /part5s
  # GET /part5s.json
  def index
    @part5s = Part5.all
  end

  # GET /part5s/1
  # GET /part5s/1.json
  def show
  end

  # GET /part5s/new
  def new
    @part5 = Part5.new
  end

  # GET /part5s/1/edit
  def edit
  end

  # POST /part5s
  # POST /part5s.json
  # Originally generated by a Scaffold. Modified where noted.
  def create
    #Modification; if user gives an empty submission, stay on the page
    if params[:part5] == nil
      redirect_to new_part5_url
      return
    end

    @part5 = Part5.new(part5_params)
    @part5s = Part5.all

    respond_to do |format|
      if @part5.save
        format.html { redirect_to results_index_url, notice: '' }
        format.json { render :show, status: :created, location: @part5 }
      else
        format.html { render :new }
        format.json { render json: @part5.errors, status: :unprocessable_entity }
      end
    end
  
    #Modification; Delete previously submitted questionaire to manage database.
  if @part5s.length() > 1
      @part5s[@part5s.length() - 2].destroy()
    end
  end

  # PATCH/PUT /part5s/1
  # PATCH/PUT /part5s/1.json
  def update
    respond_to do |format|
      if @part5.update(part5_params)
        format.html { redirect_to results_index_url, notice: 'Part5 was successfully updated.' }
        format.json { render :show, status: :ok, location: @part5 }
      else
        format.html { render :edit }
        format.json { render json: @part5.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part5s/1
  # DELETE /part5s/1.json
  def destroy
    @part5.destroy
    respond_to do |format|
      format.html { redirect_to results_index_url, notice: 'Part5 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

# Function: name ()
#
# Parameters:
#
# Pre-condition: Program needs the name of the topic associated with Part 5 of the questionaire
#
# Post-condition: The name of the topic is returned.
#
# This function was created by the developer.
  def name
    return "Disabilities"
  end

# Function: information ()
#     
# Parameters:
#              
# Pre-condition: Program needs a summary of the topic associated with Part 5 of the questionaire
#                       
# Post-condition: The summary of the topic is returned.
#
# This function was created by the developer.
  def information
    return "Able-bodied privilege is an advantage people gain simply because
    they are not limited by physical or mental impairments. Sometimes able-bodied
    people perceive themselves as ''normal,'' and wrongly presume that everyone
    has the same opportunities, abilities and access. Able-bodied privilege may
    also mean that someone might invite a group of friends to a quaint restaurant
    that doesn't have ramps or elevators, thereby ostracizing one friend who needs
    those accommodations to join the group. For many people, the world is set up
    for easy access. People with impairments do not have the same ease of access,
      but that is sometimes forgotten by the rest of society."
  end

# Function: sourceTitle ()
#     
# Parameters:
#              
# Pre-condition: Program needs the names of the provided sources.
#                       
# Post-condition: An array of the names of the sources are returned.
#
# This function was created by the developer.
  def sourceTitle
    titles = ["The 7 Disability Issues Everyone Needs to Know About", "Workplace Disability Discrimination", "What is Able-Bodied Privilege?"]
    return titles
  end

# Function: sourceTitle ()
#     
# Parameters:
#              
# Pre-condition: Program needs links to the provided sources.
#                       
# Post-condition: An array of the links to the sources are returned.
#
# This function was created by the developer.
  def sources
    cite = ["https://www.dailydot.com/debug/7-disability-issues/", "https://www.disabilityscoop.com/2013/01/29/workplace-discrimination-record/17205/", "https://privilegeuncensored.wordpress.com/what-is-able-bodied-privilege-3/"]
    return cite
  end

# Function: countTotal ()
#     
# Parameters:
#         
# Pre-condition: Program needs to the total score the user got based on their answers.
#             
# Post-condition: The calculated total is returned.
#
# This function was created by the developer.
  def countTotal
    @part5s = Part5.all
    total = @part5s[@part5s.length() - 1].ans1 + @part5s[@part5s.length() - 1].ans2 +
    @part5s[@part5s.length() - 1].ans3 + @part5s[@part5s.length() - 1].ans4 + @part5s[@part5s.length() - 1].ans5 +
      @part5s[@part5s.length() - 1].ans6 + @part5s[@part5s.length() - 1].ans7 +
      @part5s[@part5s.length() - 1].ans8 + @part5s[@part5s.length() - 1].ans9 + @part5s[@part5s.length() - 1].ans10
    return total
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_part5
      @part5 = Part5.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def part5_params
      params.require(:part5).permit(:ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10)
    end
end
