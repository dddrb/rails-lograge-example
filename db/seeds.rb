User.create_with(username: :foo).find_or_create_by(username: :foo)
User.create_with(username: :bar).find_or_create_by(username: :bar)
