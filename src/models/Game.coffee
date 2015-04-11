class window.Game extends Backbone.Model
  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()
    @set 'gameOver', false

    #check for player hand bust on hits
    @get('playerHand').on 'add', => 
      @set 'gameOver', true
      @get('playerHand').trigger 'bust'
    #@dealerHand.on 'change', -> console.log('dealer Busted') #check for dealer hand bust on hits

  dealersTurn: ->
    while @get 'dealerHand' .scores() < 17
      @get 'dealerHand' .hit()
    
    @get 'dealerHand' .stand()

  winner: ->