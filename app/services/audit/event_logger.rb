# frozen_string_literal: true

class EventLogger
  def initialize
    @logger          = Ougai::Logger.new($stdout)
    logger.formatter = Ougai::Formatters::Readable.new
  end

  def log(event)
    logger.info(event.delete(:message), event)
  end

  private

  attr_reader :logger
end
