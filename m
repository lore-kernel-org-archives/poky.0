Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id D46D34C800A1
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 09:32:43 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 4707516602D9; Thu,  2 Jun 2011 08:32:43 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2247916601E1;
	Thu,  2 Jun 2011 08:32:42 -0600 (MDT)
Message-ID: <4DE79F0A.5080104@mlbassoc.com>
Date: Thu, 02 Jun 2011 08:32:42 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Poky Project <poky@yoctoproject.org>
Subject: Problem with gettext-native
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
X-List-Received-Date: Thu, 02 Jun 2011 14:32:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I had a working build based on
   commit 52295fa3deef3b0374b99829626d524cefae6001
   Author: Richard Purdie <richard.purdie@linuxfoundation.org>
   Date:   Wed May 18 00:03:02 2011 +0100

     Improve handling of 'all' architecture recipes and their interaction with sstate

Today, I updated to
   commit 484c4e73245c93a08413cd204513bf5c5698b994
   Author: Saul Wold <sgw@linux.intel.com>
   Date:   Tue May 31 22:42:49 2011 -0700

     clutter-1.6: Add patch to update gettext macro version

Now, it tries to build gettext-native and fails with the log at
   http://www.mlbassoc.com/poky/gettext-native-log.do_compile
I don't see what's happening here.  If I try an identical
build (same local.conf, etc) in a new tree, it succeeds.

I notice that my old build has git-native built and installed (which based
on the log is being used?), but the build from scratch does not.

Any ideas?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

