cask "agentmeter" do
  version "1.11.4"
  sha256 "bc65730b974970583722f44daf61c0d34b2dc2d0bec42fc82ff4cceb7d5f3176"

  url "https://github.com/fdtorres1/AgentMeter/releases/download/v#{version}/AgentMeter.zip"
  name "AgentMeter"
  desc "Menu bar monitor for AI coding usage limits"
  homepage "https://github.com/fdtorres1/AgentMeter"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "AgentMeter.app"
  binary "#{appdir}/AgentMeter.app/Contents/Helpers/agentmeter"

  zap trash: [
    "~/Library/Preferences/com.felixtorres.agentmeter.plist",
  ]
end
