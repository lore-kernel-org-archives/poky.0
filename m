Return-Path: <glep-poky@m.gmane.org>
Received: from lo.gmane.org (lo.gmane.org [80.91.229.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 757E7E00307
	for <poky@pokylinux.org>; Fri,  4 Nov 2011 11:08:52 -0700 (PDT)
Received: from list by lo.gmane.org with local (Exim 4.69)
	(envelope-from <glep-poky@m.gmane.org>) id 1RMOC8-0001YW-PW
	for poky@pokylinux.org; Fri, 04 Nov 2011 19:08:48 +0100
Received: from ppp089210140055.dsl.hol.gr ([89.210.140.55])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 04 Nov 2011 19:08:48 +0100
Received: from gmane by ppp089210140055.dsl.hol.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <poky@pokylinux.org>; Fri, 04 Nov 2011 19:08:48 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: poky@pokylinux.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Fri, 04 Nov 2011 20:08:34 +0200
Organization: Reliable Embedded Systems
Message-ID: <j919n2$6re$1@dough.gmane.org>
References: <j9172o$j0s$1@dough.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@dough.gmane.org
X-Gmane-NNTP-Posting-Host: ppp089210140055.dsl.hol.gr
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110223 Thunderbird/3.1.8
In-Reply-To: <j9172o$j0s$1@dough.gmane.org>
Subject: Re: workflow - kernel config
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
X-List-Received-Date: Fri, 04 Nov 2011 18:08:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

This did not work:

root@beagleboard:~# opcontrol --start
FATAL: Module oprofile not found.
FATAL: Module oprofile not found.
Kernel doesn't support oprofile

Please advise,

Robert
...Before God we are all equally wise - and equally foolish. - Albert
Einstein

My public pgp key is available at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



