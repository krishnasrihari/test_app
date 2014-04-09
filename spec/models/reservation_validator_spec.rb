require 'spec_helper'

describe ReservationValidator do  
  
  describe 'validation' do
    describe 'reservation' do
      let(:reservation) {FactoryGirl.build(:reservation, table_number: 2, start_time: Time.now, end_time: Time.now + 1.minute)}
      let(:reservation2) {FactoryGirl.build(:reservation, table_number: 2, start_time: reservation.start_time, end_time: reservation.end_time + 1.minute)}
      
      it 'not same time' do
        reservation.save        
        reservation.should be_valid
      end
      
      it 'same time' do 
       reservation2.save     
       reservation2.should_not be_valid
      end
    end
  end
end
