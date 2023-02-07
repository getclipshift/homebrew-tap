# typed: false
# frozen_string_literal: true

class Clipshift < Formula
  desc ""
  homepage "https://github.com/getclipshift/clipshift"
  version "0.1.14-beta.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.14-beta.1/clipshift_darwin_arm64.tar.gz"
      sha256 "de0dc389071111aa50f2d794fefe23ba7f4069bc8855f40b58c1cea37b4c2cb1"

      def install
        bin.install "clipshift"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.14-beta.1/clipshift_darwin_amd64.tar.gz"
      sha256 "13f2483409430136cd2faffcf3bec34713638385a49104289a8a472f2165334f"

      def install
        bin.install "clipshift"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.14-beta.1/clipshift_linux_amd64.tar.gz"
      sha256 "74e66bad188a92dc5211dc6a656443fc969a8cf4591a7f0a47654725b3c15cee"

      def install
        bin.install "clipshift"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.14-beta.1/clipshift_linux_arm64.tar.gz"
      sha256 "51abc1c97abcadd3e90fd469074391d8db6bfd7480b286c64ad4f1b4e4818a04"

      def install
        bin.install "clipshift"
      end
    end
  end

  test do
    system "#{bin}/clipshift"
  end
end
