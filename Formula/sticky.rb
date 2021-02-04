class Sticky < Formula
	desc "Use this to build automation te ease your life" 
	homepage "https://sticky.sh"
	url "https://github.com/stickysh/cli/archive/0.9.0.tar.gz"
	sha256 "39ccc4b63459931fd8840a91d4228ebbf7e5a7a00468d76523645aebc7f7e4bd"

	depends_on "go" => :build

	def install
	    system "go", "build", *std_go_args, "-ldflags", "-s -w"
  	end
	
	test do
        system bin/"sticky", "version"
	end
end
