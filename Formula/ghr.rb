class Ghr < Formula
  desc "Installer for GitHub releases"
  homepage "https://github.com/cataggar/ghr"
  version "0.6.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-arm64.tar.gz"
      sha256 "c0fe7b6b6d44f85741cd18944592be02af5485f73c30bc52b514171152ec6601"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-macos-x64.tar.gz"
      sha256 "e1484f31409b021b7072756344f9781f02e13bbed2ad5e88e55f22fda5df5cc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-arm64.tar.gz"
      sha256 "e9d15a3590fe9c7a220f2ec2ee73f9fe4824a4f2d278696db1f32095319816a9"
    end
    on_intel do
      url "https://github.com/cataggar/ghr/releases/download/v#{version}/ghr-#{version}-linux-x64.tar.gz"
      sha256 "0ca1d381ccace6021d9665e64f2f16f1b73bb517f7b6acb3cade499471e6090a"
    end
  end

  def install
    bin.install "bin/ghr"
  end

  test do
    assert_match "ghr", shell_output("#{bin}/ghr help 2>&1", 0..2)
  end
end
