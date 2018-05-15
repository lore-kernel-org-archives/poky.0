Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52A9CE00C4B; Tue, 15 May 2018 04:17:39 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA514E0084E
	for <poky@yoctoproject.org>; Tue, 15 May 2018 04:17:37 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs12.server.lan (via HTTP); Tue, 15 May 2018 13:17:28 +0200
MIME-Version: 1.0
Message-ID: <trinity-c6098955-a734-46bf-a321-e8d24473dc5d-1526383048370@3c-app-gmx-bs12>
From: "Arno Steffens" <star@gmx.li>
To: "Bas Mevissen" <abuse@basmevissen.nl>
Date: Tue, 15 May 2018 13:17:28 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
	<trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
	<63ef6b8aff254ed7dc38d9bee7623d4d@basmevissen.nl>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:64NDABxdgHNSdLqEb/w9rK1kwYRapNVAc9O8NNeySs9
	rayNpxrErtj3brYEr2eGNbU61bKdBzzyCiGU1L76+iJdvwir28
	ZVhSsmkDTReLqp0WXRtwZs6lPzn3zzhcakw6boB+WfBimbO4sf
	befcC2ucw3fa24oJ4XehCj+8JP5eV+nQ1wXbpqByQcS/JusU61
	gr9eC0gYyICOHsji8hw+VL+LxWFJD92uGPqzeEjEpAv8LI7ikR
	7FMTi04Ve4iSD0zvBu8wyNQsjl3K0yjEkSnKbvLXpUk1o+Fr0Z 9oyCko=
