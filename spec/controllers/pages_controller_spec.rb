require 'spec_helper'

describe PagesController do

  describe "#job_scope_and_time_to_task" do

    def do_request
      get :job_scope_and_time_to_task
    end

    it "should display content" do
      do_request
      response.should render_template :job_scope_and_time_to_task
    end
  end

  describe "#terms_and_condition" do
    def do_request
      get :terms_and_condition
    end

    it "should display content" do
      do_request
      response.should render_template :terms_and_condition
    end
  end

end