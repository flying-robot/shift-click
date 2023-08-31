# frozen_string_literal: true

require 'active_support'
require 'active_support/core_ext/numeric'
require 'active_support/inflector'
require 'digest'
require 'interactor'
require 'ougai'
require 'pry'
require 'securerandom'
require 'wisper'

require_relative '../app/models/user'
require_relative '../app/services/account/authenticate_credentials'
require_relative '../app/services/account/send_reactivation_email'
require_relative '../app/services/account/send_welcome_back_email'
require_relative '../app/services/account/login_user'
require_relative '../app/services/audit/event_logger'
require_relative '../app/controllers/login_controller'

Wisper.subscribe(EventLogger.new, with: :log)

binding.pry
