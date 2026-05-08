class Inauguration < Formula
  desc "Fast Swift developer toolchain pipeline CLI"
  homepage "https://github.com/semitechnological/inauguration"
  license "MPL-2.0"
  head "https://github.com/semitechnological/inauguration.git", branch: "master"

  depends_on "rust" => :build

  def install
    cd "in-cli" do
      system "cargo", "install", *std_cargo_args(path: ".")
    end
  end

  test do
    assert_match "inauguration", shell_output("#{bin}/in --help")
  end
end
