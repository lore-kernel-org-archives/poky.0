Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by mx1.pokylinux.org (Postfix) with ESMTP id A93A64C800B3
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 15:56:13 -0500 (CDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1QWaeh-0002vC-P4
	for poky@pokylinux.org; Tue, 14 Jun 2011 22:56:11 +0200
Received: from ppp089210018011.dsl.hol.gr ([89.210.18.11])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 22:56:11 +0200
Received: from gmane by ppp089210018011.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Tue, 14 Jun 2011 22:56:11 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 14 Jun 2011 23:55:56 +0300
Organization: Reliable Embedded Systems
Message-ID: <it8hss$c59$1@dough.gmane.org>
References: <it88ph$j2v$1@dough.gmane.org> <4DF7B675.6050304@linux.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210018011.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <4DF7B675.6050304@linux.intel.com>
Subject: Re: bernard-5.0.1, poky-image-lsb, beagle, build error
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
X-List-Received-Date: Tue, 14 Jun 2011 20:56:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

On 06/14/2011 10:28 PM, Saul Wold wrote:
> 
> Currently, if you have MIRRORS, it should pick up the original upstream
> source tarball from http://autobuilder.yoctoprojecto.org/sources, if you
> want to avoid checking any upstream source, you can set
> PREMIRRORS_prepend for ftp, http, and https URLs to the
> autobuilder/sources location. This location should maintain all tarballs
> for releases.
> 
> We had a similar problem with distcc right about the time we released
> 5.0.1!
> 
> You can use a local solution also with PREMIRRORS_prepend, as well as
> setting the BB_NO_NETWORK, which will force bitbake to not look on the
> network for any upstreams, this assumes you have everything preloaded
> locally.
> 
> Let us know if this is what you are looking for.

There is a file called meta/conf/distro/poky.conf which contains

PREMIRRORS ?= "\
bzr://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
cvs://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
git://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
hg://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
osc://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
p4://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n \
svk://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n \
svn://.*/.*   http://autobuilder.yoctoproject.org/sources/ \n"

MIRRORS =+ "\
ftp://.*/.*      http://autobuilder.yoctoproject.org/sources/ \n \
http://.*/.*     http://autobuilder.yoctoproject.org/sources/ \n \
https://.*/.*    http://autobuilder.yoctoproject.org/sources/ \n"

Isn't this supposed to be included by default?
Do I need to do something else to activate MIRRORS/PREMIRRORS?

Regards,

Robert

> 
> Sau!
> 
...The significant problems we face cannot be solved at the same level
of thinking we were at when we created them. - Albert Einstein

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



