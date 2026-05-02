class Mx < Formula
  desc "Modern open-source scripting language for building web apps and APIs"
  homepage "https://mxscript.com"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.20.0/mx_0.20.0_darwin_arm64.tar.gz"
      sha256 "e9d6fa924509f4bb55286bc4a6205b04750dfa90e0021064f98e66d9b67e02ad"
    end
    on_intel do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.20.0/mx_0.20.0_darwin_amd64.tar.gz"
      sha256 "e3edaefb46da76a9e03d602e460520a731d42399b11fdeaa80352dc333a0e447"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.20.0/mx_0.20.0_linux_arm64.tar.gz"
      sha256 "e1b28adb9df889f51ab47e74fbc6a4b77e24de3563d8aaa8aaa3ad64b460717d"
    end
    on_intel do
      url "https://github.com/jlkdevelop/mxscript/releases/download/v0.20.0/mx_0.20.0_linux_amd64.tar.gz"
      sha256 "fb91ff0a474a573841561263af1e32c21f01d0c72a69d0f4e54008d124a4a894"
    end
  end

  def install
    bin.install "mx"
  end

  test do
    # GoReleaser builds strip the leading "v", so the binary prints
    # "MX Script 0.14.0" (no v) — match on the bare version number.
    output = shell_output("#{bin}/mx version").chomp
    assert_match "MX Script #{version}", output
  end
end
