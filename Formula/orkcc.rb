class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.18"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/orkcc_darwin_arm64.tar.gz"
      sha256 "72dc98d729597258a7c22a275227908db89bafed6094329383c42f4093fdfd60"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/orkcc_darwin_amd64.tar.gz"
      sha256 "763bf6eb6804339192cdf5aadfcb835cd8ec61797d51a3a7f1d8f4fc3d66b7d8"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/orkcc_linux_arm64.tar.gz"
      sha256 "059b6c8a5517628880237a8564243b924506c276fb9541a827b6fad0fc8fdb70"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.18/orkcc_linux_amd64.tar.gz"
      sha256 "3435505d34e2e2188eff9fd59ef86e7e57729556ab65a665fd1c0650c634cdc6"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
