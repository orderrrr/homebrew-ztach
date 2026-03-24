class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.3/ztach-0.3.3-macos-arm64.tar.gz"
      sha256 "58dc6d45ee6675b8cbfe4e09da841cbde6a261f2897d69e49eaaac91c2056ee0"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.3/ztach-0.3.3-macos-x86_64.tar.gz"
      sha256 "840e13df0cbf952002c52e8a5744c1ec5fbbd41124cc8d290fc7466075558416"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
