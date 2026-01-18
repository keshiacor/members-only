# Members Only

## Description

Members Only is a Rails application built as part of The Odin Project curriculum to practice authentication with Devise. Users can sign up, log in, and create simple blog-style posts. Signed-in members can see who authored each post, while visitors who are not logged in see anonymous posts (author details are hidden).

The interface uses a retro-inspired color palette (browns, beige, and light pink) and includes a clean top navigation bar, styled post cards, and accessible form validation.

## 🌟 Demo

- Coming soon – once deployed, a live demo link will be added here.

## Getting Started

- Clone the repository

```bash
git clone https://github.com/keshiacor/members-only.git
```

- Navigate into the project directory

```bash
cd members-only
```

- Install Ruby gems

```bash
bundle install
```

- Set up the database (create, migrate, and seed if needed)

```bash
bin/rails db:prepare
```

- Start the Rails server

```bash
bin/rails server
```

- Open the app in your browser

Visit `http://localhost:3000` and sign up for an account to start creating posts.

## Technologies

- Ruby on Rails 8.1 – Web framework used to build the application.
- Devise – Authentication library handling sign up, login, and logout.
- SQLite3 – Default development and test database.
- Turbo & Stimulus – Hotwire tools used by modern Rails apps.
- CSS – Custom, handcrafted styling for the retro theme and forms.

## Features

- Users can sign up for an account and log in securely via Devise.
- Logged-in users can create new posts with a title and description.
- Members see which user authored each post on the index page.
- Visitors who are not logged in see anonymous posts (no author name).
- Retro-themed UI with styled navigation bar and post cards.
- Sign in, sign up, and new post forms share a consistent layout and styling.
- Inline, accessible form validation messages are shown directly under each field.
- Flash messages (e.g., successful login) automatically fade out after a short delay.

## Important Dependencies

- Ruby (compatible with Rails 8.1)
- Rails `~> 8.1.1`
- Devise `~> 4.9`
- sqlite3 `>= 2.1`
- propshaft
- turbo-rails
- stimulus-rails

<div>
	<p align="left">
		<br />
		<h3>Want to help me make this app better?</h3>
		<a href="https://github.com/keshiacor/members-only/issues/new?template=feature_request.md">Request Feature</a>
		<br />
		<a href="https://github.com/keshiacor/members-only/issues/new?template=bug_report.md">Report Bug</a>
	</p>
</div>
