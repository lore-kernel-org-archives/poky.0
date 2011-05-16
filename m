Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id ACA034C80852
	for <poky@yoctoproject.org>; Mon, 16 May 2011 14:49:14 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4GJnCZF022898;
	Mon, 16 May 2011 20:49:12 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22273-10; Mon, 16 May 2011 20:49:08 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p4GJn0jP022892
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 16 May 2011 20:49:03 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1305143302.git.josh@linux.intel.com>
References: <cover.1305143302.git.josh@linux.intel.com>
Date: Mon, 16 May 2011 20:48:59 +0100
Message-ID: <1305575339.3424.101.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix GUI's
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
X-List-Received-Date: Mon, 16 May 2011 19:49:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-05-11 at 13:02 -0700, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> A recent sysnc with upstream BitBake changed the behaviour of cache
> loading such that we need to handle the ParseStarted event not having
> a useful total value.
> 
> This patch ensures that our three Gtk+ GUI's will continue to work as
> expected.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/gui
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/gui
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>
> ---
> 
> 
> Joshua Lock (1):
>   bitbake/ui: Fix Gtk+ GUI's after recent cache changes
> 
>  bitbake/lib/bb/ui/crumbs/hobeventhandler.py |    2 ++
>  bitbake/lib/bb/ui/crumbs/runningbuild.py    |    4 +++-
>  bitbake/lib/bb/ui/depexp.py                 |    2 ++
>  3 files changed, 7 insertions(+), 1 deletions(-)

Merged to bitbake and to master, thanks.

Richard



