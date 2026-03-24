class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.2/ztach-0.3.2-macos-arm64.tar.gz"
      sha256 "cb6613e5cb31925537b2e67919b4301e1c642cb10f78c852aaa7197f392339b8"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.2/ztach-0.3.2-macos-x86_64.tar.gz"
      sha256 "0320e20d9ffaba336a9c8663d8da61e530f3bbaa26250251c47456ae71355cb6"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
