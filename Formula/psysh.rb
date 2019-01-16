class Psysh < Formula
  desc "A REPL for PHP"
  homepage "https://psysh.org/"
  url "https://github.com/bobthecow/psysh/releases/download/v0.9.9/psysh-v0.9.9.tar.gz"
  sha256 "dc466f88dbb00140d95c23f8826e9d235ed407d1360dc35cf90273a7c08acb4e"

  def install
    bin.install "psysh"
  end
end
