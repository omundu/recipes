# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_recipes_session',
  :secret      => 'ef2fef1fd25d3d53c9ecf3e35e895cd4683cd9ef4ae7d275e5a6cd88ce6430694745420b1f818e32246bffcfd16c720cbf0af38821aa942c43c3874a31a412ae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
