# typed: false
# frozen_string_literal: true

class Clipshift < Formula
  desc ""
  homepage "https://github.com/getclipshift/clipshift"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.4/clipshift_darwin_arm64.tar.gz"
      sha256 "00c29c9ef62a5b94c10784de6d2ee41be5b15f642ad865acb7d28e48272543d0"

      def install
        bin.install "clipshift"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.4/clipshift_darwin_amd64.tar.gz"
      sha256 "e02350182e49617323669f02738ad2532980f12e0810c60834d730efd95e826f"

      def install
        bin.install "clipshift"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.4/clipshift_linux_amd64.tar.gz"
      sha256 "6bab39185cd6b4422d359f0ac57d449ee8f0d1768d848f6683f5ef354136b577"

      def install
        bin.install "clipshift"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.4/clipshift_linux_arm64.tar.gz"
      sha256 "e82e5f4928170488f0c77d1711eee60c560da115760e2c4b3e08d33cc0b6661d"

      def install
        bin.install "clipshift"
      end
    end
  end

  test do
    system "#{bin}/clipshift"
  end
end
