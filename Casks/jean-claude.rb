cask "jean-claude" do
  version "1.0.0"
  sha256 "UPDATE_WITH_SHA256_FROM_RELEASE"

  url "https://github.com/izo/Jean-Claude/releases/download/v#{version}/Jean-Claude-v#{version}.dmg"
  name "Jean Claude"
  desc "Menu bar app for monitoring Claude Code Homebrew updates"
  homepage "https://github.com/izo/Jean-Claude"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Jean Claude.app"

  zap trash: [
    "~/Library/Preferences/com.jeanclaude.app.plist",
    "~/Library/Application Support/Jean Claude",
    "~/Library/Caches/com.jeanclaude.app",
  ]
end
