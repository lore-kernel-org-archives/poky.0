Return-Path: <rpurdie@linux.intel.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id EB5304C8101B
	for <poky@lists.pokylinux.org>; Fri, 22 Oct 2010 09:29:48 -0500 (CDT)
Received: by pug.o-hand.com (Postfix)
	id 3E79312EC302; Fri, 22 Oct 2010 10:05:23 -0500 (CDT)
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pug.o-hand.com (Postfix) with ESMTP id DC75E12EC27E
	for <poky@o-hand.com>; Fri, 22 Oct 2010 10:05:22 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9METkX9030469;
	Fri, 22 Oct 2010 15:29:46 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30309-03; Fri, 22 Oct 2010 15:29:42 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id o9METda3030463
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 22 Oct 2010 15:29:39 +0100
From: Richard Purdie <rpurdie@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4CC199D1.3000309@mlbassoc.com>
References: <4CADD32A.9010908@mlbassoc.com>
	<1286462951.15840.6345.camel@rex> <4CADE06F.6040308@mlbassoc.com>
	<4CADFA77.3070305@mlbassoc.com> <1286475616.15840.6565.camel@rex>
	<4CAE54A1.1080803@mlbassoc.com> <1287755439.16386.736.camel@rex>
	<4CC199D1.3000309@mlbassoc.com>
Date: Fri, 22 Oct 2010 15:29:25 +0100
Message-ID: <1287757765.16386.771.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@o-hand.com
Subject: Re: SVN woes persist
X-BeenThere: poky@pokylinux.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.pokylinux.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/poky>,
	<mailto:poky-request@pokylinux.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/poky>
List-Post: <mailto:poky@pokylinux.org>
List-Help: <mailto:poky-request@pokylinux.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/poky>,
	<mailto:poky-request@pokylinux.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 14:29:49 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-10-22 at 08:04 -0600, Gary Thomas wrote:
> Will do.
> 
> Should this address the similar issue with GIT packages.  These seem
> to be updating every time as well:
>    git_github.com.wrpseudo.pseudo.git.tar.gz
>    git_git.pokylinux.org.wr-kernel-tools.git.tar.gz
>    git_git.pokylinux.org.prelink-cross.git.tar.gz

There are changes in master which will stop everything except the
linux-wrs recipe doing that. The linux-wrs recipe uses "fullclone" mode
of the git fetcher and this has known issues which we will address soon.

If anything other than linux-wrs is refreshing on master other than that
recipe, let us know.

> I'm still hoping for a way to have a static (no network needed) setup
> soon.  I have to provide such in a training for some of my customers
> in about a month :-)

It is meant to work like that!

Cheers,

Richard


