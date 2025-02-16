##### Prerequisites

The setups steps expect following tools installed on the system.

- Github
- Ruby [3.0.2]
- Rails [7.1.5]

##### 1. Check out the repository

```bash
git clone git@github.com:APAbrahamF/ContalinkInvoices-API.git
```

##### 2. Create .env file

Copy the sample .env file and edit the database configuration as required.

```bash
cp .env.sample .env
```

##### 3. Create and setup the database

Run the following commands to create and setup the database.

```ruby
bundle exec rake db:create
bundle exec rake db:setup
```

##### 4. Start the Rails server

You can start the rails server using the command given below.

```ruby
bundle exec rails s
```

And now you can visit the site with the URL http://localhost:3000
