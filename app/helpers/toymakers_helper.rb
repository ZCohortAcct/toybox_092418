module ToymakersHelper
  def opening_year(toymaker)
    "This company started in #{Time.now.year - toymaker.age} year, and is #{toymaker.age}  years old!"
  end
end
