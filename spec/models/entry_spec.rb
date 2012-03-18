require 'spec_helper'

describe Entry do
  it "should split a text into title and amount" do
    e = Entry.new(entry: "title and 100.20")
    e.title.should == 'title and'
    e.amount.to_s.should == '100.2'
  end
end
