# Devise Authentication API

This repository is a **Rails 7.1 API-only** starter kit that shows how to build a token-based authentication layer using **Devise** and **JWT**.

## 🛠 Tech Stack

| Layer      | Choice                    |
| ---------- | ------------------------- |
| Framework  | Rails 7.1 (API-only mode) |
| Auth       | Devise + devise-jwt       |
| DB         | PostgreSQL                |
| Serializer | jsonapi-serializer        |

---

## 🚀 Quick start (local)

```bash
# Clone & move in
$ git clone https://github.com/your-username/devise-authentication.git
$ cd devise-authentication

# Install gems
$ bundle install

# Create DBs & run migrations
$ rails db:create db:migrate



# Run the server
$ bin/rails server # => http://localhost:3001
```

### Environment variables

The ONLY required env var is the JWT secret Devise will use to sign tokens.
Add it to `config/credentials.yml.enc` (preferred) or export before boot:

```bash
bundle exec rails secret
```

---

## 🔌 API Endpoints

| Method | Path      | Description               | Headers / Body                  |
| ------ | --------- | ------------------------- | ------------------------------- |
| POST   | `/signup` | Create a new user         | ``                              |
| POST   | `/login`  | Obtain a JWT              | `{ email, password }`           |
| DELETE | `/logout` | Revoke the current JWT    | `Authorization: Bearer <token>` |
