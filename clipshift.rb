# typed: false
# frozen_string_literal: true

class Clipshift < Formula
  desc ""
  homepage "https://github.com/getclipshift/clipshift"
  version "0.1.14-beta.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.14-beta.4/clipshift_darwin_arm64.tar.gz"
      sha256 "d6abcf1e7dd797d025c048ee10c1b84f388e3ea84d58233c2e0137e12c78c5c7"

      def install
        bin.install "clipshift"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.14-beta.4/clipshift_darwin_amd64.tar.gz"
      sha256 "0f44a155b1f64b9b7b6a25e556bd445661de45dd681a06b5c0804887981c67cb"

      def install
        bin.install "clipshift"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.14-beta.4/clipshift_linux_amd64.tar.gz"
      sha256 "f0b1b7b3fe3cdc86500c07913af62ccf7eed2f2cb8bde25bfbb01adeb9f5a997"

      def install
        bin.install "clipshift"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/getclipshift/clipshift/releases/download/v0.1.14-beta.4/clipshift_linux_arm64.tar.gz"
      sha256 "e21306754b9cd33e51f52c2817c362e1b37d45dfa7e43d3fda8f840e092df752"

      def install
        bin.install "clipshift"
      end
    end
  end

  test do
    system "#{bin}/clipshift"
  end
end
