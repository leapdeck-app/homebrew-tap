cask "leapdeck" do
  version "0.2.2"
  sha256 "1bc26919d83fe7e7709e94aae3180dec87c862f776e188b75610f1b425226dac"

  # The archive Sparkle installs, not the DMG on the website. Every release has
  # to upload it for the update feed to work, it is named for its version, and
  # it is kept for good because Sparkle builds every delta from the earlier ones.
  url "https://leapdeck.app/updates/Leapdeck-#{version}.zip"
  name "Leapdeck"
  desc "Leap straight to any Space, full-screen apps included, with SIP left on"
  homepage "https://leapdeck.app/"

  livecheck do
    url "https://leapdeck.app/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Leapdeck.app"

  # A second launch refuses while the first copy runs, so one left running
  # through a reinstall would keep the new copy from starting.
  uninstall quit: "com.pigontech.leapdeck.mac"

  # license.json is left out on purpose. Deleting it without deactivating on the
  # Pro tab first strands one of the license's five activations, because
  # entering the key again after the file is lost takes a new one.
  zap trash: [
        "~/Library/Application Support/Leapdeck/clients.json",
        "~/Library/Application Support/Leapdeck/devices.json",
        "~/Library/Application Support/Leapdeck/purchases.json",
        "~/Library/Application Support/Leapdeck/shared.json",
        "~/Library/Application Support/Leapdeck/shortcuts-allowlist.json",
        "~/Library/Caches/com.pigontech.leapdeck.mac",
        "~/Library/HTTPStorages/com.pigontech.leapdeck.mac",
        "~/Library/Preferences/com.pigontech.leapdeck.mac.plist",
      ],
      rmdir: "~/Library/Application Support/Leapdeck"
end
