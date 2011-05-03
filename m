Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id E24384C8011E
	for <poky@yoctoproject.org>; Tue,  3 May 2011 18:09:14 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id A92EB1660243; Tue,  3 May 2011 17:09:13 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00,
	NORMAL_HTTP_TO_IP autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 138F5166015F;
	Tue,  3 May 2011 17:09:11 -0600 (MDT)
Message-ID: <4DC08B17.2070907@mlbassoc.com>
Date: Tue, 03 May 2011 17:09:11 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Zypper question
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
X-List-Received-Date: Tue, 03 May 2011 23:09:15 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to set up zypper on a qemu based system.  I've built
the image & additional packages in 192.168.1.125:/local/qemu_test/tmp/deploy/rpm/
This system is running lighttpd and has the path http://192.168.1.125/qemu-repo
set to that path.  I verified it by fetching http://192.168.1.125/qemu-repo/solvedb.conf
which shows up as
   /local/qemu_test/tmp/deploy/rpm/qemux86/solvedb
   /local/qemu_test/tmp/deploy/rpm/i586/solvedb
   /local/qemu_test/tmp/deploy/rpm/all/solvedb

On the QEMU system, I ran
   # zypper addrepo http://192.168.1.125/qemu-repo yocto
   # zypper refresh
No errors were reported

When I tried to install a package, I got this:
   # zypper install gst-plugins-base
   Error building the cache.
   [1] Repository type can't be determined.
   warning: Disabling repository 'yocto' because of the above error.

What am I doing wrong?

Note: I tried to follow https://wiki.pokylinux.org/wiki/Zypper_Repository_Setup
Can I help with this (edit the page, etc)?  If so, how do I get a login?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

