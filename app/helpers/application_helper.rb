module ApplicationHelper
  def error_messages(obj)
    render partial: 'application/error_msg', locals: {object: obj}
  end
end
