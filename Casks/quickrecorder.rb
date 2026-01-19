cask "quickrecorder" do
  version "1.7.1"
  sha256 "26ad54b0f5c59e9bd7f4ade5944f8e4e1f71a74705aa01bb6839f860a1a09e3f"

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
