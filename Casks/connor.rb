cask "connor" do
  version "0.33.0"
  sha256 "097387a759e79f8ae29c3778683c5a215299a6090c61b50d9d495a5ea1a6f1e0"

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
