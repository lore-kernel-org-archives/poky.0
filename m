Return-Path: <abuse@basmevissen.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CA74E00A28; Wed, 16 May 2018 02:12:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from hosting.emcodev.net (hosting.emcodev.net [178.18.92.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C43E0E007AD
	for <poky@yoctoproject.org>; Wed, 16 May 2018 02:12:46 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id BE5CD12AF4B;
	Wed, 16 May 2018 11:12:44 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at hosting.emcodev.net
Received: from hosting.emcodev.net ([127.0.0.1])
	by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id Jd9GsWux1sC8; Wed, 16 May 2018 11:12:43 +0200 (CEST)
Received: from emcodev.nl (localhost [127.0.0.1])
	by hosting.emcodev.net (Postfix) with ESMTP id 454FE12AF45;
	Wed, 16 May 2018 11:12:43 +0200 (CEST)
MIME-Version: 1.0
Date: Wed, 16 May 2018 11:12:43 +0200
From: Bas Mevissen <abuse@basmevissen.nl>
To: Arno Steffens <star@gmx.li>
In-Reply-To: <trinity-22dc1a63-7fa8-41fd-bc2f-e011b698d3c6-1526461333500@3c-app-gmx-bs71>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
	<1526383459.5720.162.camel@linuxfoundation.org>
	<trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
	<1f08a8411aad4311f4e5677fe4c0cbfe@basmevissen.nl>
	<trinity-22dc1a63-7fa8-41fd-bc2f-e011b698d3c6-1526461333500@3c-app-gmx-bs71>
Message-ID: <1fd67bfccb82049ff75349a65d5bc81c@basmevissen.nl>
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
X-List-Received-Date: Wed, 16 May 2018 09:12:48 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2018-05-16 11:02, Arno Steffens wrote:
>> Gesendet: Dienstag, 15. Mai 2018 um 16:14 Uhr
>> Von: "Bas Mevissen" <abuse@basmevissen.nl>
>> An: "Arno Steffens" <star@gmx.li>
>> Cc: "Richard Purdie" <richard.purdie@linuxfoundation.org>,=20
>> poky@yoctoproject.org
>> Betreff: Re: Aw: Re: [poky] Yocto 2.5 and problem with=20
>> pseudo-native-1.9.0
>>=20
>> On 2018-05-15 14:30, Arno Steffens wrote:
>> >> Gesendet: Dienstag, 15. Mai 2018 um 13:24 Uhr
>> >> Von: "Richard Purdie" <richard.purdie@linuxfoundation.org>
>> >> An: "Arno Steffens" <star@gmx.li>, "Bas Mevissen"
>> >> <abuse@basmevissen.nl>
>> >> Cc: poky@yoctoproject.org
>> >> Betreff: Re: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
>> >>
>> >> On Tue, 2018-05-15 at 13:17 +0200, Arno Steffens wrote:
>> >> >=C2=A0
>> >> > Yeah - I know, I am handicapped=C2=A0=C2=A0:(
>> >> > But a change from=C2=A0
>> >> > git://git.yoctoproject.org/pseudo
>> >> > to
>> >> > https://git.yoctoproject.org/git/pseudo
>> >> > doesn't solve the issue.
>> >> >
>> >> > Compared to yocto 2.3 and 2.4 I miss in the recipes a file like
>> >> > pseudo_1.8.2.bb
>> >> >
>> >> > Now there is just
>> >> > pseudo_git.bb
>> >> > and=C2=A0
>> >> > pseudo.inc
>> >> >
>> >> > Also in the download I found a file:
>> >> > git2_git.yoctoproject.org.pseudo.tar.gz.done
>> >> >
>> >>
>> >> > Do we dig at wrong side?
>> >>
>> >> Try adding ";protocol=3Dhttps" to the url, something like:
>> >>
>> >> git://git.yoctoproject.org/pseudo;protocol=3Dhttps
>> >>
>> >> Our mirrors should have http tarballs of the git repos which should
>> >> work for this but clearly something isn't working quite correctly w=
ith
>> >> the backup archives :(. Adding https to the url should work though.
>> >>
>> >> Cheers,
>> >>
>> >> Richard
>> >>
>> >
>> > Thanks for your patience with me.
>> > Cleared the hole structure for building and even download folder and
>> > started with just
>> > bitbake pseudo-navtive
>> > but get same error again :(
>> >
>> > Regards
>> > Arno
>> >
>> > WARNING: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_fetch: Fail=
ed
>> > to fetch URL git://git.yoctoproject.org/pseudo;protocol=3Dhttps,
>> > attempting MIRRORS if available
>> > ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack: Fetch=
er
>> > failure: Fetch command export PSEUDO_DISABLED=3D1; export
>> > DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qFLYbSsFJF,gui=
d=3Dc8cffdaaccadb737f94547ed5afa68f2";
>> > export SSH_AGENT_PID=3D"1886"; export
>> > SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
>> > PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/use=
r/y/yocto25/sp/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/y=
octo25/poky/scripts:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-=
native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x86_6=
4-linux:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0=
+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/y/yoct=
o25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0=
/recipe-sysroot-native/usr/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-l=
inux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/u=
sr/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+=
gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/home/user/y/yocto25/=
sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/rec=
ipe-sysroot-native/bin:/home/user/y/yocto25/poky/bitbake/bin:/home/user/y=
/yocto25/sp/tmp/hosttools";
>> > export HOME=3D"/home/user"; git -c core.fsyncobjectfiles=3D0 checkou=
t -B
>> > master fddbe854c9db058d5a05830d3bcdd4233d95ee2e failed with exit cod=
e
>> > 128, output:
>> > fatal: reference is not a tree:
>> > fddbe854c9db058d5a05830d3bcdd4233d95ee2e
>> >
>> > ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack:
>> > Function failed: base_do_unpack
>> > ERROR: Logfile of failure stored in:
>> > /home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gi=
tAUTOINC+fddbe854c9-r0/temp/log.do_unpack.5398
>> > ERROR: Task
>> > (virtual:native:/home/user/y/yocto25/poky/meta/recipes-devtools/pseu=
do/pseudo_git.bb:do_unpack)
>> > failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 57 tasks of which 0 didn't need to be
>> > rerun and 1 failed.
>>=20
>> Can you try "git clone https://git.yoctoproject.org/git/pseudo && git
>> checkout fddbe854c9db058d5a05830d3bcdd4233d95ee2e" to make sure your
>> connection is OK? I tried this here and that went fine.
>>=20
>> If that works, manually copy the contents to the work directory of
>> pseudo-native and try again.
>>=20
>> -- Bas.
>=20
> Do be sure it has nothing to do with my project I did steps from=20
> scratch.
>=20
> Doing commands manually seems to work. But I have to cd into the
> cloned directory, right?

Yes, forgot to add that.

> user@vb:~/y/yocto25/tmp$ git clone=20
> https://git.yoctoproject.org/git/pseudo
> Cloning into 'pseudo'...
> remote: Counting objects: 3399, done.
> remote: Compressing objects: 100% (1011/1011), done.
> remote: Total 3399 (delta 2559), reused 3208 (delta 2369)
> Receiving objects: 100% (3399/3399), 662.75 KiB | 154.00 KiB/s, done.
> Resolving deltas: 100% (2559/2559), done.
> Checking connectivity... done.
> user@vb:~/y/yocto25/tmp$ cd pseudo/
> user@vb:~/y/yocto25/tmp/pseudo$ git checkout
> fddbe854c9db058d5a05830d3bcdd4233d95ee2e
> Note: checking out 'fddbe854c9db058d5a05830d3bcdd4233d95ee2e'.
>=20
> You are in 'detached HEAD' state. You can look around, make=20
> experimental
> changes and commit them, and you can discard any commits you make in=20
> this
> state without impacting any branches by performing another checkout.
>=20
> If you want to create a new branch to retain commits you create, you=20
> may
> do so (now or later) by using -b with the checkout command again.=20
> Example:
>=20
>   git checkout -b <new-branch-name>
>=20
> HEAD is now at fddbe85... Fix symlink following errors
>=20
> -------------------------
>=20
> If I am doing as advices in one line command it ends up with:
>=20
> git clone https://git.yoctoproject.org/git/pseudo && git checkout
> fddbe854c9db058d5a05830d3bcdd4233d95ee2e
> Cloning into 'pseudo'...
> remote: Counting objects: 3399, done.
> remote: Compressing objects: 100% (1011/1011), done.
> remote: Total 3399 (delta 2560), reused 3207 (delta 2369)
> Receiving objects: 100% (3399/3399), 662.47 KiB | 291.00 KiB/s, done.
> Resolving deltas: 100% (2560/2560), done.
> Checking connectivity... done.
> fatal: Not a git repository (or any parent up to mount point=20
> /home/user/y)
> Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not=20
> set).
>=20
> -------------------------
>=20

That line should have read:

git clone https://git.yoctoproject.org/git/pseudo && cd pseudo && git=20
checkout

> Ok, but what I see even with the original recipe (git), I get the git
> repo (see it in
> /home/user/y/yocto25/build/downloads/git2/git.yoctoproject.org.pseudo)
> but it keeps in head and doesn't checkout this special tag?!?
>=20
> So again, warning is just the warning - obviously it gets data from
> mirror. The "checkout" doesn't work.
>=20

If the mirror is not current, it does not contain commit=20
fddbe854c9db058d5a05830d3bcdd4233d95ee2e, which is at the HEAD of the=20
master branch.

> And I don't know what and where to copy things manually and "fake"
> that this step has been succesful.


Assuming you made the protocol=3Dhttps addition as suggested by Richard i=
n=20
the right place, I would say that

bitbake -c cleanall pseudo-native
bitbake pseudo-native

should do the trick.

Regards,

Bas.

