require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

RSpec.describe Round do

    before :each do
        @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

        @cards = [@card_1, @card_2, @card_3]

        @deck = Deck.new(@cards)
        @turn = Turn.new("Saturn", @card)
        @round = Round.new(@deck)
    end

    it 'exists' do

        expect(@round).to be_instance_of(Round)
    end

    it 'has a deck of cards' do

        expect(@round.deck).to eq(@deck)
    end

    it 'takes a turns' do

        expect(@round.turns).to eq([])
    end

    it 'pull current card' do

        expect(@round.current_card).to eq(@deck.cards[0])
    end

    xit 'takes a turn' do

        #need to guess "Juneau" as argument
        expect(round.take_turn(guess)).to eq(guess)
        #create a new Turn object
        #store new Turn and return it from the take_turn
        #Round to next card

    end
end