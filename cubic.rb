class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.19.0.tar.gz"
  sha256 "e17bb740b67e5fa35d1f5fa608957afede709e9e017a5d333e8fdbd99c00f6d1"
  license "MIT OR Apache-2.0"

  depends_on "rust" => :build
  depends_on "cdrtools"
  depends_on "qemu"

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/cubic"
  end

  test do
    system bin/"cubic", "ls"
  end
end
