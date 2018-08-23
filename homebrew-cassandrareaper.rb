class HomebrewCassandrareaper < Formula
  desc "test"
  homepage "http://cassandra-reaper.io"
  url "https://github.com/thelastpickle/cassandra-reaper/releases/download/1.2.2/cassandra-reaper-1.2.2-release.tar.gz"
  version "1.2.2"
  sha256 "720aff69e3205301bc07399afc46dae3568d8effffa3712f1852a169ce9801db"

  depends_on "bower" => :build
  depends_on "maven" => :build

  def install
    Dir.chdir "src"
    system "mvn", "clean", "package" # if this fails, try separate make/make install steps
    prefix.install "server/target/cassandra-reaper-1.2.2.jar"
  end
end
