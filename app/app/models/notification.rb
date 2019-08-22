class Notification < ApplicationRecord
end

# Notification.where('created_at >= :ten_seconds_ago', :ten_seconds_ago => Time.now - 10.seconds)
