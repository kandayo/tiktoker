module TikToker
  struct SignedRequest
    include JSON::Serializable

    @[JSON::Field(key: "signed_at", converter: Time::EpochMillisConverter)]
    getter signed_at : Time
    getter signature : String
    getter verify_fp : String
    getter signed_url : String
    getter navigator : SignedRequest::Navigator

    struct Navigator
      include JSON::Serializable

      getter user_agent : String
      getter screen_height : Int32
      getter screen_width : Int32
      getter browser_language : String
      getter browser_platform : String
      getter browser_name : String
      getter browser_version : String
    end
  end
end
