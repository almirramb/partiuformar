json.array!(@disciplines) do |discipline|
  json.extract! discipline, :id, :code, :name, :description, :credits, :classroom, :period, :horary, :local, :prerequisites
  json.url discipline_url(discipline, format: :json)
end
