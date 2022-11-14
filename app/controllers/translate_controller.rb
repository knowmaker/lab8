# frozen_string_literal: true

# class for translate
class TranslateController < ApplicationController
  def input; end

  def output
    @chislo = params[:ch].to_i
    @st = @chislo.to_s(2)
    @rev_st = @st.reverse
    @result = @rev_st.to_i(2)
  end
end
