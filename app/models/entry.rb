class Entry < ActiveRecord::Base
  belongs_to :collection

  def previous
    Entry.where('entries.id < ?', self.id).first
  end

  def next
    Entry.where('entries.id > ?', self.id).last
  end
end
