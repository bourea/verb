require 'spec_helper'

describe Verb do

	it "should return verbs" do
		Verb.lookup.should_not be_nil
  end
end
