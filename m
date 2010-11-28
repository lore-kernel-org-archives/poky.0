Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id AADE54C811DB
	for <poky@yoctoproject.org>; Sun, 28 Nov 2010 15:19:46 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJfDa021058;
	Sun, 28 Nov 2010 21:19:41 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20810-05; Sun, 28 Nov 2010 21:19:37 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oASLJXNZ021046
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sun, 28 Nov 2010 21:19:36 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4CE6A7FF.4040507@windriver.com>
References: <cover.1290179273.git.josh@linux.intel.com>
	<00ec71b3834779b9c4a278b403729f2822a41845.1290179273.git.josh@linux.intel.com>
	<4CE6A7FF.4040507@windriver.com>
Date: Sun, 28 Nov 2010 13:57:31 +0000
Message-ID: <1290952651.27143.183.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] poky.conf: move the SDK install into versiondirectories
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
X-List-Received-Date: Sun, 28 Nov 2010 21:19:47 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-19 at 10:38 -0600, Mark Hatle wrote:
> As we move beyond 1.0 work.  Would it make sense to focus on making sure the SDK
> tooling works no matter where it is installed?
> 
> The compiler/linker can already do this... the other components that may be part
> of the SDK may need some slight changes to detect their current run-time
> location and adjust internal paths as necessary.
> 
> (We have experience doing this for Wind River Linux, so we should be able to
> help out if it's a desired feature for Poky.)

On the whole I think we're already in very good shape in this regard
since the sstate packages are designed to be relocatable and adapting
this to the sdk tooling isn't hard.

There is however one peculiarity to keep in mind. The packages we build
to populate /opt/poky are "special". How so?

We have to compile them against a libc so we choose to compile them
against one we build ourselves since we can't guarantee that for a given
SDKMACHINE choice, a suitable libc would be available on any given build
machine. This isn't a problem, we have a cross compiling build system
capable for building toolchains so building our own libc is by far the
easiest thing to do. Also, by doing this we guarantee that the binary
will run pretty much anywhere as we have *no* native dependencies to
worry about.

The twist is that by building the libc we build a dyanmic loader too as
the two are bound together. As we cannot install things into /lib*, we
build our libc to live in /opt/poky/sysroots/*/lib. Our libc and dynamic
loader know how to get the search order right for libs. The trouble is
that the path to the dynamic loader is hardcoded into binaries. We want
binaries to find our loader, not the system one as they behave
differently for path search order.

There is no way to specify the dynamic loader path using $$ORIGIN or as
a relative path.

On the positive side, if you have a libc binary you want to drop in
instead of our version and are happy your libc represents a minimum
target requirement such as LSB X.Y then telling Poky to use that instead
of building its own isn't hard. I have seen some nasty corner cases for
the dynamic linker though where you load a system lib which loads a
dependency for which we ship a library of a different version
within /opt/poky (e.g. xrandr). The main binary can then see a version
of the library it wasn't compiled for and there starts a world of pain.

I value Poky's total independence model and it can be adapted to suit
something like an LSB target easily as that is a simplified version
(where you'd have to provide some prebuilt binaries). The downside is
that the dynamic loader location is hardcoded into the binary.

I have been thinking a nice solution would be a redirection loader at
some specified path which would simply transfer execution to the "real"
loader allowing binaries to become relocatable again. The alternative
would be $$ORIGIN support or relative path support for dynamic loaders
but this would require Linux kernel changes and it would hence be a
while before it could be relied upon, even if such a change were
acceptable to mainline.

Cheers,

Richard




