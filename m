Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by mx1.pokylinux.org (Postfix) with ESMTP id 736FB4C811A7
	for <poky@yoctoproject.org>; Tue, 25 Jan 2011 12:07:48 -0600 (CST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PI9cFu025161; Tue, 25 Jan 2011 18:09:39 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id TPMQIBEIHfpK; Tue, 25 Jan 2011 18:09:38 +0000 (GMT)
Received: from [192.168.1.45] (tim [93.97.173.237]) (authenticated bits=0)
	by dan.rpsys.net (8.14.2/8.14.2/Debian-2build1) with ESMTP id
	p0PI9VwU025145
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 25 Jan 2011 18:09:33 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <8dfcbdd661ed90787b9680ea1bcdae45c4372a67.1295371995.git.ke.yu@intel.com>
References: <cover.1295371995.git.ke.yu@intel.com>
	<8dfcbdd661ed90787b9680ea1bcdae45c4372a67.1295371995.git.ke.yu@intel.com>
Date: Tue, 25 Jan 2011 18:07:13 +0000
Message-ID: <1295978833.14388.50360.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 10/11] bb.fetch2: add git unpack
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Jan 2011 18:07:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Ke,

On Wed, 2011-01-19 at 01:48 +0800, Yu Ke wrote:
> git download will clone git repo to local, and git unpack just do a clone with referrence to the original repo
> 
> Signed-off-by: Yu Ke <ke.yu@intel.com>
> ---
>  bitbake/lib/bb/fetch2/git.py |   16 ++++++++++++++++
>  1 files changed, 16 insertions(+), 0 deletions(-)
> 
> diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
> index 438756a..bb62a87 100644
> --- a/bitbake/lib/bb/fetch2/git.py
> +++ b/bitbake/lib/bb/fetch2/git.py
> @@ -193,6 +193,22 @@ class Git(Fetch):
>          os.chdir(ud.clonedir)
>          bb.utils.prunedir(codir)
>  
> +    def unpack(self, ud, destdir, d):
> +        """ unpack the downloaded src to destdir"""
> +        subdir = ud.parm.get("subpath", "")
> +        if subdir != "":
> +            readpathspec = ":%s" % (subdir)
> +        else:
> +            readpathspec = ""
> +
> +        # extract to ${WORKDIR}/git
> +        destdir = destdir + "/git/"
> +
> +        os.chdir(ud.clonedir)
> +        runfetchcmd("%s read-tree %s%s" % (ud.basecmd, ud.tag, readpathspec), d)
> +        runfetchcmd("%s checkout-index -q -f --prefix=%s -a" % (ud.basecmd, destdir), d)
> +        return 1
> +
>      def supports_srcrev(self):
>          return True

I know we talked about this via email and you revised the description
to:

http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/commit/?h=kyu3/fetcher-api-v3&id=6df3037ea3679b804c2679afba8377b7e3796aca

I'm wondering if we could optimise this cp command to be a "git clone
-l" or a "git clone -s" (see man git-clone). I'm cc'ing Bruce for his
thoughts on this and whether the linux-yocto tools would have a problem
with either of these.

The idea would be one central checkout with the references in and then
the subcomponents would all just reference the one local clone saving
diskspace and time.

Cheers,

Richard
 



