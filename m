Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09E16E01363
	for <poky@yoctoproject.org>; Wed, 24 Jul 2013 11:56:39 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Wed, 24 Jul 2013 14:56:38 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Wed, 24 Jul 2013 14:56:36 -0400
Thread-Topic: Default root password without 'debug-tweaks'?
Thread-Index: Ac6In4XxC1u+BUnoT0i5uanH1yMoJw==
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0190F454004D7C0190F5A1
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Default root password without 'debug-tweaks'?
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
X-List-Received-Date: Wed, 24 Jul 2013 18:56:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have an image that I built without the 'debug-tweaks' image feature, just=
 to confirm that there is a root password.  Sure enough, I need to type som=
ething in to login as root.  Unfortunately, the default root password for t=
he image is not something obvious, and I haven't been able to track down wh=
at the default is set to.

Does anyone know what the default root password is set to when you turn off=
 the 'debug-tweaks' image feature?  While we're at it, what's a good method=
 to set the default root password to a different value for an image?  I'm o=
n Poky 1.4.1 (danny 9.0.1) if that makes a difference.

Thanks,
Bryan

