FROM ruby:2.3

EXPOSE 3000

# suggested rails build from https://hub.docker.com/_/rails/
# http://guides.rubyonrails.org/getting_started.html#creating-the-blog-application

# RUN apt-get update \
#     && apt-get install -y --no-install-recommends \
#         postgresql-client \
#     && rm -rf /var/lib/apt/lists/*

RUN gem install rails

RUN apt-get install bash

# RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - sudo apt-get install -y nodejs
# RUN curl -sL https://deb.nodesource.com/setup_6.x | apt-get install -y nodejs

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

WORKDIR /usr/src/app
# COPY Gemfile* ./
# RUN bundle install
# COPY . .

# CMD ["rails", "server", "-b", "0.0.0.0"]

