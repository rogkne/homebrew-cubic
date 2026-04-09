class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.21.0.tar.gz"
  sha256 "184317a8db18cc7da35266ba4f81ede390c4c52f167c2a4578c40a374d6111b1"
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
