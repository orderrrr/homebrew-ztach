class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.1/ztach-0.2.1-macos-arm64.tar.gz"
      sha256 "76acb8f5daef38af4619c8d86135a6a9ce402aeaef90096405666a0a86e3f58d"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.1/ztach-0.2.1-macos-x86_64.tar.gz"
      sha256 "329a3aaef52e0143e2620f49a508ab78199bd3fca3f692fa2c9aa6202e6f59f2"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
