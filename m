Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id C93084C80A8F
	for <poky@yoctoproject.org>; Fri, 15 Jul 2011 07:22:16 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4167516601A8; Fri, 15 Jul 2011 06:22:16 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id A3176166019E;
	Fri, 15 Jul 2011 06:22:11 -0600 (MDT)
Message-ID: <4E2030F3.9050906@mlbassoc.com>
Date: Fri, 15 Jul 2011 06:22:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: TERMCMD and SSH
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
X-List-Received-Date: Fri, 15 Jul 2011 12:22:17 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I often build Poky on remote systems which I access using 'ssh -X' (SSH
connection with X forwarding).  However, I have problems when the build
needs to open a terminal window, e.g. 'bitbake virtual/kernel -c menuconfig'
I get this error:

| Failed to summon the GConf demon; exiting.  Failed to contact configuration server; some possible causes are that you need to enable TCP/IP networking for ORBit, or you have 
stale NFS locks due to a system crash. See http://projects.gnome.org/gconf/ for information. (Details -  1: Failed to get connection to session: Address does not contain a colon)

As far as I can see, bitbake is trying to run this command:
   gnome-terminal --disable-factory -t "something" -x "make menuconfig"

If I run this command manually from my SSH window, it works fine.
How can I get it working from bitbake?  I tried adding 'SSH_CONNECTION'
and 'DISPLAY' (both set specially in this situation) to BB_ENV_EXTRAWHITE
without success.

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

