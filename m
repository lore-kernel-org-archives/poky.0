Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 257394C801BF
	for <poky@pokylinux.org>; Fri, 22 Oct 2010 04:24:58 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9M9OsnN024127;
	Fri, 22 Oct 2010 10:24:54 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 24086-01; Fri, 22 Oct 2010 10:24:50 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9M9Ol5t024121
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 22 Oct 2010 10:24:47 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
In-Reply-To: <1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com>
References: <20101020085626.GA14696@qhe2-db>
	<1865303E0DED764181A9D882DEF65FB674E057FB47@shsmsx502.ccr.corp.intel.com>
Date: Fri, 22 Oct 2010 10:24:34 +0100
Message-ID: <1287739474.16386.651.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@pokylinux.org" <poky@pokylinux.org>
Subject: Re: [PULL] libtheora: add DEPENDS on libogg
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
X-List-Received-Date: Fri, 22 Oct 2010 09:24:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-10-22 at 08:54 +0800, Cui, Dexuan wrote:
> $ scripts/create-pull-request -r 27d06858b5f3138039bddecc0eaaee1e05e21b48 -b dcui/master
> Note: <commit_id> parameter assumed as 'HEAD'
> 
>  meta/recipes-multimedia/libtheora/libtheora_1.1.1.bb |    4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> Dexuan Cui (1):
>       libtheora: add DEPENDS on libogg
> 
> Pull URL: http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dcui/master

Merged into master, thanks!

Richard


