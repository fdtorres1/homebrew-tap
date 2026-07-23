cask "agentmeter" do
  version "1.7.0"
  sha256 "0078d3a9327bac824011fba605ec29cc52100b843acb6a0e0eb91a4b1746036f"

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

  zap trash: [
    "~/Library/Preferences/com.felixtorres.agentmeter.plist",
  ]
end
