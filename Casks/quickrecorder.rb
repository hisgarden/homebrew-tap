cask "quickrecorder" do
  version "1.7.1"
  sha256 "cb4fea4663b5522d0aaf28c5b8ad5355a8a0bfbf043e664eb3936fc56952e087"

  url "https://github.com/hisgarden/QuickRecorder/releases/download/v#{version}/QuickRecorder.dmg"
  name "QuickRecorder"
  desc "A lightweight and high-performance screen recorder for macOS (fork with enhancements)"
  homepage "https://github.com/hisgarden/QuickRecorder"
  
  livecheck do
    url "https://github.com/hisgarden/QuickRecorder/releases/latest"
    strategy :page_match
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
  
  depends_on macos: ">= :monterey"

  app "QuickRecorder.app"

  zap trash: [
    "~/Library/HTTPStorages/dev.hisgarden.QuickRecorder",
    "~/Library/Preferences/dev.hisgarden.QuickRecorder.plist",
  ]
end
