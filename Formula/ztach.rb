class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.6/ztach-0.2.6-macos-arm64.tar.gz"
      sha256 "3bdaa492e331067f9d6131e9d6e86bb22fc5ef9c39f47c981accbf3226e19775"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.6/ztach-0.2.6-macos-x86_64.tar.gz"
      sha256 "2636c113284906ff7185b10e55e72a730563f8c67f83c03d66ffc4a163cdad72"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
