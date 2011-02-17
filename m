Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id C557A4C80093
	for <poky@lists.pokylinux.org>; Wed, 16 Feb 2011 20:03:05 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id CD9051660348; Wed, 16 Feb 2011 19:03:00 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from hermes.chez-thomas.org (hermes_local [192.168.1.101])
	by mail.chez-thomas.org (Postfix) with ESMTP id 38AD71660347;
	Wed, 16 Feb 2011 19:02:59 -0700 (MST)
Message-ID: <4D5C81D3.601@mlbassoc.com>
Date: Wed, 16 Feb 2011 19:02:59 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky <poky@lists.pokylinux.org>
Subject: Dropbear SSH and empty root password
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
X-List-Received-Date: Thu, 17 Feb 2011 02:03:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

The default images have no password for root.  This used to
work fine with the dropbear SSH server, but no longer does.

I see that the recipe has this line:
   file://allow-nopw.patch;apply=no

Any comment on why this was disabled?  I think the history
of this change was lost in the great packages reshuffle.

Query: if I wanted to restore this behaviour, could I just
have a .bbappend file with that line as apply=yes?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

