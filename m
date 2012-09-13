Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F7D9E011C0
	for <poky@lists.yoctoproject.org>; Thu, 13 Sep 2012 10:51:04 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8DHowYm000892;
	Thu, 13 Sep 2012 18:50:58 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 00460-02; Thu, 13 Sep 2012 18:50:54 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q8DHolep000885
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Thu, 13 Sep 2012 18:50:48 +0100
Message-ID: <1347558649.11710.114.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@lists.yoctoproject.org>
Date: Thu, 13 Sep 2012 18:50:49 +0100
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Default network connectivity sanity tests
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Sep 2012 17:51:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Currently the poky distro config tests for three different kinds of
network connectivity:

# The CONNECTIVITY_CHECK_URI's are used to test whether we can succesfully
# fetch from the network (and warn you if not). To disable the test set
# the variable to be empty.
CONNECTIVITY_CHECK_URIS ?= "git://git.yoctoproject.org/yocto-firewall-test;protocol=git;rev=HEAD \
                          https://eula-downloads.yoctoproject.org/index.php \
                          http://bugzilla.yoctoproject.org/report.cgi"

So this tests http, https and git. The theory goes that the project
mirrors should be a) preferred and b) be up to date in most cases so
that you'd only ever usually need http:// to run a build successfully.

There are some "windows of opportunity" when building from master where
this might not be true, for example, a kernel update has just been
pushed and the mirrors have not updated to the latest code. In this
scenario, bitbake would pull the mirror tarball, then updated it using
the git protocol.

I'm getting continued complaints that git is horrible to proxy behind
firewalls and this check continues to cause pain for people when in fact
the builds would probably work. These complains go so far as to say
we're ruining the reputation of the project by having this as people
leave after an initial bad experience. I'm reaching the point where I
become tempted to remove it.

Opinions?

One other option would be to remove it on release branches. Those should
be more stable and therefore shouldn't need this kind of check...

Cheers,

Richard



