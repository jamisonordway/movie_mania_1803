require 'rails_helper'

describe Movie, type: :model do
  describe "relationships" do
    it {should belong_to(:director)}
    it {should have_many(:actors).through(:actor_movies)}
    it {should have_many(:genres).through(:genre_movies)}
  end
end
