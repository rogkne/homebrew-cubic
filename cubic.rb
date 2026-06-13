class Cubic < Formula
  desc "Lightweight command-line manager for virtual machines"
  homepage "https://github.com/cubic-vm/cubic"
  url "https://github.com/cubic-vm/cubic/archive/refs/tags/v0.23.1.tar.gz"
  sha256 "3cb0b8e005a2657124a85686f74a472cebbeb5be54c3edc476f8826112e0fe5d"
  license "MIT OR Apache-2.0"

  depends_on "rust" => :build
  depends_on "qemu"

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/cubic"
  end

  test do
    system bin/"cubic", "instances"
  end
end
