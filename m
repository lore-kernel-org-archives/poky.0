Return-Path: <rpurdie@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id A73814C810D2
	for <poky@lists.pokylinux.org>; Mon, 18 Oct 2010 18:22:12 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id D7BEC12EC21F; Mon, 18 Oct 2010 18:57:34 -0500 (CDT)
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id 77ABE12EC201
	for <poky@o-hand.com>; Mon, 18 Oct 2010 18:57:34 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9INMBXL023229
	for <poky@o-hand.com>; Tue, 19 Oct 2010 00:22:11 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 22845-06 for <poky@o-hand.com>; Tue, 19 Oct 2010 00:22:07 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9INM5tF023223
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <poky@o-hand.com>; Tue, 19 Oct 2010 00:22:06 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: poky@o-hand.com
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504CEC946920@shsmsx502.ccr.corp.intel.com>
References: <625BA99ED14B2D499DC4E29D8138F1504CEC946920@shsmsx502.ccr.corp.intel.com>
Date: Tue, 19 Oct 2010 00:22:01 +0100
Message-ID: <1287444121.1720.513.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Re: [PATCH] sed: use ALTERNATIVE_LINK
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
X-List-Received-Date: Mon, 18 Oct 2010 23:22:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-10-18 at 18:00 +0800, Tian, Kevin wrote:
> meta/recipes-extended/sed/sed_4.1.2.bb |    3 ++-
>  meta/recipes-extended/sed/sed_4.2.1.bb |    3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> commit 36cc27bebedcc2dee74fef14732b84044ee5c17b
> Author: Kevin Tian <kevin.tian@intel.com>
> Date:   Mon Oct 18 17:38:32 2010 +0800
> 
>     sed: use ALTERNATIVE_LINK
> 
>     update-alternatives.bbclass assumes /usr/bin/sed if ALTERNATIVE_LINK is not
>     specified, however sed has changed its default installation directory to
>     /bin/sed. This causes below errors at the first boot of lsb image:
> 
>     update-alternatives: Error: cannot register alternative sed to /usr/bin/sed
>     since it is already registered to /bin/sed
> 
>     This fixes [BUGID #478]
> 
>     Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=tk/master

Merged into master, thanks.

Richard


