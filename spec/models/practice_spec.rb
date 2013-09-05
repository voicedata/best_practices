require 'spec_helper'

describe Practice do
  describe "#new" do
    specify {subject.should be_new_record }
  end
  describe "#contents" do
    context "when no content" do
      subject {Practice.contents.first}
      its(:content){ should be_eql "no content" }
    end
  end
end
