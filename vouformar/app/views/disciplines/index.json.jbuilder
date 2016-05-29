json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :code, :name, :description, :credits, :prerequisites
  json.url discipline_url(discipline, format: :json)
end
