Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E46614C806DA;
	Tue, 25 Jan 2011 13:18:51 -0600 (CST)
Received: by eyz10 with SMTP id 10so107966eyz.35
	for <multiple recipients>; Tue, 25 Jan 2011 11:18:50 -0800 (PST)
Received: by 10.216.19.139 with SMTP id n11mr191221wen.78.1295983130044;
	Tue, 25 Jan 2011 11:18:50 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id r6sm7335384weq.20.2011.01.25.11.18.48
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 25 Jan 2011 11:18:49 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <F4686931-067A-4564-BDD3-073B8F1BB435@dominion.thruhere.net>
Date: Tue, 25 Jan 2011 20:18:48 +0100
Message-Id: <7F187B04-9B3D-4D57-9060-D8B710B59A8A@dominion.thruhere.net>
References: <1295963829.14388.49564.camel@rex>
	<F4686931-067A-4564-BDD3-073B8F1BB435@dominion.thruhere.net>
To: poky <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.1082)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Major feature changes for the next release - merging very soon
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
X-List-Received-Date: Tue, 25 Jan 2011 19:18:52 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 25 jan 2011, om 19:34 heeft Koen Kooi het volgende geschreven:

>=20
> Op 25 jan 2011, om 14:57 heeft Richard Purdie het volgende geschreven:
>=20
>> As has been mentioned in other emails we're working on some major
>> enhancements for the next release. Several components of these are =
now
>> ready for merging to the master branch. These include:
>>=20
>> * Rework of the compiler bootstrap process
>>=20
>> If you've ever tried to run "bitbake eglibc -c clean;bitbake eglibc" =
or
>> any of the gcc components you'll have run into issues with the =
compiler
>> bootstrap process overwriting files. This also causes problems for
>> sstate as it doesn't get on well with two sstate archives providing =
the
>> same file.
>>=20
>> The changes we have queued split the intermediate components into a
>> separate sysroot so no files are overwritten and the whole process is
>> less fragile and more robust. Each gcc-cross step (initial, =
intermediate
>> and final) also stage binaries in separate locations.
>>=20
>> * Changes to sysroot structure
>>=20
>> We now support creating a sysroot per machine target rather than the
>> original multimachine approach we have used. This means packages with =
an
>> "all" architecture can be safely installed into the sysroot and used
>> correctly fixing bugs in that area and it also allows machines like
>> emenlow which have separate graphics components to build and work
>> correctly yet be able to share builds with other machines like =
atom-pc.
>>=20
>> If you change machine and the machine you change to shares a core
>> architecture with a previous build, the components from that previous
>> build will be used to construct a new sysroot using the sstate =
prebuilt
>> packages.
>>=20
>> The branch I'm planning to merge very soon with these features is:
>>=20
>> =
http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Drpurdie/tt-bootstr=
ap
>=20
> For a single machine:
>=20
> NOTE: package console-image-1.0-r0: task do_rm_work_all: Succeeded
>=20
>=20
> Now building it incrementally for a different machine

Switchting from usrp-e1xx (armv7a) to beagleboard (also armv7a) and =
building console-image again:

NOTE: package perl-5.12.2-r0: task do_package: Started
ERROR: Function 'perl_package_preprocess' failed (see =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/temp/log.do_package.28537 for further information)
ERROR: Logfile of failure stored in: =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/temp/log.do_package.28537
Log data follows:
| cp: cannot stat =
`/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi=
/perl-5.12.2-r0/image/*': No such file or directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/bin/h2xs: No such file or directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/bin/h2ph: No such file or directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/lib/perl/5.12.2/pod/*.pod: No such file or =
directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/lib/perl/5.12.2/cacheout.pl: No such file or =
directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/lib/perl/5.12.2/FileCache.pm: No such file or =
directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/lib/perl/config.sh: No such file or directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/lib/perl/5.12.2/Config.pm: No such file or =
directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/lib/perl/5.12.2/Config_heavy.pl: No such file =
or directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/lib/perl/5.12.2/CORE/perl.h: No such file or =
directory
| sed: can't read =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/package/usr/lib/perl/5.12.2/CORE/pp.h: No such file or =
directory
| Function 'perl_package_preprocess' failed (see =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/temp/log.do_package.28537 for further information)
| ERROR: Function 'perl_package_preprocess' failed (see =
/OE/tentacle/build/tmp-angstrom_2010_x/work/armv7a-angstrom-linux-gnueabi/=
perl-5.12.2-r0/temp/log.do_package.28537 for further information)



