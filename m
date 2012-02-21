Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE10AE013A3
	for <poky@lists.yoctoproject.org>; Tue, 21 Feb 2012 14:03:39 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1LM3ZMq020286;
	Tue, 21 Feb 2012 22:03:35 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 19096-10; Tue, 21 Feb 2012 22:03:30 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q1LM3Tj6020278
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 21 Feb 2012 22:03:30 GMT
Message-ID: <1329861809.20261.68.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: poky <poky@lists.yoctoproject.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>
Date: Tue, 21 Feb 2012 22:03:29 +0000
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Subject: Heads up: basichash being enabled for poky by default
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
X-List-Received-Date: Tue, 21 Feb 2012 22:03:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

This is just to warn people that I'm going to push a change making
basichash the default for DISTRO=poky as of tomorrow. This change has
been brewing for a while and has seen plenty of discussion. Its time to
throw the switch:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?id=f65bbb41d6fe9763acbd80df5885b3526259ce80

I haven't yet decided what should happen when in OE-Core and am open to
opinions on that.

If you're not ready for the change, you can still set:

BB_SIGNATURE_HANDLER = 'OEbasic'

to get the existing behaviour either at a local or distro level. The
difference is one will include the sstate hash in the files in
tmp/stamps/*. This means if the hash changes, it gets rebuilt.

As a result of this commit your tree will rebuild. I'll bump the TMPDIR
ABI version number at the same time so people more easily spot the
change and can either revert or continue at their choice.

Cheers,

Richard






