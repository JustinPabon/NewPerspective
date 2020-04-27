# Project name: NewPerspective
# # Description: Assesses social issues that students should look into for volunteer work.
# # Filename: results_controller.rb
# # Description: Controller for the Results page of the application. Allows the page access to all submitted answers.
# # Last modified on: April 25, 2020

class ResultsController < ApplicationController
  #   Function: name ()
  #   
  #   Parameters:
  #   
  #   Pre-condition: The results page needs submitted answers in order to modify itself.
  #   
  #   Post-condition: The index file of the Results model has access to all submitted answers.
  def index
    @part1s = Part1.all
    @part2s = Part2.all
    @part3s = Part3.all
    @part4s = Part4.all
    @part5s = Part5.all
  end
end
