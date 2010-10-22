Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 253454C801BF
	for <poky@pokylinux.org>; Fri, 22 Oct 2010 04:26:39 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9M9QduZ024165;
	Fri, 22 Oct 2010 10:26:39 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24086-02; Fri, 22 Oct 2010 10:26:31 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9M9QRNG024154
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 22 Oct 2010 10:26:28 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4CC07816.3040908@windriver.com>
References: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com>
	<1287489755.1720.1284.camel@rex>
	<749B9D3DBF0F054390025D9EAFF47F222FE8FF87@shsmsx501.ccr.corp.intel.com>
	<1287566700.16386.33.camel@rex>
	<749B9D3DBF0F054390025D9EAFF47F222FE902E6@shsmsx501.ccr.corp.intel.com>
	<1287665502.16386.455.camel@rex>  <4CC07816.3040908@windriver.com>
Date: Fri, 22 Oct 2010 10:26:15 +0100
Message-ID: <1287739575.16386.652.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PULL] Fix at -- was Re: [PULL] at: Non root install patch is not necessary (Bug246)
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
X-List-Received-Date: Fri, 22 Oct 2010 09:26:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-21 at 12:27 -0500, Mark Hatle wrote:
> This commit introduced a bug, the following fixes the issue:
> 
> Pull request follows....
> 
> The following changes since commit f1a209b142d2319d2594b051c01d9997184bfcb4:
> 
>    busybox/sysklogd: syslog.conf files (2010-10-21 14:05:57 +0100)
> 
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib.git mhatle/at
> 
> Mark Hatle (1):
>        at: Fix nonstripbinaries.patch
> 
>   .../at/files/nonstripbinaries.patch                |    6 +++---
>   1 files changed, 3 insertions(+), 3 deletions(-)

Merged into master, thanks.

Richard


