require 'spec_helper'

feature 'Visitor starts game' do
  scenario 'by visiting root' do
    visit root_path

    expect(page).to have_content('New Hive')
  end
end

