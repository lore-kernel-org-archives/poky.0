Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0E2FE00C77; Tue, 15 May 2018 03:11:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A07DE009B9
	for <poky@yoctoproject.org>; Tue, 15 May 2018 03:11:20 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 5BB1718055;
	Tue, 15 May 2018 12:11:19 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id klv1_hnBRu8i; Tue, 15 May 2018 12:11:18 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 5D0B7183A4;
	Tue, 15 May 2018 12:11:18 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3DED71E07A;
	Tue, 15 May 2018 12:11:18 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3197C1E079;
	Tue, 15 May 2018 12:11:18 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Tue, 15 May 2018 12:11:18 +0200 (CEST)
Received: from XBOX04.axis.com (xbox04.axis.com [10.0.5.18])
	by thoth.se.axis.com (Postfix) with ESMTP id 248A4A4A;
	Tue, 15 May 2018 12:11:18 +0200 (CEST)
Received: from xbox11.axis.com (10.0.5.25) by XBOX04.axis.com (10.0.5.18) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 15 May 2018 12:11:18 +0200
Received: from XBOX02.axis.com (10.0.5.16) by xbox11.axis.com (10.0.5.25) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 15 May 2018 12:11:17 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Tue, 15 May 2018 12:11:17 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Arno Steffens <star@gmx.li>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Thread-Topic: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
Thread-Index: AQHT7Czb2Lqhahd0z0KqLbAkc50ZA6QwkRnw
Date: Tue, 15 May 2018 10:11:17 +0000
Message-ID: <28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
In-Reply-To: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Subject: Re: Yocto 2.5 and problem with pseudo-native-1.9.0
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
X-List-Received-Date: Tue, 15 May 2018 10:11:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Arno Steffens
> Sent: den 15 maj 2018 11:05
> To: poky@yoctoproject.org
> Subject: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
>=20
> I get an error while building my rootfs, but doesn't have a clue what
> the error message will tell me:
> below:
>=20
> Same with the log file, I don't get the point. How can I understand
> this better?
>=20
> ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack: Fetcher
> failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-
> qFLYbSsFJF,guid=3Dc8cffdaaccadb737f94547ed5afa68f2"; export
> SSH_AGENT_PID=3D"1886"; export
> SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> PATH=3D"/home/user/y/yocto25/poky/scripts/native-
> intercept:/home/user/y/yocto25/sp/tmp/sysroots-uninative/x86_64-
> linux/usr/bin:/home/user/y/yocto25/poky/scripts:/home/user/y/yocto25/sp
> /tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-
> r0/recipe-sysroot-native/usr/bin/x86_64-
> linux:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> native/usr/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> native/usr/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> native/usr/bin:/home/user/y/yocto
>  25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-
> r0/recipe-sysroot-native/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-
> linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> native/bin:/home/user/y/yocto25/poky/bitbake/bin:/home/user/y/yocto25/s
> p/tmp/hosttools"; export HOME=3D"/home/user"; git -c
> core.fsyncobjectfiles=3D0 checkout -B master
> fddbe854c9db058d5a05830d3bcdd4233d95ee2e failed with exit code 128,
> output:
> fatal: reference is not a tree:
> fddbe854c9db058d5a05830d3bcdd4233d95ee2e
>=20
> ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack: Function
> failed: base_do_unpack
> ERROR: Logfile of failure stored in:
> /home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> native/1.9.0+gitAUTOINC+fddbe854c9-r0/temp/log.do_unpack.14717
> ERROR: Task (virtual:native:/home/user/y/yocto25/poky/meta/recipes-
> devtools/pseudo/pseudo_git.bb:do_unpack) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 154 tasks of which 151 didn't need to be
> rerun and 1 failed.

Your Git clone of the pseudo repository is missing the fddbe854 commit.
This can happen if there has been any problems when updating the repository=
.=20
Try `bitbake pseudo-native -c cleanall && bitbake pseudo-native` which=20
should give you a fresh clone.

//Peter


