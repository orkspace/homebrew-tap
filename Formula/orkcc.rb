class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.17"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_darwin_arm64.tar.gz"
      sha256 "50ab335892b56a606ff5256d88acdc29a6b41f2bde4e949ae65af7e747380221"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_darwin_amd64.tar.gz"
      sha256 "53605e8c4c872aa2be5508c58f91ab9a91dea52e087649ac893699ddffa6d93b"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_linux_arm64.tar.gz"
      sha256 "e93b5bf89d2f639c6e9e47dd51a6fedc6a548c592a82c22df6cea27c603fc118"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_linux_amd64.tar.gz"
      sha256 "c85a7e961f5d3acf9782a7dcfa5294ee52b6444db7a899131b06a534957684d6"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
