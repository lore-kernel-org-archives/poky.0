Return-Path: <bevenson@melinkcorp.com>
Received: from pluto.melinkcorp.com (rrcs-98-100-91-244.central.biz.rr.com
	[98.100.91.244])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88CCDE003D4
	for <poky@yoctoproject.org>; Mon,  5 Aug 2013 06:59:07 -0700 (PDT)
Received: from pluto.melinkcorp.local ([10.0.2.4]) by pluto.melinkcorp.local
	([10.0.2.4]) with mapi; Mon, 5 Aug 2013 09:59:06 -0400
From: Bryan Evenson <bevenson@melinkcorp.com>
To: ChenQi <Qi.Chen@windriver.com>
Date: Mon, 5 Aug 2013 09:59:05 -0400
Thread-Topic: [poky] Default root password without 'debug-tweaks'?
Thread-Index: Ac6PKNb/miBObsDrRRCgABcDGvbRXwCuSqIw
Message-ID: <91586D499ADFD74FBCFB8425266A5DE40153ADB8702F@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
	<14175503.PQSq1zm65A@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
	<1925526.xFDIqGSNAm@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD977600@pluto.melinkcorp.local>
	<51F20CAB.30504@windriver.com>
	<91586D499ADFD74FBCFB8425266A5DE40153ADA9D39B@pluto.melinkcorp.local>
	<51FB1AC7.50109@windriver.com>
In-Reply-To: <51FB1AC7.50109@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0071C5FE004EC60071C74B
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
X-List-Received-Date: Mon, 05 Aug 2013 13:59:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



> -----Original Message-----
> From: ChenQi [mailto:Qi.Chen@windriver.com]
> Sent: Thursday, August 01, 2013 10:35 PM
> To: Bryan Evenson
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Default root password without 'debug-tweaks'?
>=20
> On 08/01/2013 11:27 PM, Bryan Evenson wrote:
> > All,
> >
> > I'm having some issues with setting the root password.  My image is
> based off of core-image-minimal, which uses TinyLogin for password
> management.  First, I tried getting the encrypted password by setting
> root's password and seeing what it looked like in /etc/shadow.
> However, it looks like more information than what is shown in
> /etc/shadow is used to encrypt the password, because the encrypted
> password is different each time.
> >
> > For example, I have a new image that created with 'debug-tweaks' on,
> so root has a blank password.  From /etc/shadow:
> >
> > root::15918:0:99999:7:::
> >
> > showing root has no password.  If I change root's password to
> "password", I get:
> >
> > root:bZMfmHD5uJ3l6:15918:0:99999:7:::
> >
> > If I change root's password to "password" again, I get:
> >
> > root:CiwTL1eJx70ps:15918:0:99999:7:::
> >
> > So at this time I do not know how to get the encrypted password.  And
> also related to the password, it looks like TinyLogin limits the
> password to 8 characters.  You can type something more than 8
> characters for your password, but it will only use the first 8
> characters.  I'd like to be able to use a slightly stronger password.
> So my questions are:
> >
> > * Is there a different password manager package that I can use that
> doesn't have the 8 character limit?  I see that Busybox has password
> management, but I don't yet know if it has the same limitation.
> Tinylogin has been deprecated and officially removed from Yocto. We now
> use busybox as a replacement. It doesn't have 8-char limitation, as far
> as I know.
> > * If there is another one to use, how do I ensure TinyLogin is not
> installed?
> If you're using Dylan, perhaps you need to backport relevant patches
> ...
>=20
> http://git.yoctoproject.org/cgit.cgi/poky-
> contrib/log/?h=3DChenQi/busybox-fixes
> (9 patches)
> http://git.yoctoproject.org/cgit.cgi/poky-
> contrib/log/?h=3DChenQi/busybox-on-device-upgrade
> (1 patch)
>=20
> > * With the other password manager, how do I get the encrypted
> password to insert in the EXTRA_USER_PARAMS feature?
> The user interface remains all the same with tinylogin.
>=20
> Best Regards,
> Chen Qi

Chen Qi,

I think I'm still missing something.  I applied the 10 listed patches to my=
 poky/dylan build environment; I had to make minor tweaks to the patches (a=
djust the before/after text on some patches) but overall they applied clean=
ly.  I verified that the Busybox configuration now has a number of options =
set under the "Login/Password Management Utilities" section under menuconfi=
g.  I also verified the new image is not using Tinylogin for password manag=
ement.  However, my two original problems remain.  The encrypted password s=
hown in /etc/shadow uses some extra information that I don't know about, as=
 the same password does not encrypt to the same value on successive attempt=
