class HomeController < ApplicationController
  def index
  	@subjects = Subject.all.sort{|a,b| b.updated_at <=> a.updated_at}
  end
end
