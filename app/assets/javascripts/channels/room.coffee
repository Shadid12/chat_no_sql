App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    unless data.body.blank?
      $('#messages-table').append '<div class="message">' +
        '<div class="message-user"><b>' + data.username + ":" + '</b></div>' +
        '<div class="message-content">' + data.body + '</div>' + '</div>'