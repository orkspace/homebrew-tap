class Ork < Formula
  desc "Declarative Runtime for Kubernetes Operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.18"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/ork_darwin_arm64.tar.gz"
      sha256 "1e3caaedb18759da958fa7b717bd49bd6b2e93ebc2f1b895fa0ac9df530109e9"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/ork_darwin_amd64.tar.gz"
      sha256 "7e9de7ec19c98b1513560b5fce575aec1e576cd999440dc64187c746c8b08c7d"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/ork_linux_arm64.tar.gz"
      sha256 "8b564a524372bdaa1d10b835016f4cfc15d507685a9fdf6270cf7a7091c50911"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/ork_linux_amd64.tar.gz"
      sha256 "746e81f95f84a17a81148295b13405a9162667c947db80863fa1aecb02d44842"
    end
  end
  def install
    bin.install "ork"
  end
  test do
    system "#{bin}/ork", "version"
  end
end
