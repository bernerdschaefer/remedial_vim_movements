class Node < Capybara::Node
  # @api capybara
  # @param [String] name attribute name
  # @return [String] the attribute value
  def [](name)
    name = name.to_s
    case name
    when 'checked'
      node.checked?
    else
      node[name.to_s]
    end
  end

  # Trigger an event on the element.
  #
  # @api capybara
  # @param [String] event the event to trigger
  def trigger(event)
    node.fire_event(event.to_s)
  end
end
