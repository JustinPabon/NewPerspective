class ResultsController < ApplicationController
  def index
    @part1s = Part1.all
    @part2s = Part2.all
    @part3s = Part3.all
    @part4s = Part4.all
    @part5s = Part5.all
  end
end
