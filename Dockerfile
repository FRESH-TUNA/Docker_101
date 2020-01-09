# 루비 베이스 이미지
FROM gomicorp/rails:6.0.2.1
WORKDIR /app

#gem 설치
COPY Gemfile ./
RUN bundle install && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem
