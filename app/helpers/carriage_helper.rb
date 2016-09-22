# Returns a dynamic path based on the provided parameters
module CarriageHelper
  def sti_carriage_path(type="carriage", carriage=nil, action=nil)
    send "#{format_sti(action, type, carriage)}_path", carriage
  end

  def format_sti(action, type, carriage)
    action || carriage ? "#{format_action(action)}#{type.underscore}" : type.underscore.pluralize.to_s
  end

  def format_action(action)
    action ? "#{action}_" : ""
  end
end
