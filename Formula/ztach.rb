class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.2/ztach-0.3.2-macos-arm64.tar.gz"
      sha256 "f01dc5eab3591cbc93b9541e6939c42156e345ccd4da824030ccb8e79d29ea8b"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.2/ztach-0.3.2-macos-x86_64.tar.gz"
      sha256 "7d55654188a23c3dae6ccfc931a423763b7d4c4e6c7f93691465ecc18da173e2"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
