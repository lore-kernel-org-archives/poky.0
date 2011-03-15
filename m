Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id E15B54C80AAF
	for <poky@yoctoproject.org>; Mon, 14 Mar 2011 20:22:09 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2F1M74i011146;
	Tue, 15 Mar 2011 01:22:07 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 11042-03; Tue, 15 Mar 2011 01:22:02 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p2F1LwHY011140
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 15 Mar 2011 01:21:58 GMT
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
In-Reply-To: <4D7EA43E.2000202@intel.com>
References: <4D7EA43E.2000202@intel.com>
Date: Tue, 15 Mar 2011 01:21:51 +0000
Message-ID: <1300152111.30423.956.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH 0/1] Cairo: Fixing glib-2.0 dependency
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
X-List-Received-Date: Tue, 15 Mar 2011 01:22:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-03-14 at 16:26 -0700, Elizabeth Flanagan wrote:
> Pull URL: git://git.pokylinux.org/poky-contrib.git
>    Branch: eflanagan/cairo
>    Browse: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=eflanagan/cairo
> 
> Thanks,
>      Beth Flanagan <elizabeth.flanagan@intel.com>
> ---
> 
> 
> Beth Flanagan (1):
>    cairo_1.10.2: Fix RDEPENDS to include glib-2.0
> 
>   meta/recipes-graphics/cairo/cairo_1.10.2.bb |    4 ++--
>   1 files changed, 2 insertions(+), 2 deletions(-)

I merged the fixed version of this updating DEPENDS to OECore+Poky
master.

Cheers,

Richard


