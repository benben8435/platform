module ApplicationHelper
  def rent_authorized? (user, rent)
    if user == rent.user || user.authority > 0
      true
    else
      false
    end
  end
end
