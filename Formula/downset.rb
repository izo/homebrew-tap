class Downset < Formula
  desc "Convert documents to Markdown - CLI for MarkItSwift"
  homepage "https://github.com/izo/downset-app"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/izo/downset-app/releases/download/v1.2.0/downset-1.2.0-arm64.tar.gz"
      sha256 "12a7942591e2561a9a4afee19c6a3d73e5e008a92c21607acf35b44f01898134"
    end
    on_intel do
      url "https://github.com/izo/downset-app/releases/download/v1.2.0/downset-1.2.0-x86_64.tar.gz"
      sha256 "ba0cfccef883cdb530071234450d776c84f0e1e6b5d2921991b8a31e3aae613b"
    end
  end

  def install
    bin.install "downset"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downset --version")
  end
end
