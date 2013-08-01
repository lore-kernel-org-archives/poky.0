Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF7D0E014E4
	for <poky@yoctoproject.org>; Thu,  1 Aug 2013 08:27:51 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Thu, 1 Aug 2013 11:27:50 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: ChenQi <Qi.Chen@windriver.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Thu, 1 Aug 2013 11:27:48 -0400
Thread-Topic: [poky] Default root password without 'debug-tweaks'?
Thread-Index: Ac6Jw0HyO4v3sv8xSkezTncojzSxTQE9JUgQ
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153ADA9D39B@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
	<14175503.PQSq1zm65A@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
	<1925526.xFDIqGSNAm@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD977600@pluto.melinkcorp.local>
	<51F20CAB.30504@windriver.com>
In-Reply-To: <51F20CAB.30504@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00C8FA59004E5A00C8FBA6
acceptlanguage: en-US
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 01 Aug 2013 15:27:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,

I'm having some issues with setting the root password.  My image is based o=
ff of core-image-minimal, which uses TinyLogin for password management.  Fi=
rst, I tried getting the encrypted password by setting root's password and =
seeing what it looked like in /etc/shadow.  However, it looks like more inf=
ormation than what is shown in /etc/shadow is used to encrypt the password,=
 because the encrypted password is different each time.

For example, I have a new image that created with 'debug-tweaks' on, so roo=
t has a blank password.  From /etc/shadow:

root::15918:0:99999:7:::

showing root has no password.  If I change root's password to "password", I=
 get:

root:bZMfmHD5uJ3l6:15918:0:99999:7:::

If I change root's password to "password" again, I get:

root:CiwTL1eJx70ps:15918:0:99999:7:::

So at this time I do not know how to get the encrypted password.  And also =
related to the password, it looks like TinyLogin limits the password to 8 c=
haracters.  You can type something more than 8 characters for your password=
, but it will only use the first 8 characters.  I'd like to be able to use =
a slightly stronger password.  So my questions are:

* Is there a different password manager package that I can use that doesn't=
 have the 8 character limit?  I see that Busybox has password management, b=
ut I don't yet know if it has the same limitation.
* If there is another one to use, how do I ensure TinyLogin is not installe=
d?
* With the other password manager, how do I get the encrypted password to i=
nsert in the EXTRA_USER_PARAMS feature?
* The TinyLogin package is using the source code that was last updated in 2=
003, and the TinyLogin web page as directed from the package script states:=
 "TinyLogin was merged into BusyBox, current sources can thus be checked ou=
t via BusyBox."  Should the TinyLogin package be removed from core-image-mi=
nimal and BusyBox password management turned on to use more recent sources?

Regards,
Bryan

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of ChenQi
> Sent: Friday, July 26, 2013 1:44 AM
> To: poky@yoctoproject.org
> Subject: Re: [poky] Default root password without 'debug-tweaks'?
>=20
> On 07/25/2013 08:28 PM, Bryan Evenson wrote:
> > Paul,
> >
> > >From looking at the patch series Chen Qi recently posted about the
> > EXTRA_USER_PARAMS, one could do the following in your local.conf:
> >
> > require conf/distro/include/security_flags.inc
> The above line is not needed for this feature.
>=20
> > INHERIT +=3D "extrausers"
> > EXTRA_USERS_PARAMS =3D "\
> >      usermod -p 'encrypted_password' root; \ "
> >
> > If I understand correctly, that should change the root password to
> the
> > listed encrypted password.  But that still leaves the problem of
> > getting the encrypted root password.  Changing the password on the
> > hardware and then viewing the encrypted password under /etc/shadow is
> > a little messy,
> That's the way I used when testing this feature. As we're creating an
> image, this method is acceptable for me.
>=20
> >   but I'm at a loss for a better
> > solution that is guaranteed to work.  You could use crypt or mcrypt
> to
> > encrypt a file containing the password in plaintext on the host, but
> > you have to know the encryption algorithm used on the target
> > filesystem.
> If you find one, please let me know. Thanks.
>=20
> > If anyone knows of a better way to create the encrypted password that
> > would be used by the target, I'm open to suggestions.
> >
> > Thanks,
> > Bryan
> Just to be clear, use the way of copying files is not acceptable, as
> there are some directories related to user setting such as the user's
> home directory and mail directory. And these files should also be
> handled correctly.
>=20
> Best Regards,
> Chen Qi
>=20
> >
> >> -----Original Message-----
> >> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >> Sent: Thursday, July 25, 2013 8:01 AM
> >> To: Bryan Evenson
> >> Cc: poky@yoctoproject.org
> >> Subject: Re: [poky] Default root password without 'debug-tweaks'?
> >>
> >> On Thursday 25 July 2013 07:53:20 Bryan Evenson wrote:
> >>> Thank you for the explanation.  And just earlier this morning, I
> >> found
> >>> this description of how to change the root password for an image:
> >>> http://bec-systems.com/site/967/setting-the-root-password-in-an-
> >> openem
> >>> bedded
> >>> -image.
> >>>
> >>> If this would be a suggested method of performing the task, I could
> >>> write a patch for the documentation to add the details about the
> >>> root account being locked and the suggested method for modifying
> the
> >>> root password.  If you could point me to a good place to add this
> >>> detail, I'll send out a patch.
> >> Hmm, that method does seem a bit messy though. Ideally there would
> be
> >> a simple method available that didn't require you to boot the target
> >> system. Presumably it wouldn't be too hard to do it using tools on
> >> the host.
> >>
> >> Cheers,
> >> Paul
> >>
> >> --
> >>
> >> Paul Eggleton
> >> Intel Open Source Technology Centre
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> >
> >
>=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

