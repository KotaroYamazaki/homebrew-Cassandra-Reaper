class HomebrewCassandrareaper < Formula
  homepage "http://cassandra-reaper.io"
  url "https://github.com/thelastpickle/cassandra-reaper/releases/download/1.2.2/cassandra-reaper-1.2.2-release.tar.gz"
  version "1.2.2"
  sha256 "720aff69e3205301bc07399afc46dae3568d8effffa3712f1852a169ce9801db"

  def install
    prefix.install "bin"
    mv "server/target" "cassandrareaper"
    etc.install "cassandrareaper"
    share.install "cassandrareaper"
  end
end