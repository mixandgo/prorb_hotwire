class SiteController < ApplicationController
  def first
    @count = 3
  end

  def second
  end

  def third
    @name, @email, @age = person_params.values_at(:name, :email, :age)
    @count = params[:count].to_i + 1
  end

  def fourth; end

  private

    def person_params
      params.require(:person).permit(:name, :email, :age)
    end
end
