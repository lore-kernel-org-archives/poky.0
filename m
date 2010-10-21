Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4EB9A4C80054
	for <poky@pokylinux.org>; Thu, 21 Oct 2010 08:50:18 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LDoHqW004037;
	Thu, 21 Oct 2010 14:50:17 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03414-09; Thu, 21 Oct 2010 14:50:13 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LDoBrR004028
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Oct 2010 14:50:11 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4CBF4A78.6000908@windriver.com>
References: <4CBF4A78.6000908@windriver.com>
Date: Thu, 21 Oct 2010 14:50:01 +0100
Message-ID: <1287669001.16386.499.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@pokylinux.org>
Subject: Re: [pull] syslog.conf update
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Thu, 21 Oct 2010 13:50:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-10-20 at 15:00 -0500, Mark Hatle wrote:
> The following changes since commit 1d5567c43df124175b4c4454d2f316bb20242509:
> 
>    poky-default-revisions: define SRCREV for pseudo-nativesdk (2010-10-20 
> 17:49:59 +0100)
> 
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib mhatle/syslog
> 
> Mark Hatle (1):
>        busybox/sysklogd: syslog.conf files
> 
>   meta/recipes-core/busybox/busybox.inc          |    7 +++++--
>   meta/recipes-core/busybox/busybox_1.16.2.bb    |    2 +-
>   meta/recipes-extended/sysklogd/sysklogd.inc    |    5 ++++-
>   meta/recipes-extended/sysklogd/sysklogd_1.5.bb |    2 +-
>   4 files changed, 11 insertions(+), 5 deletions(-)

Merged into master, thanks.

Richard


