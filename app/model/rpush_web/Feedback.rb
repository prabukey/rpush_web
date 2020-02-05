module RpushWeb
  class Feedback < Rpush::Apns::Feedback

    # Associations:
    belongs_to :device, polymorphic: true, foreign_key: "token"


  end
end
