class UserTokenController < Knock::AuthTokenController
  # You might be wondering why we need to skip the authenticity verification again? We just put this in the application controller so why wouldn't our user token controller just inherit the behaviour?
  # Look closely at the class for UserTokenController. It actually inherits from Knock::AuthTokenController and not the Application Controller so we do need to manually add this behaviour here.
  skip_before_action :verify_aithenticity_token
end
