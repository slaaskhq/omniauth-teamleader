# Omniauth::Teamleader

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-teamleader'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-teamleader

## Usage

**Basic Usage**

    use OmniAuth::Builder do
      provider :teamleader, ENV['TEAMLEADER_KEY'], ENV['TEAMLEADER_SECRET']
    end
