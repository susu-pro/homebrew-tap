cask "puffy" do
  version "0.1.1"

  on_arm do
    url "https://github.com/susu-pro/puffy/releases/download/v#{version}/Puffy_#{version}_aarch64.dmg"
    sha256 "476eb040366ebf5f0ffbc5cf807cb2688d0e6ec94bfd8c74825a17c5c33fe1f9"
  end
  on_intel do
    url "https://github.com/susu-pro/puffy/releases/download/v#{version}/Puffy_#{version}_x64.dmg"
    sha256 "94029c1be3e148f53204b05f4dbe7fbe33f9c739f10637cd4d574db3de7df7d5"
  end

  name "Puffy"
  desc "Download video + audio + transcript from YouTube, TikTok, Bilibili & 8+ platforms"
  homepage "https://github.com/susu-pro/puffy"

  app "Puffy.app"

  zap trash: [
    "~/Library/Application Support/com.suapril.puffy",
    "~/Library/Caches/com.suapril.puffy",
    "~/Library/Preferences/com.suapril.puffy.plist",
    "~/Library/WebKit/com.suapril.puffy",
  ]
end
