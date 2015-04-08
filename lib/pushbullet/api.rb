module Pushbullet
  module API
    def devices
      get('/v2/devices')
    end

    def push_note(device_iden, title, body)
      push :note, device_iden, title: title, body: body
    end

    def push_link(device_iden, title, url)
      push :link, device_iden, title: title, url: url
    end

    def push_address(device_iden, title, address)
      push :address, device_iden, title: title, address: address
    end

    def push_list(device_iden, title, items)
      push :list, device_iden, title: title, items: items
    end

    def push_file(device_iden, file_path)
      mime_type = MIME::Types.type_for(file_path).first.to_s
      io        = Faraday::UploadIO.new(file_path, mime_type)

      push :file, device_iden, file: io
    end

    private

    def push(type, device_iden, payload)
      post '/v2/pushes', payload.merge(device_iden: device_iden, type: type)
    end
  end
end
