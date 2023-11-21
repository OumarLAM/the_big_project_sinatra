# Sinatra Gossip Project

## Overview

The Sinatra Gossip Project is a simple web application for managing and displaying gossip entries. Users can view a list of gossips, create new gossips, and click on each gossip to view individual pages.

## Author 

- [Oumar LAM](https://github.com/OumarLAM)

## Table of Contents

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Sample Gossips](#sample-gossips)
- [Additional Information](#additional-information)

## Project Structure

The project consists of the following components:

- **`db` folder:**
  - Contains the `gossip.csv` file with sample gossip data.

- **`lib` folder:**
  - Contains the main application logic.
    - `controller.rb`: Defines Sinatra routes and actions.
    - `gossip.rb`: Defines the Gossip class and related methods.

- **`views` folder:**
  - Contains the ERB templates for rendering HTML pages.
    - `index.erb`: Displays a list of gossips with links to individual pages.
    - `new_gossip.erb`: Provides a form for creating new gossips.
    - `show.erb`: Displays details of a specific gossip.

- **`config.ru` file:**
  - Configures and runs the Sinatra application.
  - Requires necessary dependencies and sets up the application.

- **`Gemfile`:**
  - Specifies the gems and dependencies required for the project.

## Usage

### Installation

1. Clone the repository to your local machine:

    ```bash
   git clone https://github.com/OumarLAM/the_big_project_sinatra.git
    ```

### Install dependencies and Run
1. Install dependencies by running:

    ```bash
    bundle install
    ```

2. Start the Sinatra application:

    ```bash
    bundle exec rackup
    ```

    You can also specify a port : Example : 4567 by doing : 

    ```bash
    rackup -p 4567
    ```

3. Access the application in your web browser at [http://localhost:4567/](http://localhost:4567/).

4. Explore the following routes:

   - `/`: Displays a list of gossips.
   - `/gossips/new/`: Provides a form for creating new gossips.
   - `/gossips/:id/`: Displays details of a specific gossip.

## Sample Gossips

The `gossip.csv` file in the `db` folder contains sample gossip data for testing purposes.


## Contributing

Contributions are welcome!!!

If you have ideas for improvements or bug fixes, feel free to make a pull request.

Enjoy creating beautiful gradients with the CSS Background Generator! 😊
