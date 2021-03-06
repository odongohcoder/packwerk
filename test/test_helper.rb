# typed: ignore
# frozen_string_literal: true

ENV["RAILS_ENV"] = "test"

$LOAD_PATH.unshift(File.expand_path("../../lib", __FILE__))
require "constant_resolver"
require "packwerk"

require "minitest/autorun"
require "support/test_macro"
require "support/test_assertions"

require "mocha/minitest"

ROOT = Pathname.new(__dir__).join("..").expand_path

Minitest::Test.extend(TestMacro)
Minitest::Test.include(TestAssertions)
