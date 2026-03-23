class Ztach < Formula
  desc "Terminal session multiplexer with viewport support"
  homepage "https://github.com/orderrrr/ztach"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.0/ztach-0.2.0-macos-arm64.tar.gz"
      sha256 "a16232636724677b3665e1b137ad018560e8611ee815ad588fd167f773234757"
    else
      url "https://github.com/orderrrr/ztach/releases/download/v0.2.0/ztach-0.2.0-macos-x86_64.tar.gz"
      sha256 "95ef60f00df5213e893ade9c7efbf25cbc8caec9fa3e048cf3445d003209d0dc"
    end
  end

  def install
    bin.install "ztach"
  end

  test do
    assert_match "ztach - version", shell_output("#{bin}/ztach --version")
  end
end
