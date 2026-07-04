class Mlbt < Formula
  desc "Interact with MLB's Statcast API and even watch a live baseball game in your terminal."
  homepage "https://github.com/mlb-rs/mlbt"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-apple-darwin.tar.gz"
      sha256 "486e8c943b3ce3384a43eb4d52f5cae29d640da59fe3af0499a277d1333bf34d"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-apple-darwin.tar.gz"
      sha256 "4b65ec9443981458367eb4125f16a23b287137ccc347662bd50ba35eacb2ed4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9064d442b162d1eb4a9db93d95feb05e7d14441c3816d2b32cf2b74a9f8e8b57"
    end
    on_intel do
      url "https://github.com/mlb-rs/mlbt/releases/download/v#{version}/mlbt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a9ab756eb58b1d4cc26ec6cfe511441b3455df1e948abdbc46fa924e82ca1f17"
    end
  end

  def install
    bin.install "mlbt"
  end

  def caveats
    <<~EOS
      Play ball! Run with "mlbt"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mlbt --version")
  end
end
