### RSpec Integration ###

RSpec Integration adds an integration example group to rspec-rails that incorporates capybara for integration testing.

### Installation ###

Add this to your gemfile.

`gem 'rspec-integration'`

It will automatically include rspec-rails and capybara so you do not need any additional inclusions.

Add the require in `spec/support/integration.rb`

`require 'rspec/rails/example/integration_example_group.rb'`

Create a folder for integration specs.

`spec/integration`

Start writing integration specs with Capybara!

### Usage ###

Example file: `spec/integration/user_signs_in_spec.rb`

`
describe "User Signs In" do

  context "As a guest on the sign in page"

    let!(:user) { Fabricate(:confirmed_user, :email => "joe@example.com") }

    before do
      visit new_user_session_path
    end

    context "Filling in the form with valid credentials" do

      before do
        fill_in "Email", :with => "joe@example.com"
        fill_in "Password", :with => "password"
        click_button "Submit"
      end

      it "Logs me in" do
        page.should have_content("Signed in successfully")
      end

    end

    context "Filling in the form with invalid credentials" do

      before do
        fill_in "Email", :with => "bad email"
        fill_in "Password", :with => "bad password"
        click_button "Submit"
      end

      it "Logs me in" do
        page.should have_content("Unable to sign in")
      end

    end

  end

end
`
