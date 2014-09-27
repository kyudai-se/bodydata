json.array!(@bodydata) do |bodydatum|
  json.extract! bodydatum, :weight, :, :height, :
  json.url bodydatum_url(bodydatum, format: :json)
end