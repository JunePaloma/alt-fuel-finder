require 'rails_helper'

describe "feature" do
 describe "As a user, when I visit the root path" do
   describe "I see a form to fill in with a zip code and a button to locate" do
     describe "filling in the form and clicking on locate generates the route /search with my search params in the URL" do
       describe "and takes me to a page displaying a limit of 10  electric and propane stations within 6 miles" do
         it 'for each stations, I see the name, address, fuel type, distace, and access times' do
          visit "/"
          within(".search-field") do
            fill_in("q", :with => "80203", :visible => false)
          end
          click_on("Locate")
    expect(path).to eq ("/search")
    # with parameters visible in the url
    expect(page).to have_css('.station', :count => 10)
    #within 6 miles sorted by distance
    #the stations should be limited to Electric and Propane
    # expect(page).to have_css('#name', :count => 10)
    # expect(page).to have_css('#fuel types', :count => 10)
    # expect(page).to have_css('#distance', :count => 10)
    # expect(page).to have_css('#access times', :count => 10)
          end
        end
      end
    end
  end
end
