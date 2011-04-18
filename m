Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 49F564C80A8B
	for <poky@yoctoproject.org>; Mon, 18 Apr 2011 01:22:11 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I6M8ET008927;
	Mon, 18 Apr 2011 07:22:08 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08873-01; Mon, 18 Apr 2011 07:22:04 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p3I6M1as008921
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 18 Apr 2011 07:22:02 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: openembedded-core <openembedded-core@lists.openembedded.org>
Date: Mon, 18 Apr 2011 07:21:53 +0100
Message-ID: <1303107713.5518.49.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Shared work directory proof of concept
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
X-List-Received-Date: Mon, 18 Apr 2011 06:22:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

One of the items on the 1.1 feature list is sharing work directories.
This is desirable for example for gcc where the same sources are
unpacked and patched for gcc-cross-initial, gcc-cross-intermediate,
gcc-cross, gcc-runtime and so on.

I've done a little experimentation with this and the code linked to
below shows its at least possible and the kind of changes we might need
to make to bitbake to support it:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/gcc-sharedwork&id=4a22c2212466ef3bcb20960b1f99f8509347b24d

There are at least 4 issues I've noted in the commit which we'd need to
to look before we could start using this code, nothing impossible
though, just needs more work.

Cheers,

Richard


