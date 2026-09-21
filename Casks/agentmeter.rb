cask "agentmeter" do
  version "1.11.2"
  sha256 "32cae930e5fb302564e3f2758ccfbebb1701df034018b367a89ffdb5cbc366cc"

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
