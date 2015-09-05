// Generated by CoffeeScript 1.10.0
(function() {
  var assert;

  assert = chai.assert;

  describe('deck', function() {
    var deck, hand;
    deck = null;
    hand = null;
    beforeEach(function() {
      deck = new Deck();
      return hand = deck.dealPlayer();
    });
    return describe('hit', function() {
      return it('should give the last card from the deck', function() {
        assert.strictEqual(deck.length, 50);
        assert.strictEqual(deck.last(), hand.hit().last());
        return assert.strictEqual(deck.length, 49);
      });
    });
  });

}).call(this);

//# sourceMappingURL=DeckSpec.js.map
