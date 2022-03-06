class HomesController < ApplicationController
  require 'parser'

  def index
    if params[:most].present?
      @results = Parser.log_me.first.sort_by { |k, v| v }.reverse.to_h
    elsif params[:unique].present?
      @results = Parser.log_me.last.sort_by { |k, v| v }.reverse.to_h
    else
      []
    end
  end

end
