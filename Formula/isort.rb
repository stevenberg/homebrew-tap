class Isort < Formula
  include Language::Python::Virtualenv

  desc "A Python utility / library to sort imports."
  homepage "https://github.com/timothycrosley/isort"
  url "https://files.pythonhosted.org/packages/08/d2/bbbb582ea75a3237e16e7d1f37fa3bda72e9690097d7a24dfd7d80f899d0/isort-4.3.16.tar.gz"
  sha256 "08f8e3f0f0b7249e9fad7e5c41e2113aba44969798a26452ee790c06f155d4ec"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    "#{bin}/isort -v"
  end
end
