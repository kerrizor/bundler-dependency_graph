require "bundler/dependency_graph/version"

module Bundler
  module DependencyGraph
    class GraphBuilder
      Bundler::Plugin::API.command "graph", self

      def exec(command, args)
        puts "Hi Kerri & Whitney!"
      end
    end
  end
end
