class Ghr < Formula
  desc "Installer for GitHub releases"
  homepage "https://github.com/cataggar/ghr"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-arm64.tar.gz"
      sha256 "0879a6b2bbfda9a1cd6cc873624e029fc4aec6e12e64da1892469c41d3e200df"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-x64.tar.gz"
      sha256 "36058889794f2efb89268a48fa3fc0cd0de9ec16f86db6f2974bca954568f8e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-arm64.tar.gz"
      sha256 "6dc94a15e654732aa373dbd4d29270451f9d626735f8e1d4dddab825fa8bba8a"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-x64.tar.gz"
      sha256 "51ea37b05d00a029b1ba7bb941e32f130bbe3cf5791e728a7e3070c070fe3f61"
    end
  end

  def install
    bin.install "bin/ghr"
  end

  test do
    assert_match "ghr", shell_output("#{bin}/ghr help 2>&1", 0..2)
  end
end
