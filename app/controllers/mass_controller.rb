class MassController < ApplicationController
  def index
    @body_index = Story.new
  end
end
