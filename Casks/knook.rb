cask "knook" do
  version "0.1.1"
  sha256 "21d9766b74bbe9ad28a5c114e6cf56ebde1a44552abca14b6852bb5733a43ed5"

  url "https://github.com/preetsuthar17/Nook/releases/download/v#{version}/knook-#{version}.dmg"
  name "knook"
  desc "Native macOS menu bar app for screen-break reminders"
  homepage "https://github.com/preetsuthar17/Nook"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "knook.app"

  caveats do
    <<~EOS
      This preview build is not notarized yet.
      If macOS says knook is damaged on first launch, run:
        xattr -dr com.apple.quarantine /Applications/knook.app
    EOS
  end

  zap trash: [
    "~/Library/Application Support/knook",
    "~/Library/Application Support/nook",
    "~/Library/Application Support/Nook",
    "~/Library/Preferences/io.github.preetsuthar17.knook.plist",
    "~/Library/Saved Application State/io.github.preetsuthar17.knook.savedState",
  ]
end