s.  Also, only the first 8 characters are used for the password.  For my te=
st, I changed root's password to "password" twice.  On the two occasions, t=
he encrypted password shown in /etc/shadow for root were different.  I then=
 changed root's password to "passwordplus" and logged out; I then successfu=
lly logged in just typing "password" for the password.

Are there some other settings I'm missing to use longer passwords?  And how=
 do I get the encrypted password to use for the EXTRA_USER_PARAMS feature?

Thanks,
Bryan
>=20
> > * The TinyLogin package is using the source code that was last
> updated in 2003, and the TinyLogin web page as directed from the
> package script states: "TinyLogin was merged into BusyBox, current
> sources can thus be checked out via BusyBox."  Should the TinyLogin
> package be removed from core-image-minimal and BusyBox password
> management turned on to use more recent sources?
> >
> > Regards,
> > Bryan
> >
> >> -----Original Message-----
> >> From: poky-bounces@yoctoproject.org [mailto:poky-
> >> bounces@yoctoproject.org] On Behalf Of ChenQi
> >> Sent: Friday, July 26, 2013 1:44 AM
> >> To: poky@yoctoproject.org
> >> Subject: Re: [poky] Default root password without 'debug-tweaks'?
> >>
> >> On 07/25/2013 08:28 PM, Bryan Evenson wrote:
> >>> Paul,
> >>>
> >>> >From looking at the patch series Chen Qi recently posted about the
> >>> EXTRA_USER_PARAMS, one could do the following in your local.conf:
> >>>
> >>> require conf/distro/include/security_flags.inc
> >> The above line is not needed for this feature.
> >>
> >>> INHERIT +=3D "extrausers"
> >>> EXTRA_USERS_PARAMS =3D "\
> >>>       usermod -p 'encrypted_password' root; \ "
> >>>
> >>> If I understand correctly, that should change the root password to
> >> the
> >>> listed encrypted password.  But that still leaves the problem of
> >>> getting the encrypted root password.  Changing the password on the
> >>> hardware and then viewing the encrypted password under /etc/shadow
> >>> is a little messy,
> >> That's the way I used when testing this feature. As we're creating
> an
> >> image, this method is acceptable for me.
> >>
> >>>    but I'm at a loss for a better
> >>> solution that is guaranteed to work.  You could use crypt or mcrypt
> >> to
> >>> encrypt a file containing the password in plaintext on the host,
> but
> >>> you have to know the encryption algorithm used on the target
> >>> filesystem.
> >> If you find one, please let me know. Thanks.
> >>
> >>> If anyone knows of a better way to create the encrypted password
> >>> that would be used by the target, I'm open to suggestions.
> >>>
> >>> Thanks,
> >>> Bryan
> >> Just to be clear, use the way of copying files is not acceptable, as
> >> there are some directories related to user setting such as the
> user's
> >> home directory and mail directory. And these files should also be
> >> handled correctly.
> >>
> >> Best Regards,
> >> Chen Qi
> >>
> >>>> -----Original Message-----
> >>>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> >>>> Sent: Thursday, July 25, 2013 8:01 AM
> >>>> To: Bryan Evenson
> >>>> Cc: poky@yoctoproject.org
> >>>> Subject: Re: [poky] Default root password without 'debug-tweaks'?
> >>>>
> >>>> On Thursday 25 July 2013 07:53:20 Bryan Evenson wrote:
> >>>>> Thank you for the explanation.  And just earlier this morning, I
> >>>> found
> >>>>> this description of how to change the root password for an image:
> >>>>> http://bec-systems.com/site/967/setting-the-root-password-in-an-
> >>>> openem
> >>>>> bedded
> >>>>> -image.
> >>>>>
> >>>>> If this would be a suggested method of performing the task, I
> >>>>> could write a patch for the documentation to add the details
> about
> >>>>> the root account being locked and the suggested method for
> >>>>> modifying
> >> the
> >>>>> root password.  If you could point me to a good place to add this
> >>>>> detail, I'll send out a patch.
> >>>> Hmm, that method does seem a bit messy though. Ideally there would
> >> be
> >>>> a simple method available that didn't require you to boot the
> >>>> target system. Presumably it wouldn't be too hard to do it using
> >>>> tools on the host.
> >>>>
> >>>> Cheers,
> >>>> Paul
> >>>>
> >>>> --
> >>>>
> >>>> Paul Eggleton
> >>>> Intel Open Source Technology Centre
> >>> _______________________________________________
> >>> poky mailing list
> >>> poky@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/poky
> >>>
> >>>
> >> _______________________________________________
> >> poky mailing list
> >> poky@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/poky
> >


