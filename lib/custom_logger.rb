module CustomLogger
  # Logger
  class LogInJson < Logger::Formatter
    def self.call(severity, time, _program_name, message)
      "#{time} #{severity}: #{message}"
      # JSON.pretty_generate(
      #   {
      #     time: "#{time}\n",
      #     severity: "#{severity}\n",
      #     message: "#{message} from #{program_name}"
      #   }
      # )
    end
  end
end
