Return-Path: <John_Mehaffey@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A24BE013DE
	for <poky@yoctoproject.org>; Mon,  5 Aug 2013 08:08:55 -0700 (PDT)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1V6MOz-0003jp-I7 from John_Mehaffey@mentor.com ;
	Mon, 05 Aug 2013 08:08:53 -0700
Received: from SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 5 Aug 2013 08:08:53 -0700
Received: from NA-MBX-03.mgc.mentorg.com ([fe80::9a:1569:df57:45b8]) by
	SVR-ORW-FEM-03.mgc.mentorg.com ([147.34.97.39]) with mapi id
	14.02.0247.003; Mon, 5 Aug 2013 08:08:52 -0700
From: "Mehaffey, John" <John_Mehaffey@mentor.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, ChenQi <Qi.Chen@windriver.com>
Thread-Topic: [poky] Default root password without 'debug-tweaks'?
Thread-Index: Ac6In4XxC1u+BUnoT0i5uanH1yMoJwAx9T0AAAA4BwAAAELCAAAA94KAACQr4YABQiGPAAAXS0yAAK7F7oD//5xx8w==
Date: Mon, 5 Aug 2013 15:08:52 +0000
Message-ID: <371E240E6FC1D44DA5E51EE9DCDCB7845E4D6E3E@NA-MBX-03.mgc.mentorg.com>
References: <91586D499ADFD74FBCFB8425266A5DE40153AD9774C7@pluto.melinkcorp.local>
	<14175503.PQSq1zm65A@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD9775E1@pluto.melinkcorp.local>
	<1925526.xFDIqGSNAm@helios>
	<91586D499ADFD74FBCFB8425266A5DE40153AD977600@pluto.melinkcorp.local>
	<51F20CAB.30504@windriver.com>
	<91586D499ADFD74FBCFB8425266A5DE40153ADA9D39B@pluto.melinkcorp.local>
	<51FB1AC7.50109@windriver.com>,
	<91586D499ADFD74FBCFB8425266A5DE40153ADB8702F@pluto.melinkcorp.local>
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153ADB8702F@pluto.melinkcorp.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [147.34.91.1]
MIME-Version: 1.0
X-OriginalArrivalTime: 05 Aug 2013 15:08:53.0754 (UTC)
	FILETIME=[B30C7DA0:01CE91ED]
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
X-List-Received-Date: Mon, 05 Aug 2013 15:08:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: poky-bounces@yoctoproject.org [poky-bounces@yoctoproject.org] on be=
half of Bryan Evenson [bevenson@melinkcorp.com]=0A=
> Sent: Monday, August 05, 2013 6:59 AM=0A=
> To: ChenQi=0A=
> Cc: poky@yoctoproject.org=0A=
> Subject: Re: [poky] Default root password without 'debug-tweaks'?=0A=
> =0A=
> > -----Original Message-----=0A=
> > From: ChenQi [mailto:Qi.Chen@windriver.com]=0A=
> > Sent: Thursday, August 01, 2013 10:35 PM=0A=
> > To: Bryan Evenson=0A=
> > Cc: poky@yoctoproject.org=0A=
> > Subject: Re: [poky] Default root password without 'debug-tweaks'?=0A=
> >=0A=
> > On 08/01/2013 11:27 PM, Bryan Evenson wrote:=0A=
> > > All,=0A=
> > >=0A=
> > > I'm having some issues with setting the root password.  My image is=
=0A=
> > based off of core-image-minimal, which uses TinyLogin for password=0A=
> > management.  First, I tried getting the encrypted password by setting=
=0A=
> > root's password and seeing what it looked like in /etc/shadow.=0A=
> > However, it looks like more information than what is shown in=0A=
> > /etc/shadow is used to encrypt the password, because the encrypted=0A=
> > password is different each time.=0A=
> > >=0A=
> > > For example, I have a new image that created with 'debug-tweaks' on,=
=0A=
> > so root has a blank password.  From /etc/shadow:=0A=
> > >=0A=
> > > root::15918:0:99999:7:::=0A=
> > >=0A=
> > > showing root has no password.  If I change root's password to=0A=
> > "password", I get:=0A=
> > >=0A=
> > > root:bZMfmHD5uJ3l6:15918:0:99999:7:::=0A=
> > >=0A=
> > > If I change root's password to "password" again, I get:=0A=
> > >=0A=
> > > root:CiwTL1eJx70ps:15918:0:99999:7:::=0A=
> > >=0A=
> > > So at this time I do not know how to get the encrypted password.  And=
=0A=
> > also related to the password, it looks like TinyLogin limits the=0A=
> > password to 8 characters.  You can type something more than 8=0A=
> > characters for your password, but it will only use the first 8=0A=
> > characters.  I'd like to be able to use a slightly stronger password.=
=0A=
> > So my questions are:=0A=
> > >=0A=
> > > * Is there a different password manager package that I can use that=
=0A=
> > doesn't have the 8 character limit?  I see that Busybox has password=0A=
> > management, but I don't yet know if it has the same limitation.=0A=
> > Tinylogin has been deprecated and officially removed from Yocto. We now=
=0A=
> > use busybox as a replacement. It doesn't have 8-char limitation, as far=
=0A=
> > as I know.=0A=
> > > * If there is another one to use, how do I ensure TinyLogin is not=0A=
> > installed?=0A=
> > If you're using Dylan, perhaps you need to backport relevant patches=0A=
> > ...=0A=
> >=0A=
> > http://git.yoctoproject.org/cgit.cgi/poky-=0A=
> > contrib/log/?h=3DChenQi/busybox-fixes=0A=
> > (9 patches)=0A=
> > http://git.yoctoproject.org/cgit.cgi/poky-=0A=
> > contrib/log/?h=3DChenQi/busybox-on-device-upgrade=0A=
> > (1 patch)=0A=
> >=0A=
> > > * With the other password manager, how do I get the encrypted=0A=
> > password to insert in the EXTRA_USER_PARAMS feature?=0A=
> > The user interface remains all the same with tinylogin.=0A=
> >=0A=
> > Best Regards,=0A=
> > Chen Qi=0A=
> =0A=
> Chen Qi,=0A=
> =0A=
> I think I'm still missing something.  I applied the 10 listed patches to =
my poky/dylan build environment; I had to make minor tweaks to the patches =
(adjust the before/after text on some patches) but overall they applied cle=
anly.  I verified that the Busybox configuration now has a number of option=
s set under the "Login/Password Management Utilities" section under menucon=
fig.  I also verified the new image is not using Tinylogin for password man=
agement.  However, my two original problems remain.  The encrypted password=
 shown in /etc/shadow uses some extra information that I don't know about, =
