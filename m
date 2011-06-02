Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 073C54C800B0
	for <poky@yoctoproject.org>; Thu,  2 Jun 2011 12:22:15 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p52HMDVF019744;
	Thu, 2 Jun 2011 18:22:13 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 17392-10; Thu,  2 Jun 2011 18:22:09 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p52HM367019732
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 2 Jun 2011 18:22:05 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4DE79F0A.5080104@mlbassoc.com>
References: <4DE79F0A.5080104@mlbassoc.com>
Date: Thu, 02 Jun 2011 18:21:43 +0100
Message-ID: <1307035303.27470.584.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Problem with gettext-native
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
X-List-Received-Date: Thu, 02 Jun 2011 17:22:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-06-02 at 08:32 -0600, Gary Thomas wrote:
> I had a working build based on
>    commit 52295fa3deef3b0374b99829626d524cefae6001
>    Author: Richard Purdie <richard.purdie@linuxfoundation.org>
>    Date:   Wed May 18 00:03:02 2011 +0100
> 
>      Improve handling of 'all' architecture recipes and their interaction with sstate
> 
> Today, I updated to
>    commit 484c4e73245c93a08413cd204513bf5c5698b994
>    Author: Saul Wold <sgw@linux.intel.com>
>    Date:   Tue May 31 22:42:49 2011 -0700
> 
>      clutter-1.6: Add patch to update gettext macro version
> 
> Now, it tries to build gettext-native and fails with the log at
>    http://www.mlbassoc.com/poky/gettext-native-log.do_compile
> I don't see what's happening here.  If I try an identical
> build (same local.conf, etc) in a new tree, it succeeds.
> 
> I notice that my old build has git-native built and installed (which based
> on the log is being used?), but the build from scratch does not.
> 
> Any ideas?

It looks like gettext now has a dependency on git being present. We need
to add git-native to its DEPENDS, crazy as that may be :/

For a while I thought cvs was required too but it turns out its not,
thankfully.

I'm testing a patch which I'll push shortly.

Cheers,

Richard





