Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 37B6E4C8007E
	for <poky@yoctoproject.org>; Fri, 11 Feb 2011 13:22:40 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 020A916603B5; Fri, 11 Feb 2011 12:22:38 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 206EF16603AF;
	Fri, 11 Feb 2011 12:22:38 -0700 (MST)
Message-ID: <4D558C7E.9010008@mlbassoc.com>
Date: Fri, 11 Feb 2011 12:22:38 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Mark Hatle <mark.hatle@windriver.com>
References: <4D5569A0.7080308@mlbassoc.com>	<4D5574D7.3010005@mentor.com>	<4D557ED0.4050705@mlbassoc.com>	<4D55805C.2020503@windriver.com>
	<4D558205.90105@windriver.com>
In-Reply-To: <4D558205.90105@windriver.com>
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
X-List-Received-Date: Fri, 11 Feb 2011 19:22:40 -0000
X-Groupsio-MsgNum: 3590
Content-Type: multipart/mixed; boundary="------------020001010706050406020106"

--------------020001010706050406020106
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/11/2011 11:37 AM, Mark Hatle wrote:
> On 2/11/11 12:30 PM, Mark Hatle wrote:
>> On 2/11/11 12:24 PM, Gary Thomas wrote:
>>> On 02/11/2011 10:41 AM, Tom Rini wrote:
>>>> On 02/11/2011 09:53 AM, Gary Thomas wrote:
>>>>> A build for my platform with today's master
>>>>> 49a18f1748d2417958b8e19cdd58c0c79f4fc728
>>>>> shows a new behaviour - many messages like this:
>>>>> update-alternatives: Linking //usr/bin/wc to ../../bin/busybox
>>>>>
>>>>> Questions:
>>>>> * Is this truly new or was it just quiet before?
>>>>> * Can't this be done at image build time? On my little
>>>>> embedded OMAP-L138, it takes nearly 2 minutes to run
>>>>> through this. My root is a ramdisk, so this is a cost
>>>>> I see on _every_ boot.
>>>>> * If it can't be done at build time, can I disable it?
>>>>
>>>> It can be done at build time _except_ for when there's a conflict. I suspect what's going on is that a recent change has introduced a conflict (which is to say, busybox provides
>>>> foo as an alternative and something else also provides it, but isn't registering it as an alternative). If you check the whole boot log (or log.do_rootfs) you can find where the
>>>> conflict is and then do something like http://cgit.openembedded.org/cgit.cgi/openembedded/commit/?id=902b98f32ffd35661e43382f47226f65528ff1b1 (it's a little more complicated if the
>>>> recipe also does BBCLASSEXTEND, since you don't want to do the move for virtclass-foo).
>>>
>>> Running the postinst script manually, I get this error:
>>>
>>> + update-rc.d -s syslog busybox-udhcpc defaults
>>> usage: update-rc.d [-n] [-f] [-r<root>]<basename>  remove
>>>          update-rc.d [-n] [-r<root>] [-s]<basename>  defaults [NN | sNN kNN]
>>>          update-rc.d [-n] [-r<root>] [-s]<basename>  start|stop NN runlvl [runlvl] [...] .
>>>                   -n: not really
>>>                   -f: force
>>>                   -v: verbose
>>>                   -r: alternate root path (default is /)
>>>                   -s: invoke start methods if appropriate to current runlevel
>>>
>>> Looks like update-rc.d is not being called properly.  This
>>> was introduced by
>>>     commit 427472e980cd6254a5e4ef37209b327e15af259b
>>>     Author: Mark Hatle<mark.hatle@windriver.com>
>>>     Date:   Thu Feb 3 19:29:50 2011 -0600
>>>
>>> Mark, any comments?
>>>
>>
>> The error is coming from the INITSCRIPT_NAME_${PN} change.  However, I don't
>> know how to resolve it.  Where there was previously only one init script, there
>> are now two.  So how do we inform bitbake that there are two initscripts to be
>> processed?
>
> I asked and it appears there is a limitation of one initscript per split
> package.  So as a workaround, I suggest removing the busybox-udhcpc from the
> INITSCRIPTS_NAME_${PN} line..

The attached patch looks like it does the right thing.  Any reason it's not
the way to fix this?

>
> --Mark
>
>> (If specifying more then one initscript is correct in the recipe, then the bug
>> is in a class wherever update-rc.d is called.)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------020001010706050406020106
Content-Type: text/plain;
 name="update.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="update.patch"

diff --git a/meta/classes/update-rc.d.bbclass b/meta/classes/update-rc.d.bbclass
index 7e4dda7..3647cb4 100644
--- a/meta/classes/update-rc.d.bbclass
+++ b/meta/classes/update-rc.d.bbclass
@@ -15,17 +15,23 @@ if test "x$D" != "x"; then
 else
 	OPT="-s"
 fi
-update-rc.d $OPT ${INITSCRIPT_NAME} ${INITSCRIPT_PARAMS}
+for i in ${INITSCRIPT_NAME}; do
+  update-rc.d $OPT $i ${INITSCRIPT_PARAMS}
+done
 }
 
 updatercd_prerm() {
 if test "x$D" = "x"; then
-	${INIT_D_DIR}/${INITSCRIPT_NAME} stop
+  for i in ${INITSCRIPT_NAME}; do
+	${INIT_D_DIR}/$i stop
+  done
 fi
 }
 
 updatercd_postrm() {
-update-rc.d $D ${INITSCRIPT_NAME} remove
+for i in ${INITSCRIPT_NAME}; do
+  update-rc.d $D $i remove
+done
 }
 
 

--------------020001010706050406020106--
