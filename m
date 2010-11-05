Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 110714C8103F
	for <poky@pokylinux.org>; Fri,  5 Nov 2010 08:35:01 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA5DZ1iw021306;
	Fri, 5 Nov 2010 13:35:01 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 21026-05; Fri,  5 Nov 2010 13:34:56 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA5DYqso021296
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 5 Nov 2010 13:34:52 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4CCF15BA.6070108@windriver.com>
References: <4CCE94E0.50903@windriver.com>  <4CCF15BA.6070108@windriver.com>
Date: Fri, 05 Nov 2010 13:34:36 +0000
Message-ID: <1288964076.28481.15860.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@pokylinux.org
Subject: Re: [PULL]Fix adding GDBM_File module for perl
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
X-List-Received-Date: Fri, 05 Nov 2010 13:35:02 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2010-11-01 at 14:32 -0500, Mark Hatle wrote:
> I've been doing some thinking about how various perl and related components 
> should be implemented if they do potentially optional things.
> 
> My concern is that by adding gdbm to the build, that other components will 
> change and potentially require more disk space.  We really need a way to 
> optionally use gdbm, if available in these configurations.  I'm really not sure 
> if there is currently a way to tell bitbake:
> 
> I really want gdbm, but if nothing else wants it.. I don't want it.  Then for 
> LSB specific builds, we manually require gdbm as an LSB requirement (due to the 
> gdbm perl module requirements.)
> 
> Richard, any suggestions on how to work with this?

The trouble is the configuration is entirely deterministic by design. At
this point people start talking about Gentoo USE flags and how we should
add them and how wonderful the world would be.

To talk through the use case, I run "bitbake poky-image-sato" which lets
say doesn't need gdbm so perl is built without gdbm.

I then "bitbake poky-image-sdk" which does include it. Does perl get
rebuilt?

Another issue is the perl packages themselves. These can differ
depending on whether gdbm was included or not. If I hand you two perl
package rpms, how do you tell the difference?

Obviously you can mark them somehow or embed data into them but there is
no mechanism for this in some packaging systems. It makes maintenance of
feeds very hard as the build order can drastically change the contents
of the feeds.

One "middle ground" solution I've considered is extended use of the
DISTRO_FEATURES variable. By default this would be a pretty inclusive
list of things like "gdbm". The perl recipe would only include gdbm if
it was included in the list. The user can then customise the
DISTRO_FEATURES list and remove things they don't care about. Presumably
under this scenario, gdbm itself could exit with an error if someone
tried to build it and it wasn't listed.

Checksums will allow us to handle dynamically rebuilding anything that
changes when you edit that variable.

Does that give us a solution that would work for you?

Cheers,

Richard




