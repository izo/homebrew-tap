class Downset < Formula
  desc "Convert documents to Markdown - CLI for MarkItSwift"
  homepage "https://github.com/izo/downset-app"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/izo/downset-app/releases/download/v#{version}/downset-#{version}-arm64.tar.gz"
      sha256 "befc994c2096401d51cde17fe38dacd09011435b15e01b95052ba60da45c3704"
    end
    on_intel do
      url "https://github.com/izo/downset-app/releases/download/v#{version}/downset-#{version}-x86_64.tar.gz"
      sha256 "82f42dcb85dbed2fc42d3d25a3eb66c0b53c9c12c005dbb24e820c58f653bd48"
    end
  end

  def install
    bin.install "downset-arm64" => "downset" if Hardware::CPU.arm?
    bin.install "downset-x86_64" => "downset" if Hardware::CPU.intel?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/downset --version")
  end
end
