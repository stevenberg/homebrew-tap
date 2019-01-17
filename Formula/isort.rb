class Isort < Formula
  include Language::Python::Virtualenv

  desc "A Python utility / library to sort imports."
  homepage "https://github.com/timothycrosley/isort"
  url "https://github.com/timothycrosley/isort/archive/4.3.4.tar.gz"
  sha256 "c0fa470f580e62982e5983fae03120e57df96a74733e53d3ae2ad47ec0047610"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    "#{bin}/isort -v"
  end
end
