Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 293964C80053
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 12:30:58 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1BIUsVv027146;
	Fri, 11 Feb 2011 10:30:54 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 10:30:53 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Fri, 11 Feb 2011 10:30:53 -0800
Message-ID: <4D55805C.2020503@windriver.com>
Date: Fri, 11 Feb 2011 12:30:52 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <4D5569A0.7080308@mlbassoc.com> <4D5574D7.3010005@mentor.com>
	<4D557ED0.4050705@mlbassoc.com>
In-Reply-To: <4D557ED0.4050705@mlbassoc.com>
X-OriginalArrivalTime: 11 Feb 2011 18:30:53.0782 (UTC)
	FILETIME=[D0E47F60:01CBCA19]
Cc: poky@yoctoproject.org, Tom Rini <tom_rini@mentor.com>
Subject: Re: busybox & update-alternatives
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
X-List-Received-Date: Fri, 11 Feb 2011 18:30:58 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 2/11/11 12:24 PM, Gary Thomas wrote:
> On 02/11/2011 10:41 AM, Tom Rini wrote:
>> On 02/11/2011 09:53 AM, Gary Thomas wrote:
>>> A build for my platform with today's master
>>> 49a18f1748d2417958b8e19cdd58c0c79f4fc728
>>> shows a new behaviour - many messages like this:
>>> update-alternatives: Linking //usr/bin/wc to ../../bin/busybox
>>>
>>> Questions:
>>> * Is this truly new or was it just quiet before?
>>> * Can't this be done at image build time? On my little
>>> embedded OMAP-L138, it takes nearly 2 minutes to run
>>> through this. My root is a ramdisk, so this is a cost
>>> I see on _every_ boot.
>>> * If it can't be done at build time, can I disable it?
>>
>> It can be done at build time _except_ for when there's a conflict. I suspect what's going on is that a recent change has introduced a conflict (which is to say, busybox provides
>> foo as an alternative and something else also provides it, but isn't registering it as an alternative). If you check the whole boot log (or log.do_rootfs) you can find where the
>> conflict is and then do something like http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=902b98f32ffd35661e43382f47226f65528ff1b1 (it's a little more complicated if the
>> recipe also does BBCLASSEXTEND, since you don't want to do the move for virtclass-foo).
> 
> Running the postinst script manually, I get this error:
> 
> + update-rc.d -s syslog busybox-udhcpc defaults
> usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove
>         update-rc.d [-n] [-r <root>] [-s] <basename> defaults [NN | sNN kNN]
>         update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN runlvl [runlvl] [...] .
>                  -n: not really
>                  -f: force
>                  -v: verbose
>                  -r: alternate root path (default is /)
>                  -s: invoke start methods if appropriate to current runlevel
> 
> Looks like update-rc.d is not being called properly.  This
> was introduced by
>    commit 427472e980cd6254a5e4ef37209b327e15af259b
>    Author: Mark Hatle <mark.hatle@windriver.com>
>    Date:   Thu Feb 3 19:29:50 2011 -0600
> 
> Mark, any comments?
> 

The error is coming from the INITSCRIPT_NAME_${PN} change.  However, I don't
know how to resolve it.  Where there was previously only one init script, there
are now two.  So how do we inform bitbake that there are two initscripts to be
processed?

(If specifying more then one initscript is correct in the recipe, then the bug
is in a class wherever update-rc.d is called.)

--Mark

