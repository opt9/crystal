#!/usr/bin/env crystal --run
require "../../spec_helper"

describe "ASTNode#to_s" do
  it "puts parenthesis after array literal of T followed by call" do
    Parser.parse("([] of T).foo").to_s.should eq("([] of T).foo")
  end

  it "puts parenthesis after hash literal of T followed by call" do
    Parser.parse("({} of K => V).foo").to_s.should eq("({} of K => V).foo")
  end
end
