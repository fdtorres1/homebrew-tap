cask "agentmeter" do
  version "1.11.5"
  sha256 "14227a5b5f19dc6f3f441851c4cfa4243fe24d2fb5b28971526b542ad49d8df7"

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
