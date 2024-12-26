enum AuthProvider {
  google("google", "Google"),
  wechat("wechat", "Wechat"),
  microsoft("microsoft", "Microsoft"),
  apple("apple", "Apple"),
  vk("vk", "VK");

  final String id;
  final String title;

  const AuthProvider(this.id, this.title);
}