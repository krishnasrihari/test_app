module ReservationValidator
  extend ActiveSupport::Concern
  
  included do
    validate :table_time
    
    protected
      def table_time
        overlap = self.class.where('table_number = ? and (start_time <= ? and end_time >= ?)',self.table_number,self.start_time,self.end_time) 
        if overlap.size > 0
          errors.add(:base, 'This table already reserved for this time, please change the time')
        end        
      end
  end
end