class Pylint < Formula
  include Language::Python::Virtualenv

  desc "It's not just a linter that annoys you!"
  homepage "http://pylint.pycqa.org"
  url "https://github.com/PyCQA/pylint/archive/pylint-2.2.2.tar.gz"
  sha256 "914585f9ce4d01f6e00d90a1041815b7cea5b596a92718d8928bb034b8f29144"

  depends_on "python"

  resource "astroid" do
    url "https://files.pythonhosted.org/packages/73/5f/560f729a496a27b658687d90ece2865c9b8ba60f28f7460f5ebf2acf8c4f/astroid-2.0.4.tar.gz"
    sha256 "c7013d119ec95eb626f7a2011f0b63d0c9a095df9ad06d8507b37084eada1a8d"
  end

  resource "isort" do
    url "https://files.pythonhosted.org/packages/b1/de/a628d16fdba0d38cafb3d7e34d4830f2c9cb3881384ce5c08c44762e1846/isort-4.3.4.tar.gz"
    sha256 "b9c40e9750f3d77e6e4d441d8b0266cf555e7cdabdcff33c4fd06366ca761ef8"
  end

  resource "lazy-object-proxy" do
    url "https://files.pythonhosted.org/packages/55/08/23c0753599bdec1aec273e322f277c4e875150325f565017f6280549f554/lazy-object-proxy-1.3.1.tar.gz"
    sha256 "eb91be369f945f10d3a49f5f9be8b3d0b93a4c2be8f8a5b83b0571b8123e0a7a"
  end

  resource "mccabe" do
    url "https://files.pythonhosted.org/packages/06/18/fa675aa501e11d6d6ca0ae73a101b2f3571a565e0f7d38e062eec18a91ee/mccabe-0.6.1.tar.gz"
    sha256 "dd8d182285a0fe56bace7f45b5e7d1a6ebcbf524e8f3bd87eb0f125271b8831f"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/a0/47/66897906448185fcb77fc3c2b1bc20ed0ecca81a0f2f88eda3fc5a34fc3d/wrapt-1.10.11.tar.gz"
    sha256 "d4d560d479f2c21e1b5443bbd15fe7ec4b37fe7e53d335d3b9b0a7b1226fe3c6"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    "#{bin}/pylint --version"
  end
end
