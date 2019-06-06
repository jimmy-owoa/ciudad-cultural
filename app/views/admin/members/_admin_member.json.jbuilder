json.extract! admin_member, :id, :name, :lastname, :email, :summary, :phone, :created_at, :updated_at
json.url admin_member_url(admin_member, format: :json)
