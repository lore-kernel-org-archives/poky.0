Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 737614C800E5
	for <poky@yoctoproject.org>; Fri,  3 Jun 2011 13:07:57 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id E033516601AE; Fri,  3 Jun 2011 12:07:55 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5637D16601A9;
	Fri,  3 Jun 2011 12:07:35 -0600 (MDT)
Message-ID: <4DE922E7.9020008@mlbassoc.com>
Date: Fri, 03 Jun 2011 12:07:35 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Some native packages reference build tree
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
X-List-Received-Date: Fri, 03 Jun 2011 18:07:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Maybe I'm confused, but it would seem to me that the contents of
SSTATE (cache, etc) should be usable even if the tmp working
directory that was used to create it no longer exists.  At least
my thinking is that I could build the SSTATE cache files and pass
them to my customers, along with the basic Poky tree, in a bundle
which they could then use to speed up Poky builds.

This doesn't seem to work, at least for git-native (one of the
problems I've been tracing for a couple of days).  Here's how
I found this problem.

* step 1 - build Poky baseline
   % . /local/poky-base/oe-init-build-env /local/poky_build1
   % bitbake git-native

* step 2 - rebuild, using baseline for SSTATE_MIRRORS
   % . /local/poky-base/oe-init-build-env /local/poky_build2
   -- adjust conf/local.conf to contain these lines:
     # Reusable state information
     SSTATE_MIRRORS ?= "\
     file://.* file:///local/poky_build1/sstate-cache/"
   % bitbake git-native

In this case, 'git-native' only comes from the SSTATE packaging
and will just be installed into tmp/sysroots.
   % /local/poky_build2/tmp/sysroots/i686-linux/usr/bin/git repack
   fatal: Not a git repository (or any of the parent directories): .git
so it works fine.  Now, to break it:
   % mv /local/poky_build1/tmp{,.ORIG}
   % /local/poky_build2/tmp/sysroots/i686-linux/usr/bin/git repack
   git: 'repack' is not a git command. See 'git --help'.

Bottom line, at least some packages within the sstate tree (probably
only -native ones), contain references to the working tree in which
they were built, hence making them unsuitable for sharing.  I don't
know how pervasive this is, but at least this one sent me in circles
for a couple of days now.  I think this was also the source of my
problem with RPM yesterday.

Filed as bug #1137

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

