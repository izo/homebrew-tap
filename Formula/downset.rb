class Downset < Formula
  desc "Convert documents to Markdown - CLI for MarkItSwift"
  homepage "https://github.com/izo/downset-app"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/izo/downset-app/releases/download/v1.2.0/downset-1.2.0-arm64.tar.gz"
      sha256 "artifacts/downset-arm64/downset-1.2.0-arm64.tar.gz.sha256:02e9bfd181ef7ad1bd93933f323e07371744eea1a7d2ac5efabaa88487be5e8e"
    end
    on_intel do
      url "https://github.com/izo/downset-app/releases/download/v1.2.0/downset-1.2.0-x86_64.tar.gz"
      sha256 "artifacts/downset-x86_64/downset-1.2.0-x86_64.tar.gz.sha256:76648d4ce7e2a7b799a31af838816727a194aaa950386fe8924326a764890500"
    end
  end

  def install
    bin.install "downset"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downset --version")
  end
end
