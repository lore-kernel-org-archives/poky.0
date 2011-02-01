Return-Path: <koen@dominion.thruhere.net>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 67F9C4C8006D
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 12:02:46 -0600 (CST)
Received: by wye20 with SMTP id 20so7274560wye.35
	for <poky@yoctoproject.org>; Tue, 01 Feb 2011 10:02:45 -0800 (PST)
Received: by 10.216.178.132 with SMTP id f4mr956331wem.62.1296583365488;
	Tue, 01 Feb 2011 10:02:45 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id f52sm11588254wes.35.2011.02.01.10.02.44
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 01 Feb 2011 10:02:44 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <1296582252.13501.20225.camel@rex>
Date: Tue, 1 Feb 2011 19:02:43 +0100
Message-Id: <17034B22-07DB-4735-BCDF-1995718F7D59@dominion.thruhere.net>
References: <cover.1296267951.git.paul.eggleton@linux.intel.com>
	<70e416b931ba9ee1ca24a967a0410fda65b48bea.1296267951.git.paul.eggleton@linux.intel.com>
	<1296582252.13501.20225.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1082)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, poky@yoctoproject.org
Subject: Re: [PATCH 05/12] qt4-tools-native: update from OpenEmbedded
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
X-List-Received-Date: Tue, 01 Feb 2011 18:02:47 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 1 feb 2011, om 18:44 heeft Richard Purdie het volgende geschreven:

> On Sat, 2011-01-29 at 02:30 +0000, Paul Eggleton wrote:
>> @@ -30,7 +38,7 @@ EXTRA_OECONF =3D "-prefix ${prefix} \
>> EXTRA_OEMAKE =3D " "
>>=20
>> do_configure() {
>> -	(echo o; echo yes) | ./configure ${EXTRA_OECONF} || die =
"Configuring qt failed. EXTRA_OECONF was ${EXTRA_OECONF}"
>> +   (echo o; echo yes) | ./configure ${EXTRA_OECONF} || die =
"Configuring qt failed. EXTRA_OECONF was ${EXTRA_OECONF}"
>> }
>>=20
>> TOBUILD =3D "\
>> @@ -48,22 +56,22 @@ TOBUILD =3D "\
>> "
>>=20
>> do_compile() {
>> -	for i in ${TOBUILD}; do
>> -		cd ${S}/$i && oe_runmake CC=3D"${CC}" CXX=3D"${CXX}"
>> -	done
>> +    for i in ${TOBUILD}; do
>> +        cd ${S}/$i && oe_runmake CC=3D"${CC}" CXX=3D"${CXX}"
>> +    done
>> }
>=20
>=20
> Please don't reindent files when making other changes, it makes it =
hard
> to see where the real changes were. I've pulled things but taken out =
the
> worst whitespace changes manually this time.

There were huge whitespace differences between the code in OE and the =
one in yocto, which made diffing really difficult. I ran into this when =
doing qt in meta-oe. I'll resync that with the current yocto tree when I =
get some time.

regards,

Koen=

