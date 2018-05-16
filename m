Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCCA3E009C8; Wed, 16 May 2018 02:02:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04BDBE007AD
	for <poky@yoctoproject.org>; Wed, 16 May 2018 02:02:15 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs71.server.lan (via HTTP); Wed, 16 May 2018 11:02:13 +0200
MIME-Version: 1.0
Message-ID: <trinity-22dc1a63-7fa8-41fd-bc2f-e011b698d3c6-1526461333500@3c-app-gmx-bs71>
From: "Arno Steffens" <star@gmx.li>
To: "Bas Mevissen" <abuse@basmevissen.nl>
Date: Wed, 16 May 2018 11:02:13 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1f08a8411aad4311f4e5677fe4c0cbfe@basmevissen.nl>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
	<trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
	<1526383459.5720.162.camel@linuxfoundation.org>
	<trinity-bef4d5a0-3616-4539-81d6-e345a1ee4e98-1526387443357@3c-app-gmx-bs12>
	<1f08a8411aad4311f4e5677fe4c0cbfe@basmevissen.nl>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:+NM+mZ8j7ZZ69D4Md1SOD64WHq+wI/nHR1A8KHTJjRM
	OvfDYDVvRv/T4SOETet9fRkOZIz4JTnHSxsEoyZo515+JfKXUB
	ye8wpznrTdB4gHadI1idw5o2VmuYbFKmVRfjyxrt7NPGs9E8V3
	7+NI1CODveHSevFuCsBNIpn/MEg7ksyNYpIY46Khg1zTN+eHZr
	lcgyVTgHGJBIS+cW1F/BSliO8wTbOAVe2yL8qz7wdl4efw8/2F
	CWubZ+XSI/9D1Fg2VxLf+WiKtNZWniRbBDIEbNgCNLzjC/av/y BuL1L4=
