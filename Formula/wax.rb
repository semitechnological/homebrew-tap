# NOTE: Versioned bottles are published automatically when a release tag is pushed.
# Until then, this formula builds from HEAD source.
class Wax < Formula
  desc "Fast Homebrew-compatible package manager"
  homepage "https://github.com/semitechnological/wax"
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
