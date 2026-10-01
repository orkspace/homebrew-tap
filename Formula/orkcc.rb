class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.18"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/orkcc_darwin_arm64.tar.gz"
      sha256 "53eb9d5d09bd78091547dc01d8a82ea6d385e06f2a67d5adf98af167fa10da11"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/orkcc_darwin_amd64.tar.gz"
      sha256 "f40060b28633a8c5e78c18532073136d95e2738d09686c54acc8034cbb462e09"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/orkcc_linux_arm64.tar.gz"
      sha256 "3d14ecba8f221c2f5a9f0c79b3c01cf56f23084110c807af624022380d2aee37"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/orkcc_linux_amd64.tar.gz"
      sha256 "31d2fc3d1992666ccbf1c39c1e6bb19f47f434ca9f6c57f7f154ab6f3d3e3666"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
