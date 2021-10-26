if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_track_it_backend", domain: "guarded-brushlands-05784.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_track_it_backend"
end
