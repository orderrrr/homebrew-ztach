class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.1/ztach-0.3.1-macos-arm64.tar.gz"
      sha256 "389b830593b8628a99816dea239c4596de76afdf3c41498c15710acecdda61a7"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.3.1/ztach-0.3.1-macos-x86_64.tar.gz"
      sha256 "d6e41f867d13ba448c338002e0810bea24bca4be14d525843bd9ac7918fef69d"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
