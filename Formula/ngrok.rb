class Ngrok < Formula
  desc "Introspected tunnels to localhost"
  homepage "https://ngrok.com"
  version "2.2.8"
  url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip"
  sha256 "ad6b987444321929d3338f3ca8267fffb63d91d4cbb8723b353ed8a8726c51c9"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/ngrok"
  end
end
