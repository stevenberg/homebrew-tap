class Pylint < Formula
  include Language::Python::Virtualenv

  desc "It's not just a linter that annoys you!"
  homepage "http://pylint.pycqa.org"
  url "https://files.pythonhosted.org/packages/01/8b/538911c0ebc2529f15004f4cb07e3ca562bb9aacea5df89cc25b62e01891/pylint-2.3.1.tar.gz"
  sha256 "723e3db49555abaf9bf79dc474c6b9e2935ad82230b10c1138a71ea41ac0fff1"

  depends_on "python"

  resource "astroid" do
    url "https://files.pythonhosted.org/packages/85/e3/4ec967f7db4644b1fe849e4724191346d3e3f8172631ad7266f7f17a6018/astroid-2.2.5.tar.gz"
    sha256 "6560e1e1749f68c64a4b5dee4e091fce798d2f0d84ebe638cf0e0585a343acf4"
  end

  resource "isort" do
    url "https://files.pythonhosted.org/packages/4c/d0/54d873aa05cea889fa65cb9241b6985460a12965f09a17f7c542007487af/isort-4.3.15.tar.gz"
    sha256 "96151fca2c6e736503981896495d344781b60d18bfda78dc11b290c6125ebdb6"
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
    url "https://files.pythonhosted.org/packages/dd/bf/4138e7bfb757de47d1f4b6994648ec67a51efe58fa907c1e11e350cddfca/six-1.12.0.tar.gz"
    sha256 "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73"
  end

  resource "typed-ast" do
    url "https://files.pythonhosted.org/packages/fc/c6/61d6410fc70fda073bd1810f9b7f7022f00146b108f278a0c00041bfe5b0/typed-ast-1.3.1.tar.gz"
    sha256 "606d8afa07eef77280c2bf84335e24390055b478392e1975f96286d99d0cb424"
  end

  resource "wrapt" do
    url "https://files.pythonhosted.org/packages/67/b2/0f71ca90b0ade7fad27e3d20327c996c6252a2ffe88f50a95bba7434eda9/wrapt-1.11.1.tar.gz"
    sha256 "4aea003270831cceb8a90ff27c4031da6ead7ec1886023b80ce0dfe0adf61533"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    "#{bin}/pylint --version"
  end
end
