json.extract! senator, :id, :CodigoParlamentar, :Nome, :UrlFoto, :UrlPagina, :Email, :SiglaPartido, :UF, :created_at, :updated_at
json.url senator_url(senator, format: :json)
