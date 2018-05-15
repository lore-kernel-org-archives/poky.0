Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5D24E00B9C; Tue, 15 May 2018 07:14:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0572DE00831
	for <poky@yoctoproject.org>; Tue, 15 May 2018 07:14:14 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 9827112AE1D;
	Tue, 15 May 2018 16:14:12 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id lYPQX-gMXtt1; Tue, 15 May 2018 16:14:10 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 3E47B12AE31;
	Tue, 15 May 2018 16:14:10 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 15 May 2018 16:14:10 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Arno Steffens <star@gmx.li>
In-Reply-To: <trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
	<1526383459.5720.162.camel@linuxfoundation.org>
	<trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
Message-ID: <1f08a8411aad4311f4e5677fe4c0cbfe@basmevissen.nl>
X-Sender: abuse@basmevissen.nl
User-Agent: Roundcube Webmail/1.3.6
Cc: poky@yoctoproject.org
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
X-List-Received-Date: Tue, 15 May 2018 14:14:16 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-05-15 14:30, Arno Steffens wrote:
>> Gesendet: Dienstag, 15. Mai 2018 um 13:24 Uhr
>> Von: "Richard Purdie" <richard.purdie@linuxfoundation.org>
>> An: "Arno Steffens" <star@gmx.li>, "Bas Mevissen"=20
>> <abuse@basmevissen.nl>
>> Cc: poky@yoctoproject.org
>> Betreff: Re: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
>>=20
>> On Tue, 2018-05-15 at 13:17 +0200, Arno Steffens wrote:
>> >=C2=A0
>> > Yeah - I know, I am handicapped=C2=A0=C2=A0:(
>> > But a change from=C2=A0
>> > git://git.yoctoproject.org/pseudo
>> > to
>> > https://git.yoctoproject.org/git/pseudo
>> > doesn't solve the issue.
>> >
>> > Compared to yocto 2.3 and 2.4 I miss in the recipes a file like
>> > pseudo_1.8.2.bb
>> >
>> > Now there is just
>> > pseudo_git.bb
>> > and=C2=A0
>> > pseudo.inc
>> >
>> > Also in the download I found a file:
>> > git2_git.yoctoproject.org.pseudo.tar.gz.done
>> >
>>=20
>> > Do we dig at wrong side?
>>=20
>> Try adding ";protocol=3Dhttps" to the url, something like:
>>=20
>> git://git.yoctoproject.org/pseudo;protocol=3Dhttps
>>=20
>> Our mirrors should have http tarballs of the git repos which should
>> work for this but clearly something isn't working quite correctly with
>> the backup archives :(. Adding https to the url should work though.
>>=20
>> Cheers,
>>=20
>> Richard
>>=20
>=20
> Thanks for your patience with me.
> Cleared the hole structure for building and even download folder and
> started with just
> bitbake pseudo-navtive
> but get same error again :(
>=20
> Regards
> Arno
>=20
> WARNING: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_fetch: Failed
> to fetch URL git://git.yoctoproject.org/pseudo;protocol=3Dhttps,
> attempting MIRRORS if available
> ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack: Fetcher
> failure: Fetch command export PSEUDO_DISABLED=3D1; export
> DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qFLYbSsFJF,guid=3D=
c8cffdaaccadb737f94547ed5afa68f2";
> export SSH_AGENT_PID=3D"1886"; export
> SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/user/y=
/yocto25/sp/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/yoct=
o25/poky/scripts:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-nat=
ive/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x86_64-l=
inux:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gi=
tAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/y/yocto25=
/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/re=
cipe-sysroot-native/usr/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-linu=
x/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/=
bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+git=
AUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/home/user/y/yocto25/sp/=
tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe=
-sysroot-native/bin:/home/user/y/yocto25/poky/bitbake/bin:/home/user/y/yo=
cto25/sp/tmp/hosttools";
> export HOME=3D"/home/user"; git -c core.fsyncobjectfiles=3D0 checkout -=
B
> master fddbe854c9db058d5a05830d3bcdd4233d95ee2e failed with exit code
> 128, output:
> fatal: reference is not a tree:=20
> fddbe854c9db058d5a05830d3bcdd4233d95ee2e
>=20
> ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack:
> Function failed: base_do_unpack
> ERROR: Logfile of failure stored in:
> /home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAU=
TOINC+fddbe854c9-r0/temp/log.do_unpack.5398
> ERROR: Task
> (virtual:native:/home/user/y/yocto25/poky/meta/recipes-devtools/pseudo/=
pseudo_git.bb:do_unpack)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 57 tasks of which 0 didn't need to be
> rerun and 1 failed.

Can you try "git clone https://git.yoctoproject.org/git/pseudo && git=20
checkout fddbe854c9db058d5a05830d3bcdd4233d95ee2e" to make sure your=20
connection is OK? I tried this here and that went fine.

If that works, manually copy the contents to the work directory of=20
pseudo-native and try again.

-- Bas.











