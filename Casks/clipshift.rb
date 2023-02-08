cask "clipshift" do
  arch arm: "arm64", intel: "amd64"
  version "0.1.14-beta.4"
  sha256 arm: "b85c8f9804ec2bcf6e4c5e28a46dd9941fc518db4748ea270e611516f9ea579c",
         intel: "c3a23f80d055a4f4ee89e4d411cbd5291938a2238cea7374ccd930614df6fd50"
  
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
