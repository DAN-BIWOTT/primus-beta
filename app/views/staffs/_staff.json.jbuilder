json.extract! staff, :id, :firstName, :lastName, :email, :joinDate, :designation, :department, :gender, :phoneNumber, :birthDate, :address, :image, :education, :created_at, :updated_at
json.url staff_url(staff, format: :json)
