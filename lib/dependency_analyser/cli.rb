require 'thor'
module DependencyAnalyser
  class CLI < Thor
    desc 'execute', 'Execute the main program'
    method_option 'version',
                  aliases: '-v',
                  desc: 'Display version number'
    def execute
      opts = options.symbolize_keys
      if opts[:version]
        puts "You are using DependencyAnalyser version #{DependencyAnalyser::VERSION}"
        exit
      end
      puts "Your options #{opts}"
      process(opts)
    end

    desc 'usage', 'Display help screen'
    def usage
      puts <<-EOS
TODO: Add your sample usage here
      EOS
    end

    default_task :usage

    private

    def process(opts = {})
      puts "Your options #{opts}"
    end
  end
end
