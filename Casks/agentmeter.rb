cask "agentmeter" do
  version "1.6.4"
  sha256 "4f022762697382b465ee511ad806b60ca78f8b21a0fa08950d37467b22b64965"

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
