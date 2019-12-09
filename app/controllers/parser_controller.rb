class ParserController < ApplicationController
  def parser
    @parser = Parser.all
    
  end
end
