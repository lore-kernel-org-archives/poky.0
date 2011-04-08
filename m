Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 88EA74C80044
	for <poky@pokylinux.org>; Fri,  8 Apr 2011 10:44:44 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1Q8DrW-0002N5-FH
	for poky@pokylinux.org; Fri, 08 Apr 2011 17:44:42 +0200
Received: from ppp079166108076.dsl.hol.gr ([79.166.108.76])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 08 Apr 2011 17:44:42 +0200
Received: from gmane by ppp079166108076.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 08 Apr 2011 17:44:42 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 08 Apr 2011 18:44:26 +0300
Organization: Reliable Embedded Systems
Message-ID: <innagq$hmq$1@dough.gmane.org>
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
X-List-Received-Date: Fri, 08 Apr 2011 15:44:44 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

You can find also in openembedded __nonworking__ recipes:

http://git.openembedded.org/cgit.cgi/openembedded/tree/recipes/nonworking/gtk+/gtk+-directfb_2.10.14.bb

So I guess this approach needs quite a bit of cooking and it's
questionable if and how the webkit plugin infrastructure will work.

Regards,

Robert
...The most likely way for the world to be destroyed, most experts
agree, is by accident. That's where we come in; we're computer
professionals. We cause accidents.

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



