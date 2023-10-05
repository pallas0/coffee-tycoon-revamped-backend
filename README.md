# Coffee Tycoon Game Backend

Welcome to the Coffee Tycoon Game! This is the backend repository for the game, built with React, Sinatra, and PostgreSQL. This project was developed collaboratively with [Jack Pena (jpena925)](https://github.com/jpena925), and [Rebekah Zhou (rebekah-zhou)](https://github.com/rebekah-zhou). In this game, you will become the tycoon you always wanted to be, managing your own coffee shop and striving to maximize your profits. 

## Gameplay Screenshots
<img width="1346" alt="Screenshot 2023-07-26 at 1 05 21 PM" src="https://github.com/pallas0/coffee-tycoon-revamped-backend/assets/52135849/5ecc8cee-de28-4705-8a67-6a040dce0dac">
<img width="1298" alt="Screenshot 2023-07-26 at 1 06 00 PM" src="https://github.com/pallas0/coffee-tycoon-revamped-backend/assets/52135849/274a04ac-61c7-4c27-a2ea-d360339c49f1">
<img width="1401" alt="Screenshot 2023-07-26 at 1 07 27 PM" src="https://github.com/pallas0/coffee-tycoon-revamped-backend/assets/52135849/126df4df-7a5e-48c8-ad60-57a2fa6da054">

## Prerequisites

Before running the backend, please make sure you have the following installed:

- Ruby: The backend is built using Ruby, so you need to have Ruby installed on your machine.

- Bundler: Bundler is used to manage Ruby gems. You can install it by running `gem install bundler`.

- PostgreSQL: Make sure you have PostgreSQL installed and running on your machine. You'll need it to set up the database for the game.

## Getting Started

To get started with the Coffee Tycoon Game backend, follow these steps:

1. Clone the repository: If you haven't already, clone this repository to your local machine.

2. Install dependencies: Navigate to the project directory and run `bundle install` to install all the required gems.

3. Set up the database: Before running the server, you need to set up the PostgreSQL database. Make sure your PostgreSQL server is running, then run `bundle exec rake db:create` to create the necessary database.

4. Migrate the database: Run `bundle exec rake db:migrate` to apply the database migrations.

5. Start the server: Once the database is set up, you can start the backend server by running `bundle exec rake server`. The server will run on `http://localhost:9292`.



## Deployed Project

The frontend of the Coffee Tycoon Game is deployed and can be accessed [here](https://coffee-tycoon-revamped-frontend.vercel.app/). The frontend is built with React and hosted on Vercel.

## How to Play

1. Upon starting the game, you'll have a starting budget of $40.

2. Your goal is to maximize your profits by selecting which drinks to add to your coffee shop's menu.

3. Each day, 20 customers will visit your coffee shop. You need to determine which drinks to offer to meet their demands.

4. Consider the weather, as it may affect customers' order selections.

5. At the end of each day, you'll receive a breakdown of your successes and failures.

6. You'll have the chance to edit your menu and prepare for the next day.

7. Your ultimate goal is to become a Coffee Tycoon and manage a highly profitable coffee shop!

## Contributing

If you'd like to contribute to the Coffee Tycoon Game, feel free to fork this repository and submit your pull requests. We welcome any improvements, bug fixes, or new features to make the game even more enjoyable.

## License

The Coffee Tycoon Game is open-source and licensed under the [MIT License](link-to-license-file).

Enjoy the game and have fun becoming a Coffee Tycoon! ☕️
