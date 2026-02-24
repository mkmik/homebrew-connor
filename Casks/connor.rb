cask "connor" do
  version "0.48.0"
  sha256 "f0d3c3c8c91fff5896b38aaf020b3b72bf68333ce2a5eb2b71621de4bcfe1c9f"

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
