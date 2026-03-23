class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.4/ztach-0.2.4-macos-arm64.tar.gz"
      sha256 "ede40bbe87096f3f4b95c1120e867d80ba27d8ba29f08cb06a23801447374444"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.4/ztach-0.2.4-macos-x86_64.tar.gz"
      sha256 "c6b917f986ebf9bc846621d87219bf97cf9873299b4b5af55b3f72033205d327"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