as the same password does not encrypt to the same value on successive attem=
pts.  Also, only the first 8 characters are used for the password.  For my =
test, I changed root's password to "password" twice.  On the two occasions,=
 the encrypted password shown in /etc/shadow for root were different.  I th=
en changed root's password to "passwordplus" and logged out; I then success=
fully logged in j=0A=
>  ust typing "password" for the password.=0A=
> =0A=
> Are there some other settings I'm missing to use longer passwords?  And h=
ow do I get the encrypted password to use for the EXTRA_USER_PARAMS feature=
?=0A=
> =0A=
> Thanks,=0A=
> Bryan=0A=
=0A=
Perhaps the workaround at http://forum.tinycorelinux.net/index.php?topic=3D=
9215.0 applies here.=0A=
=0A=
Also, search for "password salt" for an explanation about why the password =
does not encrypt to the same value on successive attempts.=0A=
=0A=
John Mehaffey=0A=
Senior System Architect=0A=
Mentor Graphics Corporation=0A=
=0A=
> >=0A=
> > > * The TinyLogin package is using the source code that was last=0A=
> > updated in 2003, and the TinyLogin web page as directed from the=0A=
> > package script states: "TinyLogin was merged into BusyBox, current=0A=
> > sources can thus be checked out via BusyBox."  Should the TinyLogin=0A=
> > package be removed from core-image-minimal and BusyBox password=0A=
> > management turned on to use more recent sources?=0A=
> > >=0A=
> > > Regards,=0A=
> > > Bryan=0A=
> > >=0A=
> > >> -----Original Message-----=0A=
> > >> From: poky-bounces@yoctoproject.org [mailto:poky-=0A=
> > >> bounces@yoctoproject.org] On Behalf Of ChenQi=0A=
> > >> Sent: Friday, July 26, 2013 1:44 AM=0A=
> > >> To: poky@yoctoproject.org=0A=
> > >> Subject: Re: [poky] Default root password without 'debug-tweaks'?=0A=
> > >>=0A=
> > >> On 07/25/2013 08:28 PM, Bryan Evenson wrote:=0A=
> > >>> Paul,=0A=
> > >>>=0A=
> > >>> >From looking at the patch series Chen Qi recently posted about the=
=0A=
> > >>> EXTRA_USER_PARAMS, one could do the following in your local.conf:=
=0A=
> > >>>=0A=
> > >>> require conf/distro/include/security_flags.inc=0A=
> > >> The above line is not needed for this feature.=0A=
> > >>=0A=
> > >>> INHERIT +=3D "extrausers"=0A=
> > >>> EXTRA_USERS_PARAMS =3D "\=0A=
> > >>>       usermod -p 'encrypted_password' root; \ "=0A=
> > >>>=0A=
> > >>> If I understand correctly, that should change the root password to=
=0A=
> > >> the=0A=
> > >>> listed encrypted password.  But that still leaves the problem of=0A=
> > >>> getting the encrypted root password.  Changing the password on the=
=0A=
> > >>> hardware and then viewing the encrypted password under /etc/shadow=
=0A=
> > >>> is a little messy,=0A=
> > >> That's the way I used when testing this feature. As we're creating=
=0A=
> > an=0A=
> > >> image, this method is acceptable for me.=0A=
> > >>=0A=
> > >>>    but I'm at a loss for a better=0A=
> > >>> solution that is guaranteed to work.  You could use crypt or mcrypt=
=0A=
> > >> to=0A=
> > >>> encrypt a file containing the password in plaintext on the host,=0A=
> > but=0A=
> > >>> you have to know the encryption algorithm used on the target=0A=
> > >>> filesystem.=0A=
> > >> If you find one, please let me know. Thanks.=0A=
> > >>=0A=
> > >>> If anyone knows of a better way to create the encrypted password=0A=
> > >>> that would be used by the target, I'm open to suggestions.=0A=
> > >>>=0A=
> > >>> Thanks,=0A=
> > >>> Bryan=0A=
> > >> Just to be clear, use the way of copying files is not acceptable, as=
=0A=
> > >> there are some directories related to user setting such as the=0A=
> > user's=0A=
> > >> home directory and mail directory. And these files should also be=0A=
> > >> handled correctly.=0A=
> > >>=0A=
> > >> Best Regards,=0A=
> > >> Chen Qi=0A=
> > >>=0A=
> > >>>> -----Original Message-----=0A=
> > >>>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]=0A=
> > >>>> Sent: Thursday, July 25, 2013 8:01 AM=0A=
> > >>>> To: Bryan Evenson=0A=
> > >>>> Cc: poky@yoctoproject.org=0A=
> > >>>> Subject: Re: [poky] Default root password without 'debug-tweaks'?=
=0A=
> > >>>>=0A=
> > >>>> On Thursday 25 July 2013 07:53:20 Bryan Evenson wrote:=0A=
> > >>>>> Thank you for the explanation.  And just earlier this morning, I=
=0A=
> > >>>> found=0A=
> > >>>>> this description of how to change the root password for an image:=
=0A=
> > >>>>> http://bec-systems.com/site/967/setting-the-root-password-in-an-=
=0A=
> > >>>> openem=0A=
> > >>>>> bedded=0A=
> > >>>>> -image.=0A=
> > >>>>>=0A=
> > >>>>> If this would be a suggested method of performing the task, I=0A=
> > >>>>> could write a patch for the documentation to add the details=0A=
> > about=0A=
> > >>>>> the root account being locked and the suggested method for=0A=
> > >>>>> modifying=0A=
> > >> the=0A=
> > >>>>> root password.  If you could point me to a good place to add this=
=0A=
> > >>>>> detail, I'll send out a patch.=0A=
> > >>>> Hmm, that method does seem a bit messy though. Ideally there would=
=0A=
> > >> be=0A=
> > >>>> a simple method available that didn't require you to boot the=0A=
> > >>>> target system. Presumably it wouldn't be too hard to do it using=
=0A=
> > >>>> tools on the host.=0A=
> > >>>>=0A=
> > >>>> Cheers,=0A=
> > >>>> Paul=0A=
> > >>>>=0A=
> > >>>> --=0A=
> > >>>>=0A=
> > >>>> Paul Eggleton=0A=
> > >>>> Intel Open Source Technology Centre=0A=
> > >>> _______________________________________________=0A=
> > >>> poky mailing list=0A=
> > >>> poky@yoctoproject.org=0A=
> > >>> https://lists.yoctoproject.org/listinfo/poky=0A=
> > >>>=0A=
> > >>>=0A=
> > >> _______________________________________________=0A=
> > >> poky mailing list=0A=
> > >> poky@yoctoproject.org=0A=
> > >> https://lists.yoctoproject.org/listinfo/poky=0A=
> > >=0A=
> =0A=
> _______________________________________________=0A=
> poky mailing list=0A=
> poky@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/poky=0A=
> =0A=

