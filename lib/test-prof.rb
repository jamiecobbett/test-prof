# frozen_string_literal: true

require "test_prof"

# For RuboCop plugin
# This file (test-prof.rb with hyphen) is only loaded when RuboCop loads
# test-prof as a plugin. We need to set up the autoload unconditionally here
# because RuboCop's plugin loader will try to access RuboCop::TestProf::Plugin
# from gemspec metadata before the RuboCop constant is fully defined.
# Since this file is only loaded in RuboCop plugin context, it's safe to
# define the RuboCop module here.
module RuboCop
  autoload :TestProf, "rubocop/test_prof"
end
