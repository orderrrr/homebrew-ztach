class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.0/ztach-0.3.0-macos-arm64.tar.gz"
      sha256 "e90c90a3da32ab2ad4f575d5db17ffbbad3e5ba0a636bf517673c86014a6e7b0"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.0/ztach-0.3.0-macos-x86_64.tar.gz"
      sha256 "0507ff64bc9c2e26429e0f3dd41b5c23f349777d131d7b17670556af4a39849a"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
