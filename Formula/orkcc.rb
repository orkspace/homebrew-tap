class Orkcc < Formula
  desc "Web-based Control Center for Orkestra - visualize and manage your operators"
  homepage "https://github.com/orkspace/orkestra"
  version "0.7.17"
  license "Apache 2.0"
  on_macos do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_darwin_arm64.tar.gz"
      sha256 "da95780121aaa921de6c8625e50c6580d251ae3f9eb11b74e186d78f74e73199"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_darwin_amd64.tar.gz"
      sha256 "431f132f7bf9d91dd02210df4d0522378766d075e90b4012214abaa960ea564f"
    end
  end
  on_linux do
    on_arm do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_linux_arm64.tar.gz"
      sha256 "bf7104a24831f5aec351f022fc675c138dbdf0b3457062cd392c0e58019895f8"
    end
    on_intel do
      url    "https://github.com/orkspace/orkestra/releases/download/v0.7.17/orkcc_linux_amd64.tar.gz"
      sha256 "dc168c040ce259f5f44feb07aa363eff6a557664696dfc6c9be2d157cccd3de5"
    end
  end
  def install
    bin.install "orkcc"
  end
  test do
    system "#{bin}/orkcc", "--help"
  end
end
