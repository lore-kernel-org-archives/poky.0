Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f54.google.com (mail-ww0-f54.google.com [74.125.82.54])
	by mx1.pokylinux.org (Postfix) with ESMTP id 176F34C80053
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 12:51:36 -0600 (CST)
Received: by wwb31 with SMTP id 31so2941154wwb.11
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 10:51:31 -0800 (PST)
Received: by 10.216.155.205 with SMTP id j55mr791681wek.90.1297450291016;
	Fri, 11 Feb 2011 10:51:31 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id s50sm494753weh.46.2011.02.11.10.51.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 11 Feb 2011 10:51:30 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D558205.90105@windriver.com>
Date: Fri, 11 Feb 2011 19:51:29 +0100
Message-Id: <749FB2F3-5CEA-48F4-B027-04E303C21306@dominion.thruhere.net>
References: <4D5569A0.7080308@mlbassoc.com>
	<4D5574D7.3010005@mentor.com>	<4D557ED0.4050705@mlbassoc.com>
	<4D55805C.2020503@windriver.com> <4D558205.90105@windriver.com>
To: Mark Hatle <mark.hatle@windriver.com>
X-Mailer: Apple Mail (2.1082)
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
X-List-Received-Date: Fri, 11 Feb 2011 18:51:37 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 11 feb 2011, om 19:37 heeft Mark Hatle het volgende geschreven:

> On 2/11/11 12:30 PM, Mark Hatle wrote:
>> On 2/11/11 12:24 PM, Gary Thomas wrote:
>>> On 02/11/2011 10:41 AM, Tom Rini wrote:
>>>> On 02/11/2011 09:53 AM, Gary Thomas wrote:
>>>>> A build for my platform with today's master
>>>>> 49a18f1748d2417958b8e19cdd58c0c79f4fc728
>>>>> shows a new behaviour - many messages like this:
>>>>> update-alternatives: Linking //usr/bin/wc to ../../bin/busybox
>>>>>=20
>>>>> Questions:
>>>>> * Is this truly new or was it just quiet before?
>>>>> * Can't this be done at image build time? On my little
>>>>> embedded OMAP-L138, it takes nearly 2 minutes to run
>>>>> through this. My root is a ramdisk, so this is a cost
>>>>> I see on _every_ boot.
>>>>> * If it can't be done at build time, can I disable it?
>>>>=20
>>>> It can be done at build time _except_ for when there's a conflict. =
I suspect what's going on is that a recent change has introduced a =
conflict (which is to say, busybox provides
>>>> foo as an alternative and something else also provides it, but =
isn't registering it as an alternative). If you check the whole boot log =
(or log.do_rootfs) you can find where the
>>>> conflict is and then do something like =
http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=3D902b98f32f=
fd35661e43382f47226f65528ff1b1 (it's a little more complicated if the
>>>> recipe also does BBCLASSEXTEND, since you don't want to do the move =
for virtclass-foo).
>>>=20
>>> Running the postinst script manually, I get this error:
>>>=20
>>> + update-rc.d -s syslog busybox-udhcpc defaults
>>> usage: update-rc.d [-n] [-f] [-r <root>] <basename> remove
>>>        update-rc.d [-n] [-r <root>] [-s] <basename> defaults [NN | =
sNN kNN]
>>>        update-rc.d [-n] [-r <root>] [-s] <basename> start|stop NN =
runlvl [runlvl] [...] .
>>>                 -n: not really
>>>                 -f: force
>>>                 -v: verbose
>>>                 -r: alternate root path (default is /)
>>>                 -s: invoke start methods if appropriate to current =
runlevel
>>>=20
>>> Looks like update-rc.d is not being called properly.  This
>>> was introduced by
>>>   commit 427472e980cd6254a5e4ef37209b327e15af259b
>>>   Author: Mark Hatle <mark.hatle@windriver.com>
>>>   Date:   Thu Feb 3 19:29:50 2011 -0600
>>>=20
>>> Mark, any comments?
>>>=20
>>=20
>> The error is coming from the INITSCRIPT_NAME_${PN} change.  However, =
I don't
>> know how to resolve it.  Where there was previously only one init =
script, there
>> are now two.  So how do we inform bitbake that there are two =
initscripts to be
>> processed?
>=20
> I asked and it appears there is a limitation of one initscript per =
split
> package.  So as a workaround, I suggest removing the busybox-udhcpc =
from the
> INITSCRIPTS_NAME_${PN} line..

If you use update-rc.bbclass, yes. But that class is only a few lines, =
easy enough to copy it into the recipe and do multiple initscripts. =
There are a number of recipes in OE doing that.

regards,

Koen=

