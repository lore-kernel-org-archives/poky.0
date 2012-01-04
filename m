Return-Path: <walters@verbum.org>
Received: from out5.smtp.messagingengine.com (out5.smtp.messagingengine.com
	[66.111.4.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C78EFE0070D
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 18:08:28 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@messagingengine.com;
	x-dkim-adsp=none (insecure policy)
Received: from compute2.internal (compute2.nyi.mail.srv.osa [10.202.2.42])
	by gateway1.nyi.mail.srv.osa (Postfix) with ESMTP id 4944B20E44
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 21:08:27 -0500 (EST)
Received: from frontend1.nyi.mail.srv.osa ([10.202.2.160])
	by compute2.internal (MEProxy); Tue, 03 Jan 2012 21:08:27 -0500
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=subject:from:to:date:content-type
	:content-transfer-encoding:message-id:mime-version; s=smtpout;
	bh=O5a4O58WI/rBnB2MVp+/7Nx2MGQ=; b=bsIlx49DqvI06YXOdlMAaUkdVX01
	rEZN7Vz2EvDQvlCy6wzm3NE9L9rGaXkAzNaUdfYfexLhKaMPNuC0sKH50TVd5WeV
	4PD+1NxBZxVYDapcGJp/QOBPISh+ungBaRzGAqtVGs62bgV1Qnoa6my/MYaQBwyj
	5vBxKvONMCqTuEQ=
X-Sasl-enc: u7nSD/pQdx3+/8Q9PSwHbuwZ8QFbjchGNfTNCtTmVoS1 1325642907
Received: from [192.168.1.6] (c-65-96-60-117.hsd1.ct.comcast.net
	[65.96.60.117])
	by mail.messagingengine.com (Postfix) with ESMTPA id 149CB8E007F
	for <poky@yoctoproject.org>; Tue,  3 Jan 2012 21:08:27 -0500 (EST)
From: Colin Walters <walters@verbum.org>
To: poky@yoctoproject.org
Date: Tue, 03 Jan 2012 21:08:09 -0500
X-Mailer: Evolution 3.0.3 (3.0.3-1.fc15) 
Message-ID: <1325642890.24646.8.camel@lenny>
Mime-Version: 1.0
Subject: -dev RPM packages Require:ing all of their bitbake build dependences
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
X-List-Received-Date: Wed, 04 Jan 2012 02:08:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

I'm trying to use Yocto to generate a target which has standard build
tools like gcc, make, the glibc headers etc.

In theory, this is solved by task-core-sdk, but I ran into the issue
that "pkg-config-dev" contains pkg.m4 which is obviously necessary for
building anything that uses pkg-config and the autotools.  The further
issue is that OE has a rule that -dev packages Require: all of the RPMs
used to build the recipie.

In the case of pkgconfig-dev, that pulls in libglib-2.0-dev which pulls
in libx11-dev which is already way more than I want.

One approach to this problem is to drain the -dev packages into the main
"runtime" package.  I have difficulty imagining someone wanting to
ship /usr/bin/pkg-config but not pkg.m4 for example.  I'm not yet sure
how many recipes are affected though.

Another approach would be to stop injecting -dev Requires by default.  I
imagine this was done to handle the case of library A whose headers
require library B.  However, a saner way to handle this I think is
simply to push people to use pkg-config; IIRC a script exists to extract
pkg-config dependencies from the .pc files and use that for the RPM
auto-dependency phase.  That would ensure that e.g. gtk+-dev Requires:
glib-dev.  This doesn't help non-pkg-config libraries, but those people
should be shamed anyways =)



