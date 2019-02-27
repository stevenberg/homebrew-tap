class Isort < Formula
  include Language::Python::Virtualenv

  desc "A Python utility / library to sort imports."
  homepage "https://github.com/timothycrosley/isort"
  url "https://github.com/timothycrosley/isort/archive/4.3.9.tar.gz"
  sha256 "c5bea80b428588252848cb08a43c0636cb5af3e37431c869f5c5470774bf29ff"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    "#{bin}/isort -v"
  end
end
