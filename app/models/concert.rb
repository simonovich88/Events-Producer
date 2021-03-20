class Concert < ApplicationRecord

    belongs_to :band
    scope :between_dates, ->(_begin,_end) {where('date Between ? and ?', _begin, _end)}
end
