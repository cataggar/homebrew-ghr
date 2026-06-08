class Ghr < Formula
  desc "Installer for GitHub releases"
  homepage "https://github.com/cataggar/ghr"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-arm64.tar.gz"
      sha256 "8ba02021d69b2e498aebbd65125b0fac49fe6d1fccf2cec767d90ec29d414748"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-x64.tar.gz"
      sha256 "e3ba50deafc60114276ca4dca956f4103cc4ff9d591c99aef2ca3e7c9ab363b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-arm64.tar.gz"
      sha256 "15f4c788f2f56ac204f73a98804cfeec3e812b034ab0b3d9f9c5c60962cb2616"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-x64.tar.gz"
      sha256 "160169d623d46b3bc3546e595a58f53cbc2f6dcca70ec973fc1d366c102401b0"
    end
  end

  def install
    bin.install "bin/ghr"
  end

  test do
    assert_match "ghr", shell_output("#{bin}/ghr help 2>&1", 0..2)
  end
end
