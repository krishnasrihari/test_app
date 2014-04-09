require 'spec_helper'

describe Reservation do
  describe 'validation' do
    it { should validate_presence_of(:start_time) }
    it { should validate_presence_of(:end_time) }
    it { should validate_presence_of(:table_number) }
  end
  
end