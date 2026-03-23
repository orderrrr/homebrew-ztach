class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.3/ztach-0.2.3-macos-arm64.tar.gz"
      sha256 "b67bbc9893b8cc7ba55436e465d6dc4b70e18e1e0461e75e52d539e09df27391"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.3/ztach-0.2.3-macos-x86_64.tar.gz"
      sha256 "2b549d77dc2b1485f96767311d5fb89c14a095bd599a36d41ddb0327cdbf20c6"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
