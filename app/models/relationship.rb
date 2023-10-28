class Relationship < ApplicationRecord
    belongs_to :follower, class_name: "User"
    belongs_to :followed, class_name: "User"

    MOVIE = 0
    MUSIC = 1

    def self.followed_ids_for_movie
        debugger
        "SELECT followed_id FROM relationships WHERE follower_id = :user_id AND interest = #{MOVIE}"
    end
end