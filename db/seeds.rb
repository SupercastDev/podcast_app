# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create sample podcast episodes
episodes = [
  {
    title: "Getting Started with Rails",
    description: "Learn the basics of Ruby on Rails framework and how to build your first application.",
    published_at: 2.days.ago,
    duration: 1800, # 30 minutes in seconds
    audio_url: "https://example.com/episodes/rails-basics.mp3"
  },
  {
    title: "Advanced Rails Techniques",
    description: "Deep dive into advanced Rails features including ActiveRecord, ActionCable, and Hotwire.",
    published_at: 1.day.ago,
    duration: 2400, # 40 minutes in seconds
    audio_url: "https://example.com/episodes/advanced-rails.mp3"
  },
  {
    title: "Rails Testing Strategies",
    description: "Comprehensive guide to testing Rails applications using RSpec and Capybara.",
    published_at: Time.current,
    duration: 1500, # 25 minutes in seconds
    audio_url: "https://example.com/episodes/rails-testing.mp3"
  }
]

puts "Creating sample episodes..."
episodes.each do |episode_data|
  Episode.create!(episode_data)
end
puts "Created #{Episode.count} episodes"
