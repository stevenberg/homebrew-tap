class Ngrok < Formula
  desc "Introspected tunnels to localhost"
  homepage "https://ngrok.com"
  version "2.3.18"
  url "https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-darwin-amd64.zip"
  sha256 "abb643bdba7ade5dabd60488b866804d814a41d4d7144fa09e01c9260e93659d"

  def install
    prefix.install Dir["*"]
    bin.install_symlink "#{prefix}/ngrok"
  end
end
