cask "quickrecorder" do
  version "1.7.1"
  sha256 "50892b33be1d018b4c3f8d3a6e3dbcbcbfae4f64e707225bf3338a04b1e34a4f"

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
