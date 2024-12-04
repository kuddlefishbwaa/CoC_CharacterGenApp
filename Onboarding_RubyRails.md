
# Ruby on Rails Basics

This guide outlines the fundamental steps for starting with Ruby on Rails, including setting up a project and running the server.

## Setting Up a Rails Project

1. **Create a New Rails Project**
   To start a new project, run the following command:
   ```bash
   rails new [PROJECT_NAME]
   ```

2. **Navigate to the Project Directory**
   Move into the newly created project folder:
   ```bash
   cd [PROJECT_NAME]
   ```

3. **Initialize Git for Version Control**
   Initialize and make the first commit:
   ```bash
   git init
   git add -A
   git commit -m "Initial commit"
   ```

4. **Set Up the Database**
   Create the database for the project:
   ```bash
   rails db:create
   ```

## Running the Rails Server

To test your application locally, you will need to start the Rails server.

1. **Default Server**
   Run the following command to start the server:
   ```bash
   rails s
   ```
   This starts the server on `localhost:3000`.

2. **Bind to All Network Interfaces**
   To make the server accessible on your local network, bind it to `0.0.0.0`:
   ```bash
   rails s -b 0.0.0.0
   ```
   This allows you to access the server using your machine's IP address.

3. **Customizing the Port**
   If you need to run the server on a different port, specify it with the `-p` flag:
   ```bash
   rails s -b 0.0.0.0 -p 8080
   ```
   This starts the server on `0.0.0.0:8080`.

## Rails Directory Structure

When you create a new Rails project, the following directories and files are essential:

- **`app/`**: Contains application code (models, views, controllers).
- **`config/`**: Includes configuration files and environment settings.
- **`db/`**: Manages the database schema and migrations.
- **`public/`**: Stores static files, such as HTML or assets.
- **`Gemfile`**: Lists project dependencies managed by Bundler.

## Additional Tips

- **Stopping the Server**: Use `Ctrl + C` in the terminal to stop the running Rails server.
- **Testing Server Connectivity**: Open your web browser and navigate to the server URL, e.g., `http://0.0.0.0:3000`.

This document provides a quick overview of basic Rails commands and server management. For further customization and advanced features, refer to the [Rails Guides](https://guides.rubyonrails.org/).
