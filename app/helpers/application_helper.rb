module ApplicationHelper
  def photo_preview photo, form
    unless(photo.nil? || photo.identifier.nil?)
      form.template.cl_image_tag(photo.identifier, :width => 60, :height => 60, :crop => :thumb, :gravity=>:face)
    end
  end
end
