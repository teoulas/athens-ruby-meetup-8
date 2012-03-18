class Entry < ActiveRecord::Base
  def entry
    "#{title} #{amount}"
  end

  def entry=(e)
    *title, amount = e.split(' ')
    self.title = title.join(' ')
    self.amount = amount
  end
end
