assert = chai.assert
expect = chai.expect

describe 'Game', ->
  game = null
  deck = null
  hand = null

  beforeEach ->
    game = new Game()

  describe 'Decks', ->
    it 'should have a deck', ->
      assert game.get 'deck'

  describe 'Hands', ->
    it 'should have a player hand', ->
      assert game.get 'playerHand'

    it 'should have a dealer hand', ->
      assert game.get 'dealerHand'

  describe 'Game Logic', ->
    it 'should call checkForBusts on card draw', ->
      spy = chai.spy game.checkForBusts
      game.checkForBusts = spy
      game.get('playerHand').hit()
      expect(spy).to.have.been.called()