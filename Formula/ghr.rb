class Ghr < Formula
  desc "Installer for GitHub releases"
  homepage "https://github.com/cataggar/ghr"
  version "0.6.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-arm64.tar.gz"
      sha256 "2d39f17c0191ce2220920d8ae596d8ca863e45af565475b6bd17891c56b5d9a2"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-x64.tar.gz"
      sha256 "9845207dd88cc3a681633889fa17eeb30bf7b41617961ebd5b5711f4984c3d4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-arm64.tar.gz"
      sha256 "5908b317b71a47665d8c8a5e25ec54cb62420291f0b9073e533f2b96d6aa7f18"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-x64.tar.gz"
      sha256 "f133e9774b124afdf03c8ecfd7ea9d0a05c52790112e7de46c92b658315cc5b9"
    end
  end

  def install
    bin.install "bin/ghr"
  end

  test do
    assert_match "ghr", shell_output("#{bin}/ghr help 2>&1", 0..2)
  end
end
