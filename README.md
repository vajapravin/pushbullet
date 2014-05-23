# Pushbullet
PushBullet's API enables developers to push to devices that have installed the PushBullet Android app. Authentication is provided by a user's API key, found in their Account Settings. By using an API key, users can allow third party software built on this API without needing to provide their Google account and password.

## Installation
	gem 'pushbullet'

#### Setup Client
copy following content and paste into config/initializers/pushbullet.rb
	
	PUSHBULLET_API_KEY = 'YOUR_PUSHBULLET_KEY_HERE'

#### Usage
	client = Pushbullet::Client.new(PUSHBULLET_API_KEY)

#### Push to own device

You can send following list:
- note
- link
- address
- list
- file

```ruby
# get json about own device list
client.devices

client.push_note(DEVICE_ID, 'title', 'message')
client.push_file(DEVICE_ID, 'File Name', 'path/to/file')
```

#### :secret: Push to Friend's device :secret:

You can send following list:
- note
- link
- address
- list

```ruby
# get json about friend list of Pushbullet
client.contacts
	
client.push_note_to('a@b.c', 'title', 'full message')
```


## Contributing

1. Fork it ( http://github.com/vajapravin/pushbullet/fork )
2. Create your feature branch (`git checkout -b my-pushbullet`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-pushbullet`)
5. Create new Pull Request

Don't hesitate to write problems [vajapravin23@gmail.com]