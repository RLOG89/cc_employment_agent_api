class Document < ActiveRecord::Base
  has_attached_file :upload,
    :path => ":rails_root/uploads/:class/:id/:basename.:extension"
end
