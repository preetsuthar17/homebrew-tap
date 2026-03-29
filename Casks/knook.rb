cask "knook" do
  version "0.1.2"
  sha256 "205c094a1e49f0251139e4368c696233afb5f7b540e01588f38610afe9942d99"

  url "https://github.com/preetsuthar17/knook/releases/download/v#{version}/knook-#{version}.dmg"
  name "knook"
  desc "Native macOS menu bar app for screen-break reminders"
  homepage "https://github.com/preetsuthar17/knook"

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
