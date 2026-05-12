class Ghr < Formula
  desc "Installer for GitHub releases"
  homepage "https://github.com/cataggar/ghr"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-arm64.tar.gz"
      sha256 "25302ce749d39f54cad0b474ed95f6c3470b3a9a6e957432f22595aea9e6e9e0"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-x64.tar.gz"
      sha256 "ff211ca560183d722baae8c84a05279aa959bf1dce58cd675679093c6dfa945b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-arm64.tar.gz"
      sha256 "d0afa58204035143cef5b25f70ac13bdcac95a748ae2e4048d4f7a56b89f9937"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-x64.tar.gz"
      sha256 "63bc368356d6345a513c80437f9598df85be11a234b2d3e9fe66db7151bc62bb"
    end
  end

  def install
    bin.install "bin/ghr"
  end

  test do
    assert_match "ghr", shell_output("#{bin}/ghr --help 2>&1", 0..2)
  end
end
