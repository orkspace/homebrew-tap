class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.17"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_darwin_arm64.tar.gz"
      sha256 "2ddc48715931b6692482a50bc3f922c95582583e2e374ecb351864fb3a5ba2d1"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_darwin_amd64.tar.gz"
      sha256 "dce38ab3bd0d0fbeef8139107d8652c4e8b777a2818197963c20ea10fdb3fc0f"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_linux_arm64.tar.gz"
      sha256 "e98e6f5d24c3915cbb8906c643893f8621be0281bb45a4b12d8c533598d615ac"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_linux_amd64.tar.gz"
      sha256 "cd368c36189ef3b71fa46e811b7b8efbc5ab939590910f644c6482717deff9ee"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
