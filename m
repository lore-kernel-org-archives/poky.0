Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E64C04C80053
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 12:24:19 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 43CD416603A6; Fri, 11 Feb 2011 11:24:18 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4B1E11660348;
	Fri, 11 Feb 2011 11:24:16 -0700 (MST)
Message-ID: <4D557ED0.4050705@mlbassoc.com>
Date: Fri, 11 Feb 2011 11:24:16 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Tom Rini <tom_rini@mentor.com>
References: <4D5569A0.7080308@mlbassoc.com> <4D5574D7.3010005@mentor.com>
In-Reply-To: <4D5574D7.3010005@mentor.com>
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Fri, 11 Feb 2011 18:24:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2011 10:41 AM, Tom Rini wrote:
> On 02/11/2011 09:53 AM, Gary Thomas wrote:
>> A build for my platform with today's master
>> 49a18f1748d2417958b8e19cdd58c0c79f4fc728
>> shows a new behaviour - many messages like this:
>> update-alternatives: Linking //usr/bin/wc to ../../bin/busybox
>>
>> Questions:
>> * Is this truly new or was it just quiet before?
>> * Can't this be done at image build time? On my little
>> embedded OMAP-L138, it takes nearly 2 minutes to run
>> through this. My root is a ramdisk, so this is a cost
>> I see on _every_ boot.
>> * If it can't be done at build time, can I disable it?
>
> It can be done at build time _except_ for when there's a conflict. I suspect what's going on is that a recent change has introduced a conflict (which is to say, busybox provides
> foo as an alternative and something else also provides it, but isn't registering it as an alternative). If you check the whole boot log (or log.do_rootfs) you can find where the
> conflict is and then do something like http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=902b98f32ffd35661e43382f47226f65528ff1b1 (it's a little more complicated if the
> recipe also does BBCLASSEXTEND, since you don't want to do the move for virtclass-foo).

Running the postinst script manually, I get this error:

+ update-rc.d -s syslog busybox-udhcpc defaults
usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove
        update-rc.d [-n] [-r <root>] [-s] <basename> defaults [NN | sNN kNN]
        update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN runlvl [runlvl] [...] .
                 -n: not really
                 -f: force
                 -v: verbose
                 -r: alternate root path (default is /)
                 -s: invoke start methods if appropriate to current runlevel

Looks like update-rc.d is not being called properly.  This
was introduced by
   commit 427472e980cd6254a5e4ef37209b327e15af259b
   Author: Mark Hatle <mark.hatle@windriver.com>
   Date:   Thu Feb 3 19:29:50 2011 -0600

Mark, any comments?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

