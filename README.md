git clone
bundle
edit config/initializers/rom.rb and setup db
bundle exec rake db:migrate
bundle exec rails console
run: ROM.env.relations[:users].command(:create).call(name: 'a', id: 2)

irb(main):001:0> ROM.env.relations[:users].command(:create).call(name: 'a', id: 2)
Traceback (most recent call last):
        1: from (irb):1
Dry::Types::MissingKeyError (:last_seen_at is missing in Hash input)
