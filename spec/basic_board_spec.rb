require 'spec_helper'

describe BasicBoard do

  describe 'defined methods' do 
    subject { BasicBoard.new }

    it { should respond_to(:possible_moves) }
    it { should respond_to(:state) }
    it { should respond_to(:do_move) }
  end

  describe 'possible_moves' do
  end
end