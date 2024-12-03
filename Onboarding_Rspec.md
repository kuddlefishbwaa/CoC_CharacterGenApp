# Testing Format
Over the course of the project testing is going to be formated with Rspec for doing basic testing and unit testing.

## Gem setup
When adding Rspec to a fresh project we will want to follow a couple of steps that gets the dependince of Rspec into the gem file.
```
rails new [PROJECT NAME]
cd [PROJECT NAEM]
git add -A
git commit -m "initial commit"

rails db:create
rails s
```

Once the project is setup and we are in the folder where the project is held we can run this command.
```
git checkout -b rspec
```

In your gem file you will now see several things added...
```
group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
end
```

After that is confirmed you now need to bundle install to attach the gems to the project.
```
bundle install
rails g rspec:install
```


## Test Setup
To generate tests for a model for uniti testing you want to generate them with...

- For Model testing.
```
rails generate rspec:model [MODEL NAME]
``` 
- For Unit testing.
```
rails generate rspec:system [MODEL NAME]
```
Once those are generated for a model you can check these files `PLACE HOLDER` to insure that the tests are updated.

## Running Tests
To run the Rspec testing run this command...
```
rspec spec/model/[MODEL NAME]_spec.rb --format documentation
```

## Written test format
These are some examples of how to write testing for Rspec and Rails.

Rspec - Test
```
RSpec.describe "Students", type: :request do
    describe "GET /students" do
        it "returns a successful response" do
            get students_path
            expect(response).to have_http_status(:ok)
        end
    end
end
```
Test `Students` resource, focusing on HTTP requests organizes all tests related to the `GET` /students. Individual test for success response  `GET` request to the `/students` path (the index action of the StudentsController). Tests that the `GET` `/students` request returns an `HTTP 200 OK`


 
