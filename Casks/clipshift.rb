cask "clipshift" do
  arch arm: "arm64", intel: "amd64"
  version "0.1.14-beta.1"
  sha256 arm: "f783ea184ee2639a67dc267cd8b1af10d459d0b10bcfe8d1d62e9502cec5e711",
         intel: "9555dbc23e572f46c2082dfc104e33701a9f1849ad2250e897cd3ae06d81475f"
  
  url "https://github.com/getclipshift/clipshift/releases/download/v#{version}/clipshift.app_#{arch}.tar.gz"
  name "clipshift"
  desc "Clipboard syncing application"
  homepage "https://github.com/getclipshift/clipshift"

  app "clipshift.app"
  binary "#{appdir}/clipshift.app/Contents/MacOS/clipshift"

  zap trash: [
    "~/.clipshift",
  ]
end
