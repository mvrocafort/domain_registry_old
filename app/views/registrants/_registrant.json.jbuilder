json.extract! registrant, :id, :contact_handle, :first_name, :last_name, :organization, :contact_number, :address, :created_at, :updated_at
json.url registrant_url(registrant, format: :json)
