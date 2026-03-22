class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.20.0.tar.gz"
  sha256 "e56d813812a9a5acf1387d1e3df58c571762750603eb0d94586eb4c3e39c6b8f"
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
