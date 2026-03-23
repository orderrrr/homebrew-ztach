class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.5/ztach-0.2.5-macos-arm64.tar.gz"
      sha256 "b173b1b9b5362e232deab2e5d7f4f6a314d17a0f8be5b2e917627824ca4b72ce"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.5/ztach-0.2.5-macos-x86_64.tar.gz"
      sha256 "a84a5a286ef43f48a72f50d87a86f20f1e878fe4efc7df3548fc6d973618b3e5"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
