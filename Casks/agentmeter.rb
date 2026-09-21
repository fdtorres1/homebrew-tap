cask "agentmeter" do
  version "1.11.0"
  sha256 "d1e320a6d552f327af1bb78ca3fade5b45f0c8c732f3b850ebbb9e875e858e63"

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
