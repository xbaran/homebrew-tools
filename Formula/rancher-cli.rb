class RancherCli < Formula
  desc "The Rancher CLI is a unified tool to manage your Rancher server"
  homepage "https://github.com/rancher/cli"
  url "https://github.com/rancher/cli/archive/v0.6.12.tar.gz"
  sha256 "c1778ee373c8ffcf4a66e3f26fbe6ace794bf9bb66b945f846ca177ee365e71e"

  bottle do
    cellar :any_skip_relocation
    sha256 "1994ceeb62639571dae6fbd7d9b8968ba5634fea7ef7e94f265e192a8277ed75" => :mojave
    sha256 "637bc7f664fd8c9b84bfddb31e47cc074049434160aa7fdd8db89b1f0e10983f" => :high_sierra
    sha256 "29b6bb40da3c8e72e1fb0a6ef734e13817b02f0a697749902dd48efddf80ae10" => :sierra
    sha256 "4587f6c4e7b452db3d6545e637222e2f572f69668fb29db9fdfa14dc53de370a" => :el_capitan
  end

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/rancher/cli/").install Dir["*"]
    system "go", "build", "-ldflags",
           "-w -X github.com/rancher/cli/version.VERSION=#{version}",
           "-o", "#{bin}/rancher",
           "-v", "github.com/rancher/cli/"
  end

  test do
    system bin/"rancher", "help"
  end
end
