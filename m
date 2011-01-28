Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id A5AC04C812AC
	for <poky@yoctoproject.org>; Fri, 28 Jan 2011 10:56:32 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 23DB616605A0; Fri, 28 Jan 2011 09:56:32 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1C076166059C;
	Fri, 28 Jan 2011 09:56:31 -0700 (MST)
Message-ID: <4D42F53F.1010201@mlbassoc.com>
Date: Fri, 28 Jan 2011 09:56:31 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Wolfgang Denk <wd@denx.de>
References: <20110127111132.C69A3B335@gemini.denx.de>	<20110127114216.744AEB335@gemini.denx.de>	<4D41F2D6.4040406@linux.intel.com>	<20110128070520.31A2BD42A86@gemini.denx.de>	<4D42F269.1080005@linux.intel.com>
	<20110128165100.656AAD42A99@gemini.denx.de>
In-Reply-To: <20110128165100.656AAD42A99@gemini.denx.de>
Cc: poky@yoctoproject.org
Subject: Re: Serial console unusable with poky-image-sdk
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
X-List-Received-Date: Fri, 28 Jan 2011 16:56:38 -0000
X-Groupsio-MsgNum: 3065
Content-Type: multipart/mixed; boundary="------------040002030506040100040208"

--------------040002030506040100040208
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/28/2011 09:51 AM, Wolfgang Denk wrote:
> Dear Darren Hart,
>
> In message<4D42F269.1080005@linux.intel.com>  you wrote:
>>
>> The serial console would show all the output of the boot process and
>> then present a getty. It would accept my login and my password, but as
>> soon as I was logged in, things went weird. Only every Nth character I
>> typed made it to the console, where N was somewhere between 2 and 30.
>
> Indeed. And the reason for this behaviour is that you have two
> processes reading from the console, so it depends on the scheduling
> which of hem receives which characters.
>
>> I believe this had something to do with the automatic consoles the
>> kernel will setup based on the console= parameters. By default, the last
>
> No, it does not.  You can test it by shutting down X11 (try:
> "/etc/init.d/xserver-nodm stop"); this will also terminate the
> dbus-launch process, and your login shell immediately works fine.
>
> Or try out the patch I posted.
>
>> What I haven't been able to explain yet is why just omitting the getty
>> from the tty doesn't result in console on the serial port due to the
>> kernel's automatic console thing. So clearly there are some gaps in my
>> explanation here, but please try this approach and let me know what your
>> results are. Based on that, we can dig a bit more and figure out how to
>> best setup the console= directives on the default images.
>
> THere is no problem with the console= settings.  It's two processes
> reading from a single input stream. This can never work.  Try it ut if
> you don't believe me.

Wolfgang has it spot-on - both the console login and dbus are
fighting over the console device.

I've been using the equivalent of this patch for months and it
solves the problem just fine.  (Sorry I didn't report it, it
wasn't high on my list)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------040002030506040100040208
Content-Type: text/plain;
 name="no-stdin-for-dbus.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="no-stdin-for-dbus.patch"

Disconnect console from dbus - otherwise, serial console is unusable
if X session is running.

diff -ur x11-common.ORIG/etc/X11/Xsession x11-common/etc/X11/Xsession
--- x11-common.ORIG/etc/X11/Xsession	2010-08-06 06:43:51.000000000 -0600
+++ x11-common/etc/X11/Xsession	2010-07-23 12:12:00.000000000 -0600
@@ -2,7 +2,7 @@
 
 if [ -x /usr/bin/dbus-launch ]; then
     # As this is the X session script, always start a new DBus session.
-    eval `dbus-launch --sh-syntax --exit-with-session`
+    eval `dbus-launch --sh-syntax --exit-with-session </dev/null`
     echo "D-BUS per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
 fi

--------------040002030506040100040208--
