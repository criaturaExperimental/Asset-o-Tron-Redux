json.array!(@my_assets) do |my_asset|
  json.extract! my_asset, :id
  json.url my_asset_url(my_asset, format: :json)
end
