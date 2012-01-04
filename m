Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C858E006DD
	for <poky@yoctoproject.org>; Wed,  4 Jan 2012 08:23:26 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q04GNM1J020860;
	Wed, 4 Jan 2012 16:23:22 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20732-02; Wed,  4 Jan 2012 16:23:16 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q04GNE6Y020854
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 4 Jan 2012 16:23:15 GMT
Message-ID: <1325694194.20759.23.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Colin Walters <walters@verbum.org>
Date: Wed, 04 Jan 2012 16:23:14 +0000
In-Reply-To: <1325642890.24646.8.camel@lenny>
References: <1325642890.24646.8.camel@lenny>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: poky@yoctoproject.org,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: -dev RPM packages Require:ing all of their bitbake build dependences
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
X-List-Received-Date: Wed, 04 Jan 2012 16:23:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-01-03 at 21:08 -0500, Colin Walters wrote:
> I'm trying to use Yocto to generate a target which has standard build
> tools like gcc, make, the glibc headers etc.
> 
> In theory, this is solved by task-core-sdk, but I ran into the issue
> that "pkg-config-dev" contains pkg.m4 which is obviously necessary for
> building anything that uses pkg-config and the autotools.  The further
> issue is that OE has a rule that -dev packages Require: all of the RPMs
> used to build the recipie.
> 
> In the case of pkgconfig-dev, that pulls in libglib-2.0-dev which pulls
> in libx11-dev which is already way more than I want.
> 
> One approach to this problem is to drain the -dev packages into the main
> "runtime" package.  I have difficulty imagining someone wanting to
> ship /usr/bin/pkg-config but not pkg.m4 for example.  I'm not yet sure
> how many recipes are affected though.

I can imagine someone downloading something and wanting to build it but
not reautoconf'ing it. At that point you'd need pkg-config but not
the .m4 files.

> Another approach would be to stop injecting -dev Requires by default.  I
> imagine this was done to handle the case of library A whose headers
> require library B.  However, a saner way to handle this I think is
> simply to push people to use pkg-config; IIRC a script exists to extract
> pkg-config dependencies from the .pc files and use that for the RPM
> auto-dependency phase.  That would ensure that e.g. gtk+-dev Requires:
> glib-dev.  This doesn't help non-pkg-config libraries, but those people
> should be shamed anyways =)

I think these dependencies are wrong and need revisiting. Currently,
-dev and -dbg packages share the same code and its tilted more in favour
of -dbg than it is for -dev.

I think the -dev packages make sense if you want to build X but not
build something that just depends on X. We should therefore move the
dependencies to a new package (need a good name) and rethink the -dev
package dependencies.

Cheers,

Richard



