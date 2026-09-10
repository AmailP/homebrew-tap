cask "try-omarchy" do
  version "0.3.0"
  sha256 "e89d71e8c409bdb28f7f60299eb18854ea4e6f2b01d5c1bb03f5d7d49ac9ba77"

  url "https://github.com/omacom/try-omarchy/releases/download/v#{version}/TryOmarchy.dmg"
  name "Try Omarchy"
  desc "Omarchy Linux desktop in a virtual machine"
  homepage "https://github.com/omacom/try-omarchy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Try Omarchy.app"

  zap trash: [
    "~/Library/Application Support/Try Omarchy",
    "~/Library/Caches/dev.tryomarchy.native",
    "~/Library/HTTPStorages/dev.tryomarchy.native",
    "~/Library/Preferences/dev.tryomarchy.native.plist",
    "~/Library/Saved Application State/dev.tryomarchy.native.savedState",
  ]
end
