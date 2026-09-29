cask "prismlauncher-parental" do
  version "11.0.3-parental"
  sha256 "6df0a0f56cc505556edae1d74c669abbe641c4af0a361f0edbb2f63b8312f3cf"

  url "https://github.com/AmailP/PrismLauncher/releases/download/v#{version}/PrismLauncher-#{version}.zip"
  name "Prism Launcher (parental fork)"
  desc "Custom build of the Prism Launcher Minecraft launcher"
  homepage "https://github.com/AmailP/PrismLauncher"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+-parental)$/i)
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "PrismLauncher.app"

  # The bundle is ad-hoc signed, not notarized. macOS quarantines the download,
  # and Gatekeeper refuses to open quarantined unnotarized apps, so strip it.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/PrismLauncher.app"]
  end

  zap trash: [
    "~/Library/Application Support/PrismLauncher",
    "~/Library/Caches/org.prismlauncher.PrismLauncher",
    "~/Library/HTTPStorages/org.prismlauncher.PrismLauncher",
    "~/Library/Preferences/org.prismlauncher.PrismLauncher.plist",
    "~/Library/Saved Application State/org.prismlauncher.PrismLauncher.savedState",
  ]
end
