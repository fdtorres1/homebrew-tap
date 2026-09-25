cask "agentmeter" do
  version "1.12.1"
  sha256 "8a78eece2159ec483b5a14ed5deb8d1579eff10e5624f8a95866108ebc667f14"

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
