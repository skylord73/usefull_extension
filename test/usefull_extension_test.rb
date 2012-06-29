require 'test_helper'

class UsefullExtensionTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, UsefullExtension
  end
  
  test "pdf mime type" do
    assert_equal :pdf, Mime::PDF.to_sym
    assert_equal "application/pdf", Mime::PDF.to_s
  end
end
