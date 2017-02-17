require "bundler/dependency_graph/version"

module Bundler
  module DependencyGraph
    class GraphBuilder
      Bundler::Plugin::API.command "graph", self

      def exec(command, args)
        puts "Currently unimplented; use `bundle viz` to generate your graphs for now."
      end
    end
  end
end
