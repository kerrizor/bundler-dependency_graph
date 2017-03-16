require "bundler/dependency_graph"
Bundler::Plugin::API.command "graph", Bundler::DependencyGraph::GraphBuilder
