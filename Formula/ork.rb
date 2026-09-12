class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.17"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_darwin_arm64.tar.gz"
      sha256 "d2cd173402d90a179e93118400edba22028cba8ce3671ffe6115e60df7e40bc3"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_darwin_amd64.tar.gz"
      sha256 "376cca62016f687f9acd3c3eb39aba9da19b010157f5324dd9bd4685bd2b3565"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_linux_arm64.tar.gz"
      sha256 "a135dcc39518561e662546228410520b90932e311981f46d7990a09d6e7cbb31"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/ork_linux_amd64.tar.gz"
      sha256 "995bbc96f3f45f0f8665123c5a177f590ba812fb7e13a00ca8d878e89329dde8"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
