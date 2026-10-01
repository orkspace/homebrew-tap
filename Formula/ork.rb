class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.18"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/ork_darwin_arm64.tar.gz"
      sha256 "f61199637b0561121e0b05582ba353dcb44cfd974483119861af78373baea84b"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/ork_darwin_amd64.tar.gz"
      sha256 "83af1793ee634fcaa0fcdbf954a1b1ecfa298d4319a16a62424b4e9858a92b67"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/ork_linux_arm64.tar.gz"
      sha256 "beb80fa48954db3e6dfe500161303fe62e3a2490c73a0dec3ff031913ffd599e"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/ork_linux_amd64.tar.gz"
      sha256 "9297a37eebe5f4413829b4c2cc90a7ebe4b83bfbf769dc2a1636371da83c14b4"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
