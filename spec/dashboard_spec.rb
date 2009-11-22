require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "project-root" do

  describe "with set_project_root" do
    before :each do
      mock($:).unshift './spec/test_root/lib'
      mock($:).unshift './spec/test_root/vendor/dependency-1.0/lib'
    end

    it "adds the lib directory to the load path" do
      set_project_root 'test_root'
    end
  end

  describe "with libdir" do
    before :each do
      mock($:).unshift './spec/test_root/lib'
      mock($:).unshift './spec/test_root/vendor/dependency-1.0/lib'
      mock($:).unshift './spec/test_root/alt-lib'
    end

    it "can add alternate lib dirs" do
      set_project_root 'test_root'
      libdir 'alt-lib'
    end
  end

end
