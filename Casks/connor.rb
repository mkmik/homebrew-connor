cask "connor" do
  version "0.42.0"
  sha256 "3d83c9560552026da26825fac3d43b66d59570f824bf2573eea77bf9ca4548d5"

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
