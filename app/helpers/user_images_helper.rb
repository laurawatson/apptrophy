module UserImagesHelper
  def image_classname(view_count)
    if view_count > 2 && view_count <= 4
      classname = "low-image"
    elsif view_count >= 5 && view_count <= 6
      classname = "low-med-image"
    elsif view_count >= 7 && view_count <= 9
      classname = "high-med-image"
    elsif view_count >= 10
      classname = "high-image"
    end
    "#{classname}" unless classname.nil?
  end
end
