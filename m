Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBD67E013A2
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 04:53:27 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 25 Jul 2013 07:53:26 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 25 Jul 2013 07:53:20 -0400
Thread-Topic: [poky] Default root password without 'debug-tweaks'?
Thread-Index: Ac6JLLGMP1wqdKXUROuu6FSDIq40PwAABmsQ
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
	<14175503.PQSq1zm65A@helios>
In-Reply-To: <14175503.PQSq1zm65A@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 000D3255004D8A000D33A2
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Default root password without 'debug-tweaks'?
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
X-List-Received-Date: Thu, 25 Jul 2013 11:53:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,

Thank you for the explanation.  And just earlier this morning, I found this
description of how to change the root password for an image:
http://bec-systems.com/site/967/setting-the-root-password-in-an-openembedde=
d-image.

If this would be a suggested method of performing the task, I could
write a patch for the documentation to add the details about the=20
root account being locked and the suggested method for modifying the
root password.  If you could point me to a good place to add this
detail, I'll send out a patch.

Thanks,
Bryan


> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Thursday, July 25, 2013 7:47 AM
> To: Bryan Evenson
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Default root password without 'debug-tweaks'?
>=20
> Hi Bryan,
>=20
> On Wednesday 24 July 2013 14:56:36 Bryan Evenson wrote:
> > I have an image that I built without the 'debug-tweaks' image
> feature,
> > just to confirm that there is a root password.  Sure enough, I need
> to
> > type something in to login as root.  Unfortunately, the default root
> > password for the image is not something obvious, and I haven't been
> > able to track down what the default is set to.
> >
> > Does anyone know what the default root password is set to when you
> > turn off the 'debug-tweaks' image feature?
>=20
> When debug-tweaks is not in IMAGE_FEATURES, there is no valid password
> set for root, i.e. the account is effectively locked.
>=20
> > While we're at it, what's a good method to set the default root
> > password to a different value for an image?
>=20
> One way to do it would be to define a shell function in your image
> recipe (or a class that your image recipes all inherit, if you have
> more than one) that modifies ${IMAGE_ROOTFS}/etc/passwd, and then add
> that function to ROOTFS_POSTPROCESS_COMMAND.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

