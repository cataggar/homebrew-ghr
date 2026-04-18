class Ghr < Formula
  desc "Installer for GitHub releases"
  homepage "https://github.com/cataggar/ghr"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-arm64.tar.gz"
      sha256 "05ea54aafef620a65d55c508360860b5d84aecf030a61a1b7797cc74b2289151"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-x64.tar.gz"
      sha256 "6847859e88bb2a591edfde313eeff0fb24a6d13c3d2a1c2998c4900c67726c2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-arm64.tar.gz"
      sha256 "dccbc1fd3b4ba42186f25580255bbbed80edfe898561db2b1aaaa0aa4551ef00"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-x64.tar.gz"
      sha256 "7f4a58d5300624bbaaf9cd11b558c8f514da26cdf751415db2ace5bcb2136185"
    end
  end

  def install
    bin.install "bin/ghr"
  end

  test do
    assert_match "ghr", shell_output("#{bin}/ghr --help 2>&1", 0..2)
  end
end
