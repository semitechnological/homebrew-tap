# Installs from the tagged source archive. Pre-built release binaries are also
# published on GitHub for `wax self-update` / tooling that prefers artifacts.
class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/semitechnological/wax"
  url "https://github.com/semitechnological/wax/archive/refs/tags/v0.17.7.tar.gz"
  sha256 "6cb9f132aaed90c2ffe2946a85de1edccb4b5f762ed1c84cfabd6cb21ac22960"
  license "MIT"
  head "https://github.com/semitechnological/wax.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", "--locked", "--root", prefix, "--path", "."
  end

  test do
    assert_match "wax", shell_output("#{bin}/wax --version")
  end
end
