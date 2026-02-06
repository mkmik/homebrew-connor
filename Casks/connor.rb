cask "connor" do
  version "0.44.0"
  sha256 "f47ac5f92814780b0f023d75a56c1eefc0cc1a059bb0e043157efd3acb97e6b2"

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
