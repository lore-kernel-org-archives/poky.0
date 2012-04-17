Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4E1EE0044A
	for <poky@yoctoproject.org>; Tue, 17 Apr 2012 04:19:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HBJFsS012415;
	Tue, 17 Apr 2012 12:19:15 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 12105-04; Tue, 17 Apr 2012 12:19:10 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3HBJ8Lx012409
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 17 Apr 2012 12:19:10 +0100
Message-ID: <1334661552.616.78.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Dongxiao Xu <dongxiao.xu@intel.com>
Date: Tue, 17 Apr 2012 12:19:12 +0100
In-Reply-To: <3398cf01806d1d585e5b92c1ad36116021af86d3.1334648692.git.dongxiao.xu@intel.com>
References: <cover.1334648692.git.dongxiao.xu@intel.com>
	<3398cf01806d1d585e5b92c1ad36116021af86d3.1334648692.git.dongxiao.xu@intel.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] scripts/bitbake: Remove sanity_info after run "bitbake -e"
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
X-List-Received-Date: Tue, 17 Apr 2012 11:19:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-04-17 at 15:46 +0800, Dongxiao Xu wrote:
> With latest master, we found certain sanity check doesn't work
> (e.x., the network check). This is because it created the sanity_info
> file at the first time when running "bitbake -e" command in
> scripts/bitbake, therefore while running the real bitbake command,
> it finds that the sanity_check file does exist so it skip the network
> check.
> 
> The fix is to remove the sanity_info file after running "bitbake -e"
> command.
> 
> Signed-off-by: Dongxiao Xu <dongxiao.xu@intel.com>
> ---
>  scripts/bitbake |    1 +
>  1 files changed, 1 insertions(+), 0 deletions(-)
> 
> diff --git a/scripts/bitbake b/scripts/bitbake
> index 3772d82..a6fb2e5 100755
> --- a/scripts/bitbake
> +++ b/scripts/bitbake
> @@ -73,6 +73,7 @@ if [ $needpseudo = "1" ]; then
>          PSEUDOBINDIR=`cat $BUILDDIR/pseudodone`
>      else
>          PSEUDOBINDIR=`bitbake -e | grep STAGING_BINDIR_NATIVE=\" | cut -d '=' -f2 | cut -d '"' -f2`
> +        rm -rf conf/sanity_info
>      fi
>      if [ -e "$PSEUDOBINDIR/pseudo" ]; then
>          buildpseudo="0"

This forces the sanity tests to run on every bitbake run which is not
acceptable. We need to find a better solution.

This also sets off alarm bells in my mind. If the sanity tests are
failing, shouldn't they fail equally on a subsquent run of bitbake?

See my follow up patch which should fix this problem in a better way.

Cheers,

Richard


