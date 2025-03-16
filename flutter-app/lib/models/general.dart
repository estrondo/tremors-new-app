class LocalisedMessage {
  final Map<String, String> _messages;

  LocalisedMessage(this._messages);

  String? operator [](String localisation) => _messages[localisation];
}
