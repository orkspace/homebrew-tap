class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.17"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_darwin_arm64.tar.gz"
      sha256 "943c1d6643c4dcd0bd93857c338c0b27bb657bdc54dd16808fd282a815bd40af"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_darwin_amd64.tar.gz"
      sha256 "ab640135557bbd5a119ff5c3e97728da53faefd82e8c1b155ef49a10b9353b59"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_linux_arm64.tar.gz"
      sha256 "666a757f068ff55aeddcf10a9d8a9522ed6ebfdd312c2cacbe81428087cdf1f2"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_linux_amd64.tar.gz"
      sha256 "aaf52665c0c4b9745e1d43530e445a5e27de938c4c2e5500c5730c9905c7296e"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
