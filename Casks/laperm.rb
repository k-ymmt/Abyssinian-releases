cask "laperm" do
  version "0.1.1"
  sha256 :no_check

  url "https://github.com/k-ymmt/homebrew-Laperm-releases/releases/latest/download/Laperm-#{version}.zip"
  name "Laperm"
  desc "Cross-platform markdown note-taking app"
  homepage "https://k-ymmt.github.io/homebrew-Laperm-releases/"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "LapermMac.app"

  zap trash: [
    "~/Library/Application Support/LapermMac",
    "~/Library/Caches/app.kymmt.LapermMac",
    "~/Library/HTTPStorages/app.kymmt.LapermMac",
    "~/Library/Preferences/app.kymmt.LapermMac.plist",
  ]
end
