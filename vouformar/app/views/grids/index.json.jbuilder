json.array!(@grids) do |grid|
  json.extract! grid, :id, :discipline_id
  json.url grid_url(grid, format: :json)
end
