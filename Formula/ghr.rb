class Ghr < Formula
  desc "Installer for GitHub releases"
  homepage "https://github.com/cataggar/ghr"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-arm64.tar.gz"
      sha256 "38c696649a7f5abf6b19678e393b0fb14bf811e9a68cbda550e352f60dd25002"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-x64.tar.gz"
      sha256 "99d36bf4c8b491f5a7abe8f3953f4f122933127c996c79023a734e02fa9c7e7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-arm64.tar.gz"
      sha256 "bc92713f62fdb882900a5f389d59da814954beebb07f3f23a5ed5917317b5c94"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-x64.tar.gz"
      sha256 "6d75ba3c00b1a96ce5ff940529d30ffb4203fb08a4ac1e85c11d557b7daf69c5"
    end
  end

  def install
    bin.install "bin/ghr"
  end

  test do
    assert_match "ghr", shell_output("#{bin}/ghr help 2>&1", 0..2)
  end
end
