class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.1.0/ztach-0.1.0-macos-arm64.tar.gz"
      sha256 "ec7832b65737d4ed5c677b4dd3cb6b92ae5426cf0219dbebdfc41e5f7ea9e529"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.1.0/ztach-0.1.0-macos-x86_64.tar.gz"
      sha256 "357cf4e1876ae6c1f3868195a6b8abe1a76f726478f65406b673fc06644f8096"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "ztach-macos-arm64" => "ztach"
    else
      bin.install "ztach-macos-x86_64" => "ztach"
    end
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
