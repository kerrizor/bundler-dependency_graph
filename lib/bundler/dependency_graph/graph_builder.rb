module Bundler
  module DependencyGraph
    class GraphBuilder
      Bundler::Plugin::API.command "graph", self

      def exec(command, args)
        puts "Currently unimplemented; use `bundle viz` to generate your graphs for now."

        require "graphviz"

        # Temporarily assign default values to incoming args. In Bundler, these
        #   are handled by Thor, but we're not entirely sure how the
        #   Bundler::Plugin::API passes them (or doesn't) to plugins

        options = {}
        options[:file]         = "gem_graph"
        options[:format]       = "png"
        options[:requirements] = false
        options[:version]      = false
        options[:without]      = []

        options[:without] = options[:without].join(":").tr(" ", ":").split(":")
        output_file = File.expand_path(options[:file])

        graph = Graph.new(Bundler.load, output_file, options[:version], options[:requirements], options[:format], options[:without])
        graph.viz
      rescue LoadError => e
        Bundler.ui.error e.inspect
        Bundler.ui.warn "Make sure you have the graphviz ruby gem. You can install it with:"
        Bundler.ui.warn "`gem install ruby-graphviz`"
      rescue StandardError => e
        raise unless e.message =~ /GraphViz not installed or dot not in PATH/
        Bundler.ui.error e.message
        Bundler.ui.warn "Please install GraphViz. On a Mac with Homebrew, you can run `brew install graphviz`."
      end
    end
  end
end
