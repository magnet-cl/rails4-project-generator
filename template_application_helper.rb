module ApplicationHelper

  # Collapsible div using bootstrap collapse
  def collapse(id, initially_open=false, &block)
    content_tag(:div, id: id, class: (initially_open ?
      'collapse in' : 'collapse'))do
      capture(&block)
    end
  end

  # Collapse trigger button for bootstrap collapse
  def collapse_button(id, klass='', &block)
    content_tag(:a, class: klass, 'data-toggle' => 'collapse',
      href: '#' + id) do
      capture(&block)
    end
  end

  # Fontawesome helper
  def icon(name)
    return content_tag(:i, '', class: ('fa fa-' + name.to_s))
  end

  # Arguments for form_for, create and update use different paths
  def shallow_args(parent, child)
    child.try(:new_record?) ? [parent, child] : child
  end

  # Translates model name, accepts the model count or :plural and :singular
  def tm(model, count=1)
    if count == :plural
      count = 2
    elsif count == :singular
      count = 1
    end
    model.model_name.human(count: count)
  end

  # Translates a model attribute
  def ta(model, attribute)
    model.human_attribute_name(attribute)
  end

end
