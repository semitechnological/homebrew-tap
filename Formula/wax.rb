# Versioned pre-built binaries are published automatically when a release tag
# is pushed to semitechnological/wax.  Until a tagged release exists this
# formula builds from the HEAD source via `brew install --HEAD wax`.
#
# After the first release the CI workflow rewrites this file with versioned
# URLs and SHA256s so `brew install wax` fetches a pre-built binary.
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
