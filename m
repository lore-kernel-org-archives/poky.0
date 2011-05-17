Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id 64F6E4C800B0
	for <poky@pokylinux.org>; Mon, 16 May 2011 20:01:21 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QM8f1-0002JE-94
	for poky@pokylinux.org; Tue, 17 May 2011 03:01:19 +0200
Received: from ppp079166142030.dsl.hol.gr ([79.166.142.30])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 17 May 2011 03:01:19 +0200
Received: from gmane by ppp079166142030.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 17 May 2011 03:01:19 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 17 May 2011 04:01:06 +0300
Organization: Reliable Embedded Systems
Message-ID: <4DD1C8D2.7070709@reliableembeddedsystems.com>
References: <iqo4jm$4mj$1@dough.gmane.org> <4DD17A0C.7030809@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp079166142030.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DD17A0C.7030809@linux.intel.com>
Cc: public-poky-SXX0g9bRc0uhPH1hqNUYSQ@lo.gmane.org,
	public-gmane-G/ASJRsgvFgvW+L+VdN226ESeJV5RFUqQQ4Iyu8u01E@lo.gmane.org
Subject: Re: beagle-xm more testing
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
X-List-Received-Date: Tue, 17 May 2011 01:01:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 05/16/2011 10:25 PM, Darren Hart wrote:
> 
> 
> The u-boot issues concern me the most. Unfortunately the dev-cut for
> 5.0.1 is passed. We are looking for much improved bbxm support in 1.1.
> 
> Saul, is it too late for a fix like the above to the u-boot md5 to get
> into the point release?
> 

In the meantime I also got the latest and greatest from git to work with
a couple of tweaks on the beagle-xm. If you want a proper patch for the
checksum it might take some time, since I'll be out of office ( it's 4
in the morning now) and I would like to test it a bit more before
sending it out - saw something funny with u-boot yesterday.

Regards,

Robert


..."In C++ it's harder to shoot yourself in the foot, but when you do,
you blow off your whole leg." - Bjarne Stroustrup

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



