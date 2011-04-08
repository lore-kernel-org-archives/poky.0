Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id EF41B4C80579
	for <poky@pokylinux.org>; Fri,  8 Apr 2011 10:17:26 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1Q8DR6-0000cJ-Im
	for poky@pokylinux.org; Fri, 08 Apr 2011 17:17:24 +0200
Received: from ppp079166108076.dsl.hol.gr ([79.166.108.76])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 08 Apr 2011 17:17:24 +0200
Received: from gmane by ppp079166108076.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 08 Apr 2011 17:17:24 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 08 Apr 2011 18:17:11 +0300
Organization: Reliable Embedded Systems
Message-ID: <inn8tn$8um$1@dough.gmane.org>
References: <inieho$3ht$1@dough.gmane.org> <4D9E6DF5.9080304@intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166108076.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4D9E6DF5.9080304@intel.com>
Subject: Re: webkit with poky(yocto) on top of directfb and not X11
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: gmane@reliableembeddedsystems.com
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 08 Apr 2011 15:17:27 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 04/08/2011 05:07 AM, Yu Ke wrote:
> 
> I am also new to the DirectFB, some here is just preliminary thought for
> your referrence.
> 
> From the dependency point of view, you want a webkit-fb which is
> depending on gtk+-fb which in turn is depending on DirectFB. so probably
> you need:
> - a gtk-fb recipes. it can reuse current gtk+ recipe, but add directfb
> target, like EXTRA_OECONF += " --with-gdktarget=directfb "
> - a webkit-fb recipe: it can reuse the current webkit-gtk recipe, but
> add directfb target: EXTRA_OECONF += " --with-target=directfb "

I did not try it yet with yocto/poky, but last time we tried webkit over
gtk+ over directfb it turned out that what you suggest exists, but only
partially;)
If you are brave enough to build it you will find that there is actually
still a dependency on X11, which needs to be stubbed.

You might want to have a look here to see what I mean:
http://old.nabble.com/Plug-in-support-on-DirectFB-Webkit-td22287620.html

> 
> it is not related to qt4-embedded, so you don't need to add qt4-embedded.
> 
> Regards
> Ke

Regards,

Robert



