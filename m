Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E91B4E00720
	for <poky@yoctoproject.org>; Thu, 10 Jan 2013 15:57:59 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id r0ANvsXX012261;
	Thu, 10 Jan 2013 23:57:54 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 02897-07; Thu, 10 Jan 2013 23:57:50 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id r0ANvkt2012255
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 10 Jan 2013 23:57:47 GMT
Message-ID: <1357862268.4072.1.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Felipe Ferreri Tonello <eu@felipetonello.com>
Date: Thu, 10 Jan 2013 23:57:48 +0000
In-Reply-To: <50EF1521.60200@felipetonello.com>
References: <1357691823-8155-1-git-send-email-eu@felipetonello.com>
	<969F26A8BAB325438E7EB80D3C3134FB161DBDFD@IRSMSX102.ger.corp.intel.com>
	<1357736629.13022.55.camel@ted> <50EF1521.60200@felipetonello.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [PATCH] connman: fixed init script, so it can run with nfs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Jan 2013 23:58:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2013-01-10 at 11:23 -0800, Felipe Ferreri Tonello wrote:
> Richard and Cristian,
> 
> On 01/09/2013 05:03 AM, Richard Purdie wrote:
> > On Wed, 2013-01-09 at 10:12 +0000, Iorga, Cristian wrote:
> >> Hello Felipe,
> >>
> >> I have some questions regarding this patch:
> >>
> >> 1. On which hardware/machine have you tested this patch? (real hardware, qemu machine, etc)
> >> 2. In what way is connman affecting nfs? In other words, what is the root cause?
> >> 3. Which version of connman are you using?
> >>
> >> I am asking these questions because I am working on something somehow related, and I think a more general fix might be needed.
> >
> > I'd also add that:
> >
> > a) Patches to this part of the tree need to go to the OE-Core mailing list
> 
> I saw on openembedded tree that connman recipes are old. They are not 
> the same as in poky.
> 
> I'm always confused about this. Where is oe-core that poky and oe share?

These two repositories should be in sync in terms of file level content
of the meta directory:

http://cgit.openembedded.org/openembedded-core/log/

http://git.yoctoproject.org/cgit/cgit.cgi/poky/log/

Were you looking at openembedded or openembedded-core?

Cheers,

Richard


