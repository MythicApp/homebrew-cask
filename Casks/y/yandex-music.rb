cask "yandex-music" do
  version "5.27.1"
  sha256 "afad6bd249edd87e812e90ce0cf6a552e2c1ecd6e33893078346ff81a7fe2757"

  url "https://music-desktop-application.s3.yandex.net/stable/Yandex_Music_universal_#{version}.dmg",
      verified: "music-desktop-application.s3.yandex.net/stable/"
  name "Yandex Music"
  desc "Tune in to Yandex Music and get personal recommendations"
  homepage "https://music.yandex.ru/"

  livecheck do
    url "https://music-desktop-application.s3.yandex.net/stable/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Яндекс Музыка.app"

  zap trash: [
    "~/Library/Application Support/YandexMusic",
    "~/Library/Logs/YandexMusic",
    "~/Library/Saved Application State/ru.yandex.desktop.music.savedState",
  ]
end
