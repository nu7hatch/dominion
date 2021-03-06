require 'spec_helper'

describe Festival do
  
  it 'should execute' do
    game, player, turn = GameFactory.build
    turn.execute Festival.new
    turn.number_actions.should == 3
    turn.number_buys.should == 2
    turn.treasure.should == 2
  end
  
end