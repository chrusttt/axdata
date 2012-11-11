module ApplicationHelper

def link_to_add_fields(name, f, type)
  new_object = f.object.send "build_#{type}"
  id = "new_#{type}"
  fields = f.send("#{type}_fields", new_object, child_index: id) do |builder|
    render(type.to_s + "_fields", f: builder)
  end
  link_to(name, '#', class: "add_fields btn btn-info", data: {id: id, fields: fields.gsub("\n", "")})
end

def semantic_search_form_for(*args, &block)
  opts = args.extract_options!
  opts[:builder] = FormtasticBootstrap::FormBuilder

  # add the default form class
  # (works whether existing class is a String like
  # "foo bar" or an Array like ["foo", "bar"])
  opts[:html] ||= {}
  opts[:html][:class] ||= []
  opts[:html][:class] << ' ' if opts[:html][:class].is_a? String
  opts[:html][:class] << Formtastic::Helpers::FormHelper.default_form_class

  search_form_for(*args, opts, &block)
end
end