X-UI-Out-Filterresults: notjunk:1;V01:K0:3mvZlTkAp7s=:wPK3/yC6ixYlK+bmkh7cIq
	+2ao9+GcHqXMxsi9IbBTX6J8CxrvnuKW9Y+Sas74C4rCwGIqvfVvJPwj9/+bh7hpF2FvjNlUC
	oSZXSTaacyzpBTRA0i3aInIjDHu9FznSleSwxuOM2KSTLZKvQvIyXNXT7GYtr3h9o1b5k/8t6
	PtzmJHYBnUoLb2onMD2edeSo6UmDEywnugzSwmNXX1+QWArln8G0awCrIOmBYYn7Tugfct9YB
	oaWLlv5s1jweQF3tJr3lUCnYqWZpp2CfgQiF9Tx9E06pfD50qJ4BZwoQYeZvPXam/h4eIRuEZ
	t8b13qCvdBDesedocqTIu1jCJsXElamxTb7DlVf50JR8rmC1536Za+GqVF3s93sdwU/GGrDlD
	AT99NxkvDDoqTHxjE5uAr3gfiFv4kcEPlq32aIXgq6aqmF56M6tIZdanUK/EYZ+sFcBtGosOC
	MEz8pYqp/ewf4dVy+wTqKhdSPCvrJ7yKKVzDUsHvuULOA8ogKjbP
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
X-List-Received-Date: Tue, 15 May 2018 11:17:39 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Dienstag, 15. Mai 2018 um 12:50 Uhr
> Von: "Bas Mevissen" <abuse@basmevissen.nl>
> An: "Arno Steffens" <star@gmx.li>
> Cc: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>, poky@yoctoproject.org
> Betreff: Re: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
>
> On 2018-05-15 12:43, Arno Steffens wrote:
> >> Gesendet: Dienstag, 15. Mai 2018 um 12:11 Uhr
> >> Von: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
> >> An: "Arno Steffens" <star@gmx.li>, "poky@yoctoproject.org" 
> >> <poky@yoctoproject.org>
> >> Betreff: RE: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
> >> 
> >> > -----Original Message-----
> >> > From: poky-bounces@yoctoproject.org [mailto:poky-
> >> > bounces@yoctoproject.org] On Behalf Of Arno Steffens
> >> > Sent: den 15 maj 2018 11:05
> >> > To: poky@yoctoproject.org
> >> > Subject: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
> >> >
> >> > I get an error while building my rootfs, but doesn't have a clue what
> >> > the error message will tell me:
> >> > below:
> >> >
> >> > Same with the log file, I don't get the point. How can I understand
> >> > this better?
> >> >
> >> > ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack: Fetcher
> >> > failure: Fetch command export PSEUDO_DISABLED=1; export
> >> > DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-
> >> > qFLYbSsFJF,guid=c8cffdaaccadb737f94547ed5afa68f2"; export
> >> > SSH_AGENT_PID="1886"; export
> >> > SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export
> >> > PATH="/home/user/y/yocto25/poky/scripts/native-
> >> > intercept:/home/user/y/yocto25/sp/tmp/sysroots-uninative/x86_64-
> >> > linux/usr/bin:/home/user/y/yocto25/poky/scripts:/home/user/y/yocto25/sp
> >> > /tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-
> >> > r0/recipe-sysroot-native/usr/bin/x86_64-
> >> > linux:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> >> > native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> >> > native/usr/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> >> > native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> >> > native/usr/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> >> > native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> >> > native/usr/bin:/home/user/y/yocto
> >> >  25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-
> >> > r0/recipe-sysroot-native/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-
> >> > linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> >> > native/bin:/home/user/y/yocto25/poky/bitbake/bin:/home/user/y/yocto25/s
> >> > p/tmp/hosttools"; export HOME="/home/user"; git -c
> >> > core.fsyncobjectfiles=0 checkout -B master
> >> > fddbe854c9db058d5a05830d3bcdd4233d95ee2e failed with exit code 128,
> >> > output:
> >> > fatal: reference is not a tree:
> >> > fddbe854c9db058d5a05830d3bcdd4233d95ee2e
> >> >
> >> > ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack: Function
> >> > failed: base_do_unpack
> >> > ERROR: Logfile of failure stored in:
> >> > /home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> >> > native/1.9.0+gitAUTOINC+fddbe854c9-r0/temp/log.do_unpack.14717
> >> > ERROR: Task (virtual:native:/home/user/y/yocto25/poky/meta/recipes-
> >> > devtools/pseudo/pseudo_git.bb:do_unpack) failed with exit code '1'
> >> > NOTE: Tasks Summary: Attempted 154 tasks of which 151 didn't need to be
> >> > rerun and 1 failed.
> >> 
> >> Your Git clone of the pseudo repository is missing the fddbe854 
> >> commit.
> >> This can happen if there has been any problems when updating the 
> >> repository.
> >> Try `bitbake pseudo-native -c cleanall && bitbake pseudo-native` which
> >> should give you a fresh clone.
> >> 
> >> //Peter
> > 
> > Thanks Peter,
> > I am still confused.
> > 
> > While bitbake I get a warning:
> > WARNING: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_fetch: Failed
> > to fetch URL git://git.yoctoproject.org/pseudo, attempting MIRRORS if
> > available
> > 
> > Looking into recipe the only source given for it is GIT. GIT is
> > blocked in my company network :( - don't ask my why.
> 
> That will make your life as developer with open source quite difficult 
> :-(
> 
> > Usually this is no problem, as sources are also available via http(s).
> 
> You can change the source to use https://git.yoctoproject.org/git/pseudo 
> instead. Not ideal, but it gets you going.
> 
> > And I see in the
> > 
> > /home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0
> > 
> > folder a lot of files in the git subfolder ....
> > A
> > bitbake pseudo-native -c cleanall
> > bitbake pseudo-native
> > 
> > creates same error again :(
> > Arno
> 
> That was to be expected if no other source than git (protocol) is given.
> 
> -- Bas.

Dear Bas,

Yeah - I know, I am handicapped  :(
But a change from 
git://git.yoctoproject.org/pseudo
to
https://git.yoctoproject.org/git/pseudo
doesn't solve the issue.

Compared to yocto 2.3 and 2.4 I miss in the recipes a file like
pseudo_1.8.2.bb

Now there is just
pseudo_git.bb
and 
pseudo.inc

Also in the download I found a file:
git2_git.yoctoproject.org.pseudo.tar.gz.done

Do we dig at wrong side?

