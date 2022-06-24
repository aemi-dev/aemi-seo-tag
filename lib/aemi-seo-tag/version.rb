# frozen_string_literal: true

# Prevent bundler errors
module Liquid; class Tag; end; end

module Jekyll
  class AemiSeoTag < Liquid::Tag
    VERSION = "0.0.5"
  end
end
