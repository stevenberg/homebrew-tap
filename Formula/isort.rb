class Isort < Formula
  include Language::Python::Virtualenv

  desc "A Python utility / library to sort imports."
  homepage "https://github.com/timothycrosley/isort"
  url "https://files.pythonhosted.org/packages/43/00/8705e8d0c05ba22f042634f791a61f4c678c32175763dcf2ca2a133f4739/isort-4.3.21.tar.gz"
  sha256 "54da7e92468955c4fceacd0c86bd0ec997b0e1ee80d97f67c35a78b719dccab1"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    "#{bin}/isort -v"
  end
end
