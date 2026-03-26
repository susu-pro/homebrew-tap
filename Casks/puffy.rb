cask "puffy" do
  version "0.1.2"

  on_arm do
    url "https://github.com/susu-pro/puffy/releases/download/v#{version}/Puffy_#{version}_aarch64.dmg"
    sha256 "1b714e6ae852a4efc3d36d6bc411fa0e3a402c3f41d21dd1e8a207797f0a366f"
  end
  on_intel do
    url "https://github.com/susu-pro/puffy/releases/download/v#{version}/Puffy_#{version}_x64.dmg"
    sha256 "90f7ce3342dbf353ab5ab84ecf1a4fb1817133320c5ff63c6a4db98e3081696c"
  end

  name "Puffy"
  desc "Download video + audio + transcript from YouTube, TikTok, Bilibili & 8+ platforms"
  homepage "https://github.com/susu-pro/puffy"

  app "Puffy.app"
  binary "#{appdir}/Puffy.app/Contents/MacOS/Puffy", target: "puffy"

  zap trash: [
    "~/.local/bin/puffy",
    "~/Library/Application Support/com.suapril.puffy",
    "~/Library/Caches/com.suapril.puffy",
    "~/Library/Preferences/com.suapril.puffy.plist",
    "~/Library/WebKit/com.suapril.puffy",
  ]
end
