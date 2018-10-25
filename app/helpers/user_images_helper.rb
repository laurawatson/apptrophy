module UserImagesHelper
  def image_classname(view_count)
    if view_count < 2
      classname = ""
    elsif view_count > 2 && view_count <= 6
      classname = "low-image"
    elsif view_count >= 6 && view_count <= 10
      classname = "low-med-image"
    elsif view_count >= 11 && view_count <= 17
      classname = "med-low-image "
    elsif view_count >= 18 && view_count <= 21
      classname = "med-image"
    elsif view_count >= 22 && view_count <= 28
      classname = "med-high-image"
    elsif view_count >= 29 && view_count <= 35
      classname = "high-med-image"
    elsif view_count >= 36
      classname = "high-image"
    end
    "#{classname}" unless classname.nil?
  end
end
