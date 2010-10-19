Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id EA9014C80121
	for <poky@pokylinux.org>; Tue, 19 Oct 2010 15:33:56 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JKXrOE004359;
	Tue, 19 Oct 2010 21:33:53 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 03980-07; Tue, 19 Oct 2010 21:33:48 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9JKXh6p004349
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 19 Oct 2010 21:33:44 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
In-Reply-To: <AANLkTi=gui3bioeOXU5gcgu6SuzoKD=cYTgAgEygBSkj@mail.gmail.com>
References: <AANLkTi=gui3bioeOXU5gcgu6SuzoKD=cYTgAgEygBSkj@mail.gmail.com>
Date: Tue, 19 Oct 2010 21:33:37 +0100
Message-ID: <1287520417.16386.9.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky <poky@pokylinux.org>
Subject: Re: [PULL] [KERNEL] emenlow: logging / restart fixes
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
X-List-Received-Date: Tue, 19 Oct 2010 20:33:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-10-18 at 12:42 -0700, Bruce Ashfield wrote:
> The following fixes logging / restart issues with the emenlow.
[...]
>   ssh://git@git.pokylinux.org/poky-contrib zedd/kernel
> 
> Bruce Ashfield (1):
>       wrs_meta: emenlow updates
> 
>  .../conf/distro/include/poky-default-revisions.inc |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)

I've merged these into the Poky master branch, thanks.

Richard



