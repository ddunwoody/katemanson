# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_katemanson_session',
  :secret      => 'be0e2eebc22db54f38fa5f843528e8abc72b703b30c63a05435efa97c6dbf2c0ae527b64ab0764a7cca20ce4ddae49a7dd18b68fb222ab74bce2558636f6720b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
