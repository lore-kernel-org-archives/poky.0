Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id ECCDF4C803C9
	for <poky@pokylinux.org>; Thu, 21 Oct 2010 07:52:02 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LCq1Aw002772;
	Thu, 21 Oct 2010 13:52:01 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02756-01; Thu, 21 Oct 2010 13:51:57 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9LCpqlU002766
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 21 Oct 2010 13:51:52 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Mei, Lei" <lei.mei@intel.com>
In-Reply-To: <749B9D3DBF0F054390025D9EAFF47F222FE902E6@shsmsx501.ccr.corp.intel.com>
References: <749B9D3DBF0F054390025D9EAFF47F222FE8FA5E@shsmsx501.ccr.corp.intel.com>
	<1287489755.1720.1284.camel@rex>
	<749B9D3DBF0F054390025D9EAFF47F222FE8FF87@shsmsx501.ccr.corp.intel.com>
	<1287566700.16386.33.camel@rex>
	<749B9D3DBF0F054390025D9EAFF47F222FE902E6@shsmsx501.ccr.corp.intel.com>
Date: Thu, 21 Oct 2010 13:51:42 +0100
Message-ID: <1287665502.16386.455.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PULL] at: Non root install patch is not necessary (Bug 246)
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
X-List-Received-Date: Thu, 21 Oct 2010 12:52:03 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2010-10-21 at 13:17 +0800, Mei, Lei wrote:
> Hi Richard,
>     I have added the description to the nonstripbinaries.patch, please check it, thank you~
> 
>  meta/recipes-extended/at/at_3.1.12.bb                 |    2 
>  meta/recipes-extended/at/files/nonrootinstall.patch   |   75 ------------------
>  meta/recipes-extended/at/files/nonstripbinaries.patch |   25 ++++++
>  3 files changed, 26 insertions(+), 76 deletions(-)
> 
> Mei Lei (1):
>       at: remove nonrootinstall patch and modify some relevant files
> 
> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=lmei3/distro

Merged to master, thanks.

As a note for future, no # to comment lines is needed in a patch header.

Cheers,

Richard


