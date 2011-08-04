Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA3B6E011A7
	for <poky@yoctoproject.org>; Thu,  4 Aug 2011 05:45:07 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id D0CD0166058F; Thu,  4 Aug 2011 06:45:15 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 697BF166052B;
	Thu,  4 Aug 2011 06:45:15 -0600 (MDT)
Message-ID: <4E3A945B.5090801@mlbassoc.com>
Date: Thu, 04 Aug 2011 06:45:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Controlling uchcpc in busybox
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
X-List-Received-Date: Thu, 04 Aug 2011 12:45:08 -0000
X-Groupsio-MsgNum: 6837
Content-Type: multipart/mixed; boundary="------------060605010003090007090500"

--------------060605010003090007090500
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Note: I know this is a very busybox oriented question, but the
problem affects my Poky based system and I'm hoping to find an
answer here :-)

I have some interfaces which are very slow to come up on boot.
When I try to use DHCP on these interfaces, often they will fail
before the device negotiates a link (these are fibre channel
devices which can take 15 seconds to "come up").  Using the
default /etc/network/interfaces syntax, I have:
   auto eth0
   iface eth0 inet dhcp
This causes the busybox 'ifup' command to be run on the interface
which in turn runs 'udhcpc' with the default options of "-R -n"
With the other [compiled in] default options, the command only tries
for 9 seconds to get an address, but in many cases, this is not
long enough.

I'd like to be able to control the timeout regimen on this for
my sluggish interfaces, but I can't figure out how to do it in
the interfaces file.  Is there a way to make 'ifup' send additional
options to 'udhcpc'?   To date, I just modified the default options
when busybox gets built to include the ones I want, but this is
terribly heavy handed!  (see attached .bbappend file)

Ideas?

BTW, I find .bbappend very useful (even when I can't spell) in that
I can most times find ways to fix problems [most of which aren't
necessary for normal folks] without having to touch the mainline
repository.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------060605010003090007090500
Content-Type: text/plain;
 name="busybox_1.18.4.bbappend"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="busybox_1.18.4.bbappend"

#
# Just tell BitBake where to find my component files
#
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:${THISDIR}/${PN}:"

PR .= ".1"

do_prepare_config_append () {
  sed -i 's/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n"/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n -T 1 -t 20"/' ${S}/.config
}



--------------060605010003090007090500--
