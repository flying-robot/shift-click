# frozen_string_literal: true

require 'active_support'
require 'active_support/core_ext/numeric'
require 'active_support/inflector'
require 'digest'
require 'interactor'
require 'pry'
require 'securerandom'
require 'wisper'

require_relative '../app/models/user'
require_relative '../app/controllers/login_controller'

binding.pry
