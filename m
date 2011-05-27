Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id ABA9D4C80A5B
	for <poky@yoctoproject.org>; Fri, 27 May 2011 12:12:59 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4RHCqik004481;
	Fri, 27 May 2011 18:12:52 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04207-06; Fri, 27 May 2011 18:12:44 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4RHCe86004470
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 27 May 2011 18:12:41 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Yu Ke <ke.yu@intel.com>
In-Reply-To: <cover.1306486223.git.ke.yu@intel.com>
References: <cover.1306486223.git.ke.yu@intel.com>
Date: Fri, 27 May 2011 18:12:35 +0100
Message-ID: <1306516355.27470.290.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Darren Hart <dvhart@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 0/4] fetcher2 git cleanup
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
X-List-Received-Date: Fri, 27 May 2011 17:13:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-27 at 16:53 +0800, Yu Ke wrote:
> This patch series is some clean up of the git fetcher according to the comment
> from mailing list.
> 
> The following changes since commit 9bccbc5fbc71b331911b558a2ba15e0a6d0046b4:
>   Nitin A Kamble (1):
>         tcmode-default: workaround for gcc 4.6.0 failure on beagleboard
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/poky-contrib kyu3/git-cleanup
>   http://git.pokylinux.org/cgit/cgit.cgi/poky-contrib/log/?h=kyu3/git-cleanup
> 
> Yu Ke (4):
>   fetche2 git: change default protocol from rsync to git
>   fetcher2 git: unify the nocheckout option format
>   fetcher2/git: add document for git fetcher supported options
>   fetch2 git: enhance the unpack by using "git checkout"
> 
>  bitbake/lib/bb/fetch2/git.py |   51 ++++++++++++++++++++++++++++++++++-------
>  1 files changed, 42 insertions(+), 9 deletions(-)

Merged to bitbake upstream. In future could you keep the commit message
summary prefixes consistent please :)

Cheers,

Richard



