class Mx < Formula
  desc "Modern open-source scripting language for building web apps and APIs"
  homepage "https://mxscript.com"
  version "0.37.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.37.0/mx_0.37.0_darwin_arm64.tar.gz"
      sha256 "98bcf8b0f15295fb68cec299ad89c92f60c0c393ace54d4fda075b6399342959"
    end
    on_intel do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.37.0/mx_0.37.0_darwin_amd64.tar.gz"
      sha256 "66b4aa838b0efe1f25dbe759f170c4b63b9e9d0223b53b0b95ddf5d87dd7c493"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.37.0/mx_0.37.0_linux_arm64.tar.gz"
      sha256 "dc13d2e359dd90e847c4120a5824954f2f5c64a4724ef4d1ef96e6eeccf58292"
    end
    on_intel do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.37.0/mx_0.37.0_linux_amd64.tar.gz"
      sha256 "f1eb42df0c163d765c0a905335adfda78003b7cae835bb1479f40dbbb740e2fa"
    end
  end

  def install
    bin.install "mx"
  end

  test do
    # GoReleaser builds strip the leading "v", so the binary prints
    # "MX Script 0.37.0" (no v) — match on the bare version number.
    output = shell_output("#{bin}/mx version").chomp
    assert_match "MX Script #{version}", output
  end
end
