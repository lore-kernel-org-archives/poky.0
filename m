Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 05C9E4C80AAA
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 16:10:53 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ELApZo007288;
	Mon, 14 Mar 2011 21:10:51 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 06965-07; Mon, 14 Mar 2011 21:10:48 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2ELAj6C007282
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 14 Mar 2011 21:10:45 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Joshua Lock <josh@linux.intel.com>
In-Reply-To: <cover.1300113623.git.josh@linux.intel.com>
References: <cover.1300113623.git.josh@linux.intel.com>
Date: Mon, 14 Mar 2011 21:10:39 +0000
Message-ID: <1300137039.30423.595.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/2] Image creator bug fixes
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
X-List-Received-Date: Mon, 14 Mar 2011 21:10:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-14 at 14:45 +0000, Joshua Lock wrote:
> From: Joshua Lock <josh@linux.intel.com>
> 
> This series contains a couple of GUI bug fixes intended for Bernard and master.
> 
> The first stops unbuildable targets from breaking the image creator, though I'd
> like to investigate the possibility of stopping such recipes even being shown
> in the GUI I thought it useful to provide a workaround for the Bernard release.
> 
> The second fixes a logic inversions and ensures that the cancel button does the
> right thing.
> 
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>   Branch: josh/hob-bernard
>   Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=josh/hob-bernard
> 
> Thanks,
>     Joshua Lock <josh@linux.intel.com>
> ---
> 
> 
> Joshua Lock (2):
>   bitbake/cooker: don't error in prepareTreeData for unbuildable
>     targets
>   bitbake/hob: fix cancel button
> 
>  bitbake/lib/bb/cooker.py |    4 +++-
>  bitbake/lib/bb/ui/hob.py |    2 +-
>  2 files changed, 4 insertions(+), 2 deletions(-)

Merged into poky master, thanks.

Richard



