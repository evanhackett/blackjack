assert = chai.assert

describe "Hand", ->
  hand = null

  beforeEach ->
    hand = new Hand()

  describe "Scoring", ->

    it "should score revealed cards correctly", ->
      card1 = new Card rank: 7, suit: 1
      card2 = new Card rank: 5, suit: 2
      hand.add card1
      hand.add card2
      assert.strictEqual hand.scores(), 12

    it "should score a hand with some non-revealed cards correctly", ->
      card1 = new Card rank: 2, suit: 1
      card2 = new Card rank: 6, suit: 3
      card3 = new Card rank: 10, suit: 2
      card1.flip()
      hand.add card1
      hand.add card2
      hand.add card3
      assert.strictEqual hand.scores(), 16
      
    it "should score a hand with an ace correctly", ->
      card1 = new Card rank: 1, suit: 0
      card2 = new Card rank: 7, suit: 3
      hand.add card1
      hand.add card2
      assert.strictEqual hand.scores(), 18

    it "should count ace value as 1 (not 11) when needed to", ->
      card1 = new Card rank: 1, suit: 0
      card2 = new Card rank: 10, suit: 3
      card3 = new Card rank: 10, suit: 2
      hand.add card1
      hand.add card2
      hand.add card3
      assert.strictEqual hand.scores(), 21
      