cask "connor" do
  version "0.32.0"
  sha256 "63d6b1ee1e313cfa82672fc1f4f1d0a8ccd5301811ade08702160f21eacd070d"

  url "https://github.com/mkmik/connor/releases/download/v#{version}/Connor-v#{version}.dmg"
  name "Connor"
  desc "Developer tools macOS application"
  homepage "https://github.com/mkmik/connor"

  depends_on macos: ">= :sonoma"

  app "Connor.app"

  zap trash: [
    "~/Library/Preferences/com.connor.app.plist",
    "~/Library/Application Support/Connor",
    "~/Library/Caches/Connor",
  ]
end
