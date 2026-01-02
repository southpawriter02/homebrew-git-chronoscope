# git-chronoscope Homebrew Formula
# Install: brew tap southpawriter02/git-chronoscope && brew install git-chronoscope

class GitChronoscope < Formula
  include Language::Python::Virtualenv

  desc "Generate time-lapse visualizations of Git repository evolution"
  homepage "https://github.com/southpawriter02/git-chronoscope"
  url "https://github.com/southpawriter02/git-chronoscope.git", branch: "main"
  version "1.0.0"
  license "MIT"

  depends_on "python@3.11"
  depends_on "ffmpeg"
  depends_on "git"

  resource "GitPython" do
    url "https://files.pythonhosted.org/packages/source/G/GitPython/GitPython-3.1.40.tar.gz"
    sha256 "22b126e9ffb671fdd0c129796343a02f069a7e8a5abb0eb0c71d1a1b5d14db3c"
  end

  resource "Pillow" do
    url "https://files.pythonhosted.org/packages/source/p/pillow/pillow-10.1.0.tar.gz"
    sha256 "e6bf8de6c36ed96c86ea3b6e1d5273c53f46ef518a062464cd7ef5dd2cf92e38"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/source/p/pygments/pygments-2.17.2.tar.gz"
    sha256 "da46cec9fd2de5be3a8a784f434e4c4ab670b4ff54d605c4c2717e9d49c4c367"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/source/t/tqdm/tqdm-4.66.1.tar.gz"
    sha256 "d88e651f9db8d8551a62556d3cff9e3034274ca5d66e93197cf2490e2dcb69c7"
  end

  resource "Flask" do
    url "https://files.pythonhosted.org/packages/source/f/flask/flask-3.0.0.tar.gz"
    sha256 "cfadcdb638b609361d29ec22360d6070a77d7463dcb3ab08d2c2f2f168845f58"
  end

  resource "Werkzeug" do
    url "https://files.pythonhosted.org/packages/source/w/werkzeug/werkzeug-3.0.1.tar.gz"
    sha256 "507e811ecea72b18a404947aded4b3390e1db8f826b494d76550ef45bb3b1dcc"
  end

  resource "Jinja2" do
    url "https://files.pythonhosted.org/packages/source/j/jinja2/jinja2-3.1.2.tar.gz"
    sha256 "31351a702a408a9e7595a8fc6150fc3f43bb6bf7e319770cbc0db9df9437e852"
  end

  resource "itsdangerous" do
    url "https://files.pythonhosted.org/packages/source/i/itsdangerous/itsdangerous-2.1.2.tar.gz"
    sha256 "5dbbc68b317e5e42f327f9021763545dc3fc3bfe22e6deb96aaf1fc38874156a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/source/c/click/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "MarkupSafe" do
    url "https://files.pythonhosted.org/packages/source/m/markupsafe/markupsafe-2.1.3.tar.gz"
    sha256 "af598ed32d6ae86f1b747b82783958b1a4ab8f617b06fe68795c7f026abbdcad"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"git-chronoscope", "--help"
  end
end
