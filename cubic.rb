class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "781aac13c43bd8684f1fdad8acf4c316ebfeddc4914bb524e599b60b69f7be76"
  license "GPL-2.0-only"

  depends_on "rust" => :build
  depends_on "cdrtools"
  depends_on "openssh"
  depends_on "qemu"

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/cubic"
  end

  test do
    system bin/"cubic", "ls"
  end
end
