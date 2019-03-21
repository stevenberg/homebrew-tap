class Isort < Formula
  include Language::Python::Virtualenv

  desc "A Python utility / library to sort imports."
  homepage "https://github.com/timothycrosley/isort"
  url "https://files.pythonhosted.org/packages/4c/d0/54d873aa05cea889fa65cb9241b6985460a12965f09a17f7c542007487af/isort-4.3.15.tar.gz"
  sha256 "96151fca2c6e736503981896495d344781b60d18bfda78dc11b290c6125ebdb6"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    "#{bin}/isort -v"
  end
end
