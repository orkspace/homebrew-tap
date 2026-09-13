class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.17"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_darwin_arm64.tar.gz"
      sha256 "96c4197f2ed9f4d57c2a7555b7dbffeda4166643b295a462268d62f0eca28724"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_darwin_amd64.tar.gz"
      sha256 "869c5d129ca1243cafa43cc1f18887f81712d254a5d77e3826eb85efc9a899d9"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_linux_arm64.tar.gz"
      sha256 "b57dd030785d116dc1e7f55bb1393d004befa4e9ce782875c7e2703c623d0be3"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_linux_amd64.tar.gz"
      sha256 "6aa81b4747a45403ca334e1065b8788a46fb2dd8dc2dc38f17c0bad5a4891e5f"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
