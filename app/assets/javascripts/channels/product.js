App.product = App.cable.subscriptions.create("ProductChannel", {
  connected: function() {
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function() {
    // Called when there's incoming data on the websocket for this channel

  $(".alert.alert-info").show();
  $('.product-reviews').prepend(data.comment);
  $("#average-rating").attr('data-score', data.average_rating);
  refreshRating();
  },

  // jQuery code selects element and then grabs the value of the data-product-id attribute
  listen_to_comments: function() {
  return this.perform('listen', {product_id: $("[data-product-id]").data("product-id")
});
}

});
  // Calls listen_to_comments when user opens page
$(document).on('turbolinks:load', function() {
  App.product.listen_to_comments();
});
