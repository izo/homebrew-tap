class Downset < Formula
  desc "Convert documents to Markdown - CLI for MarkItSwift"
  homepage "https://github.com/izo/downset-app"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/izo/downset-app/releases/download/v1.2.0/downset-1.2.0-arm64.tar.gz"
      sha256 "603b32137f359ea68214dd62d61f15b48a1c42d081110db8bb978130119b2b4e"
    end
    on_intel do
      url "https://github.com/izo/downset-app/releases/download/v1.2.0/downset-1.2.0-x86_64.tar.gz"
      sha256 "a87484c70c313f53cebb1f785267ffeea8690615b6872252ad2b491c5136949a"
    end
  end

  def install
    bin.install "downset"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downset --version")
  end
end
