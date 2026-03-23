class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.2/ztach-0.2.2-macos-arm64.tar.gz"
      sha256 "5c41256e7fb50830464945069b0947a99e2efe6664fd010a99415fabc8927cbf"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.2/ztach-0.2.2-macos-x86_64.tar.gz"
      sha256 "2aee4ce48f86381d9b20756043c2d79cc1a63bc6b3981b060dd82528a81b508e"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
