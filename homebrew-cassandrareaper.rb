# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HomebrewCassandrareaper < Formula
  desc "test"
  homepage "http://cassandra-reaper.io"
  url "https://github.com/thelastpickle/cassandra-reaper/releases/download/1.2.2/cassandra-reaper-1.2.2-release.tar.gz"
  version "1.2.2"
  sha256 "720aff69e3205301bc07399afc46dae3568d8effffa3712f1852a169ce9801db"

  depends_on "bower" => :build
  depends_on "maven" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "cmake", ".", *std_cmake_args
    Dir.chdir "src"
    system "mvn", "clean", "package" # if this fails, try separate make/make install steps
    prefix.install "server/target/cassandra-reaper-1.2.2.jar"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test homebrew-CassandraReaper`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
