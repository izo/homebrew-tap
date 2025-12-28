class Downset < Formula
  desc "Convert documents to Markdown - CLI for MarkItSwift"
  homepage "https://github.com/izo/downset-app"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/izo/downset-app/releases/download/v#{version}/downset-#{version}-arm64.tar.gz"
      sha256 "7c4f3af42e06627b181e12e0b90bfe9774926a4f04d158667a2402e66fe8693e"
    end
    on_intel do
      url "https://github.com/izo/downset-app/releases/download/v#{version}/downset-#{version}-x86_64.tar.gz"
      sha256 "9d07cac93edf707836f4ef30a9c5b137c80b68d22498a2452dadf97e4018aba5"
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
