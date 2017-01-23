class Employer < ActiveRecord::Base
    has_attached_file( :logo,
      {
        url: "/system/:id/:class/:hash.:extension",
        hash_secret: "longSecretString"
      }
    )
  # validates_attachment :logo, presence: true
  do_not_validate_attachment_file_type :logo
end
