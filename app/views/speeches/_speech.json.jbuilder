json.extract! speech, :id, :CodigoParlamentar, :CodigoPronunciamento, :Data, :UrlTexto, :TextoCompleto, :senator_id, :created_at, :updated_at
json.url speech_url(speech, format: :json)
