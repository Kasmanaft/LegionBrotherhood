module ApplicationHelper
  def photo_thumb photo, form
    unless(photo.nil? || photo.identifier.nil?)
      form.template.cl_image_tag(photo.identifier, :width => 60, :height => 60, :crop => :thumb)
    end
  end

  def photo_preview photo, face=false
    unless(photo.nil? || photo.identifier.nil?)
      cl_image_tag(photo.identifier, :width => 200, :height => 200, :crop => :thumb)
    else
      image_tag(photo, :width => 200, :height => 200)
    end
  end

end
