require "rails_helper"

RSpec.describe Idea do
    it "has a name" do
        idea = Idea.create!(name: "My Awesome Idea Name")
        second_idea = Idea.create!(name: "My Second Idea Name")
        expect(second_idea.name).to eq("My Second Idea Name")
    end

    it "has a description" do
        idea = Idea.create(name: "Idea with description", description: "This is a test description.")
        expect(idea.description).to eq("This is a test description.")
    end
end