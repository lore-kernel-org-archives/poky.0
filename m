Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id B0F484C800B9
	for <poky@pokylinux.org>; Mon, 27 Jun 2011 23:43:55 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QbQ9R-00035P-Uz
	for poky@pokylinux.org; Tue, 28 Jun 2011 06:43:53 +0200
Received: from ppp089210003228.dsl.hol.gr ([89.210.3.228])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 28 Jun 2011 06:43:53 +0200
Received: from gmane by ppp089210003228.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 28 Jun 2011 06:43:53 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 28 Jun 2011 07:43:40 +0300
Organization: Reliable Embedded Systems
Message-ID: <4E095BFC.7020704@reliableembeddedsystems.com>
References: <it8ite$i96$1@dough.gmane.org>	<4DFCF6FA.80606@reliableembeddedsystems.com>
	<4E090106.5080400@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210003228.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4E090106.5080400@linux.intel.com>
Cc: public-robertcnelson-Re5JQEeQqe8AvxtiuMwx3w@lo.gmane.org,
	public-poky-SXX0g9bRc0uhPH1hqNUYSQ@lo.gmane.org,
	Arnd Bergmann <public-arnd-r2nGTMty4D4@lo.gmane.org>,
	public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@lo.gmane.org,
	Simon Glass <sjg@chromium.org>
Subject: Re: [PATCH] bernard 5.0.1 and beagle-xm rev c
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
X-List-Received-Date: Tue, 28 Jun 2011 04:43:56 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Darren,

On 06/28/2011 01:15 AM, Darren Hart wrote:
> 
>> [3]
>> https://github.com/RobertCNelson/linux-2.6/commit/ebe1e26476768b8edde0607433e564ffd4b0e903
> 
> 
> It isn't clear to me where this one fits in. Is this a backport for
> linux-2.6.git to 2.6.37 ? It strikes me as odd that there are
> Beagleboard specific mainline changes that aren't in linux-omap. That is
> the opposite direction I tend to see patches flow.
> 

I guess Robert Nelson answered this one.

Besides there is something being cooked to add networking support to
u-boot here: git://github.com/koenkooi/u-boot.git

it is discussed here:
http://thread.gmane.org/gmane.comp.hardware.beagleboard.user/21719

Regards,

Robert
..."In the beginning, there was software. And it wasn't good."

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



