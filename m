Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71C86E013A2
	for <poky@yoctoproject.org>; Thu, 25 Jul 2013 05:28:29 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 25 Jul 2013 08:28:29 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 25 Jul 2013 08:28:29 -0400
Thread-Topic: [poky] Default root password without 'debug-tweaks'?
Thread-Index: Ac6JLpzP4+J/LefmRk2yrxy7BBCUCgAAJgxg
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153AD977600@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
	<14175503.PQSq1zm65A@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
	<1925526.xFDIqGSNAm@helios>
In-Reply-To: <1925526.xFDIqGSNAm@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 002D4A49004D8A002D4B96
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
X-List-Received-Date: Thu, 25 Jul 2013 12:28:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Paul,

From looking at the patch series Chen Qi recently posted about the
EXTRA_USER_PARAMS, one could do the following in your local.conf:

require conf/distro/include/security_flags.inc
INHERIT +=3D "extrausers"
EXTRA_USERS_PARAMS =3D "\
    usermod -p 'encrypted_password' root; \
"

If I understand correctly, that should change the root password
to the listed encrypted password.  But that still leaves the problem
of getting the encrypted root password.  Changing the password on
the hardware and then viewing the encrypted password under
/etc/shadow is a little messy, but I'm at a loss for a better
solution that is guaranteed to work.  You could use crypt or
mcrypt to encrypt a file containing the password in plaintext on
the host, but you have to know the encryption algorithm used on
the target filesystem.

If anyone knows of a better way to create the encrypted password
that would be used by the target, I'm open to suggestions.

Thanks,
Bryan

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Thursday, July 25, 2013 8:01 AM
> To: Bryan Evenson
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Default root password without 'debug-tweaks'?
>=20
> On Thursday 25 July 2013 07:53:20 Bryan Evenson wrote:
> > Thank you for the explanation.  And just earlier this morning, I
> found
> > this description of how to change the root password for an image:
> > http://bec-systems.com/site/967/setting-the-root-password-in-an-
> openem
> > bedded
> > -image.
> >
> > If this would be a suggested method of performing the task, I could
> > write a patch for the documentation to add the details about the root
> > account being locked and the suggested method for modifying the root
> > password.  If you could point me to a good place to add this detail,
> > I'll send out a patch.
>=20
> Hmm, that method does seem a bit messy though. Ideally there would be a
> simple method available that didn't require you to boot the target
> system. Presumably it wouldn't be too hard to do it using tools on the
> host.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

