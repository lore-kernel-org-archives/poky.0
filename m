Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9A63E4C808DE
	for <poky@pokylinux.org>; Mon, 18 Apr 2011 03:38:55 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I8cqvh010204;
	Mon, 18 Apr 2011 09:38:52 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09965-06; Mon, 18 Apr 2011 09:38:48 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I8chTD010198
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 09:38:43 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Zhai, Edwin" <edwin.zhai@intel.com>
In-Reply-To: <4DABE72B.8080009@intel.com>
References: <io2h0h$drr$1@dough.gmane.org> <1303105424.5518.40.camel@rex>
	<4DABE72B.8080009@intel.com>
Date: Mon, 18 Apr 2011 09:38:35 +0100
Message-ID: <1303115915.5518.74.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: web_svn with yocto 1.0 broken
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
X-List-Received-Date: Mon, 18 Apr 2011 08:38:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2011-04-18 at 15:24 +0800, Zhai, Edwin wrote:
> 
> Richard Purdie wrote:
> >
> > On Wed, 2011-04-13 at 00:42 +0300, Robert Berger wrote:
> > >
> > > ...
> > >
> > > | web_gtkhtml2.c:525:3: error: too many arguments to function
> > > 'css_parser_parse_stylesheet'
> > >
> > > ...
> > >
> > > Is there a fix for this?
> >
> > I've pushed a fix into the web repository for that problem (r131).
>
> RP,
> Thanks for your fix.
> Curious question, who's the current owner of the open-handed's project, 
> if I have a fix or patch for upstreaming?

Its complicated. Some projects are orphaned, some do still have people
who look after them. We're also in the process of migrating them all
away from SVN over to git too.

If people do have patches for things, send me email offlist and I'll try
and put you in touch with the right people on a case by case basis.

Cheers,

Richard





