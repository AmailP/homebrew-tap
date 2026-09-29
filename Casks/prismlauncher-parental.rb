cask "prismlauncher-parental" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/AmailP/PrismLauncher/releases/download/v#{version}/PrismLauncher-#{version}.zip"
  name "Prism Launcher (parental fork)"
  desc "Custom build of the Prism Launcher Minecraft launcher"
  homepage "https://github.com/AmailP/PrismLauncher"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "prismlauncher"
  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "PrismLauncher.app"

  zap trash: [
    "~/Library/Application Support/PrismLauncher",
    "~/Library/Caches/org.prismlauncher.PrismLauncher",
    "~/Library/HTTPStorages/org.prismlauncher.PrismLauncher",
    "~/Library/Preferences/org.prismlauncher.PrismLauncher.plist",
    "~/Library/Saved Application State/org.prismlauncher.PrismLauncher.savedState",
  ]
end