X-UI-Out-Filterresults: notjunk:1;V01:K0:Db9G3CezHI8=:MJb2V4n012Wd4iQqj5I+lb
	p69sbbIgYYl3j4y3SF5TyJuDLlgsKh08XKRHVuzymEQuqxAUninooBfsehBjZFpcHy/O1LvuD
	7sGy/XKfSNHOMxnLQWsGA2l6yRFinRypI73o004lI79EuZU5GFFF0VsLC1i5GMsaySJF3iG0B
	EkhW4EU7jJNbjQada15XXTg9ELWIR6P0ZsFEugSin36aSmGY3XNGcZ7dLlP12RuTYfrRiGau7
	CrE0QqJ8pVIRKGeZKdv+HjzMWSyWnUTkGdhtedlYPdgK8ltx3mSOSbVFw4pRwcUZ5TfauwCc0
	EwPOFthKixX3AbFVink9znovOARgE90evDjScW2krQVbHfzga2DI1ZEaR7U9rleWW3L4RPxeS
	wjDA8qBM6etxtslNEFH0A+O7FTzxzlmEKCQcFnW6YRsb61NblahWrBWxyDt8Lwlvh7+zVUceC
	fW6F9zRZSvIvqa9efYkLTCtNYqs3YU4wqQBx35rmaQJe2a38J6IA
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
X-List-Received-Date: Wed, 16 May 2018 09:02:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> Gesendet: Dienstag, 15=2E Mai 2018 um 16:14 Uhr
> Von: "Bas Mevissen" <abuse@basmevissen=2Enl>
> An: "Arno Steffens" <star@gmx=2Eli>
> Cc: "Richard Purdie" <richard=2Epurdie@linuxfoundation=2Eorg>, poky@yoct=
oproject=2Eorg
> Betreff: Re: Aw: Re: [poky] Yocto 2=2E5 and problem with pseudo-native-1=
=2E9=2E0
>
> On 2018-05-15 14:30, Arno Steffens wrote:
> >> Gesendet: Dienstag, 15=2E Mai 2018 um 13:24 Uhr
> >> Von: "Richard Purdie" <richard=2Epurdie@linuxfoundation=2Eorg>
> >> An: "Arno Steffens" <star@gmx=2Eli>, "Bas Mevissen"=20
> >> <abuse@basmevissen=2Enl>
> >> Cc: poky@yoctoproject=2Eorg
> >> Betreff: Re: [poky] Yocto 2=2E5 and problem with pseudo-native-1=2E9=
=2E0
> >>=20
> >> On Tue, 2018-05-15 at 13:17 +0200, Arno Steffens wrote:
> >> >=C2=A0
> >> > Yeah - I know, I am handicapped=C2=A0=C2=A0:(
> >> > But a change from=C2=A0
> >> > git://git=2Eyoctoproject=2Eorg/pseudo
> >> > to
> >> > https://git=2Eyoctoproject=2Eorg/git/pseudo
> >> > doesn't solve the issue=2E
> >> >
> >> > Compared to yocto 2=2E3 and 2=2E4 I miss in the recipes a file like
> >> > pseudo_1=2E8=2E2=2Ebb
> >> >
> >> > Now there is just
> >> > pseudo_git=2Ebb
> >> > and=C2=A0
> >> > pseudo=2Einc
> >> >
> >> > Also in the download I found a file:
> >> > git2_git=2Eyoctoproject=2Eorg=2Epseudo=2Etar=2Egz=2Edone
> >> >
> >>=20
> >> > Do we dig at wrong side?
> >>=20
> >> Try adding ";protocol=3Dhttps" to the url, something like:
> >>=20
> >> git://git=2Eyoctoproject=2Eorg/pseudo;protocol=3Dhttps
> >>=20
> >> Our mirrors should have http tarballs of the git repos which should
> >> work for this but clearly something isn't working quite correctly wit=
h
> >> the backup archives :(=2E Adding https to the url should work though=
=2E
> >>=20
> >> Cheers,
> >>=20
> >> Richard
> >>=20
> >=20
> > Thanks for your patience with me=2E
> > Cleared the hole structure for building and even download folder and
> > started with just
> > bitbake pseudo-navtive
> > but get same error again :(
> >=20
> > Regards
> > Arno
> >=20
> > WARNING: pseudo-native-1=2E9=2E0+gitAUTOINC+fddbe854c9-r0 do_fetch: Fa=
iled
> > to fetch URL git://git=2Eyoctoproject=2Eorg/pseudo;protocol=3Dhttps,
> > attempting MIRRORS if available
> > ERROR: pseudo-native-1=2E9=2E0+gitAUTOINC+fddbe854c9-r0 do_unpack: Fet=
cher
> > failure: Fetch command export PSEUDO_DISABLED=3D1; export
> > DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qFLYbSsFJF,guid=
=3Dc8cffdaaccadb737f94547ed5afa68f2";
> > export SSH_AGENT_PID=3D"1886"; export
> > SSH_AUTH_SOCK=3D"/run/user/1000/keyring/ssh"; export
> > PATH=3D"/home/user/y/yocto25/poky/scripts/native-intercept:/home/user/=
y/yocto25/sp/tmp/sysroots-uninative/x86_64-linux/usr/bin:/home/user/y/yocto=
25/poky/scripts:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native=
/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin/x86_64-li=
nux:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+g=
itAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/bin:/home/user/y/yocto25/=
sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/r=
ecipe-sysroot-native/usr/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux=
/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr=
/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+=
gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/sbin:/home/user/y/yocto25/sp=
/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/rec=
ipe-sysroot-native/bin:/home/user/y/yocto25/poky/bitbake/bin:/home/user/y/y=
octo25/sp/tmp/hosttools";
> > export HOME=3D"/home/user"; git -c core=2Efsyncobjectfiles=3D0 checkou=
t -B
> > master fddbe854c9db058d5a05830d3bcdd4233d95ee2e failed with exit code
> > 128, output:
> > fatal: reference is not a tree:=20
> > fddbe854c9db058d5a05830d3bcdd4233d95ee2e
> >=20
> > ERROR: pseudo-native-1=2E9=2E0+gitAUTOINC+fddbe854c9-r0 do_unpack:
> > Function failed: base_do_unpack
> > ERROR: Logfile of failure stored in:
> > /home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+=
gitAUTOINC+fddbe854c9-r0/temp/log=2Edo_unpack=2E5398
> > ERROR: Task
> > (virtual:native:/home/user/y/yocto25/poky/meta/recipes-devtools/pseudo=
/pseudo_git=2Ebb:do_unpack)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 57 tasks of which 0 didn't need to be
> > rerun and 1 failed=2E
>=20
> Can you try "git clone https://git=2Eyoctoproject=2Eorg/git/pseudo && gi=
t=20
> checkout fddbe854c9db058d5a05830d3bcdd4233d95ee2e" to make sure your=20
> connection is OK? I tried this here and that went fine=2E
>=20
> If that works, manually copy the contents to the work directory of=20
> pseudo-native and try again=2E
>=20
> -- Bas=2E

Do be sure it has nothing to do with my project I did steps from scratch=
=2E

Doing commands manually seems to work=2E But I have to cd into the cloned =
directory, right?
user@vb:~/y/yocto25/tmp$ git clone https://git=2Eyoctoproject=2Eorg/git/ps=
eudo
Cloning into 'pseudo'=2E=2E=2E
remote: Counting objects: 3399, done=2E
remote: Compressing objects: 100% (1011/1011), done=2E
remote: Total 3399 (delta 2559), reused 3208 (delta 2369)
Receiving objects: 100% (3399/3399), 662=2E75 KiB | 154=2E00 KiB/s, done=
=2E
Resolving deltas: 100% (2559/2559), done=2E
Checking connectivity=2E=2E=2E done=2E
user@vb:~/y/yocto25/tmp$ cd pseudo/
user@vb:~/y/yocto25/tmp/pseudo$ git checkout fddbe854c9db058d5a05830d3bcdd=
4233d95ee2e
Note: checking out 'fddbe854c9db058d5a05830d3bcdd4233d95ee2e'=2E

You are in 'detached HEAD' state=2E You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout=2E

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again=2E Exampl=
e:

  git checkout -b <new-branch-name>

HEAD is now at fddbe85=2E=2E=2E Fix symlink following errors

-------------------------

If I am doing as advices in one line command it ends up with:

git clone https://git=2Eyoctoproject=2Eorg/git/pseudo && git checkout fddb=
e854c9db058d5a05830d3bcdd4233d95ee2e
Cloning into 'pseudo'=2E=2E=2E
remote: Counting objects: 3399, done=2E
remote: Compressing objects: 100% (1011/1011), done=2E
remote: Total 3399 (delta 2560), reused 3207 (delta 2369)
Receiving objects: 100% (3399/3399), 662=2E47 KiB | 291=2E00 KiB/s, done=
=2E
Resolving deltas: 100% (2560/2560), done=2E
Checking connectivity=2E=2E=2E done=2E
fatal: Not a git repository (or any parent up to mount point /home/user/y)
Stopping at filesystem boundary (GIT_DISCOVERY_ACROSS_FILESYSTEM not set)=
=2E

-------------------------

Ok, but what I see even with the original recipe (git), I get the git repo=
 (see it in /home/user/y/yocto25/build/downloads/git2/git=2Eyoctoproject=2E=
org=2Epseudo) but it keeps in head and doesn't checkout this special tag?!?

So again, warning is just the warning - obviously it gets data from mirror=
=2E The "checkout" doesn't work=2E

And I don't know what and where to copy things manually and "fake" that th=
is step has been succesful=2E
Best regards
Arno


