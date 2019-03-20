module ToysHelper
  def toymaker_link(toy)
    if toy.toymaker
      link_to toy.toymaker.brand, toymaker_path(toy.toymaker)
    else
      link_to 'Add a Toymaker', toy_edit_path(toy)
    end
  end

  def title_message(toys)
    # byebug
    if toys.length < 5
      'This toybox has so few toys!'
    else
      'This toybox has a lot of toys!'
    end
  end
end
