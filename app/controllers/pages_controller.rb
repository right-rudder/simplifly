class PagesController < ApplicationController
  def home
  end

  def airline_pilot_courses
    @book_download = BookDownload.new
  end

  def pilot_programs
    @book_download = BookDownload.new
  end

  def aircraft_rental
  end
  
  def fixed_wing
  end

  def rotary_wing
  end

  def airplane_training
    @book_download = BookDownload.new
  end

  def helicopter_training
    @book_download = BookDownload.new
  end

  def private_pilot
  end

  def about_us
  end

  def advanced_training
  end

  def our_team
  end

  def pilot_resources
  end

  def careers
  end
end
