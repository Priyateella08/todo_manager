class User < ActiveRecord::Base
  def to_s
    "#{id} #{name} #{email} #{password}"
  end
end
