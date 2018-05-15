Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7291CE00C4B; Tue, 15 May 2018 03:43:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E6CDE0084E
	for <poky@yoctoproject.org>; Tue, 15 May 2018 03:43:07 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs12.server.lan (via HTTP); Tue, 15 May 2018 12:43:05 +0200
MIME-Version: 1.0
Message-ID: <trinity-6668c7b5-3f6c-47f7-b0d8-3a59032571c1-1526380985002@3c-app-gmx-bs12>
From: "Arno Steffens" <star@gmx.li>
To: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
Date: Tue, 15 May 2018 12:43:05 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
References: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
	<28b5dd854c864d1fa0149916706f2434@XBOX02.axis.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:XyF5yMoBZt+Dlc3uRuRJo1QmdcBJ0NbbDrHcSg0aUwn
	wdARJX3Nb7M3P5I/EngpdjkKTdDIzs41bBdG6/t5SHEn78b/gw
	fgwA7N/LvuaaQf4+4rhfep+RhS2aG/79/pFsgBmrkPDXjho2Pm
	kDchfabxIQcouf/NfsjjlKpXHNZo1ABr//YguQ8LpLl3uWJG8g
	BpJTqx0k4GmsUSgM95daugrECyBCICxm+tqcxzPOvTVTnfh5PK
	WsFMuFSCc7K5x25MieMNE2pCaz4hgUmaU/Z1eYFBntUz/B5VVQ AF6J24=
X-UI-Out-Filterresults: notjunk:1;V01:K0:826BGovaTNw=:vN2PdE/raCVj+Fvk3sxC1A
	qN2rdtmE/GfPd3uphg2y2MVVr5Fg9ZXi4CJsdwIb3M4MHD7XLA+c3aciuwewuQUnP7mS+CMoi
	G1Apw9OZy2QZbmykSxgX+o9eLYZq/trqmhDklNvXaPpEVBkn6O3npAd4cqH/PS7s8T8khUhBC
	KmA2TbcLPxepP6OlMWkI7shmV5PQcHUKBd3CunsKpnIP074zsivRwhj8TI+ZqYIPKOMpgAiap
	WiuP7h1SPJMY8ees3RJcs6SIg5aZ9YTu+jzhZCZqOvJOQUUIs2NKKmB5IWXKyiIdSAncbsDOt
	XfsZpusGV4qTqGXQ0yhC8M8usxSdphfHtGXzqc2CPABwxg3PK4qH3r6PqY6F8izJ+MDFpux4n
	p0yAS1iBPBrm+V0HxHrakJFsuDFHSsGFee8I6hV7CY1f3V9bBqJF7dh5xOs1XJWApyGI+NHjA
	M4qBdl/C3eIb0nxc78rRbVrpV3PMxk99DKNltH5dWbsZS87cAyb2
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Tue, 15 May 2018 10:43:09 -0000
Content-Type: text/plain; charset=UTF-8



> Gesendet: Dienstag, 15. Mai 2018 um 12:11 Uhr
> Von: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
> An: "Arno Steffens" <star@gmx.li>, "poky@yoctoproject.org" <poky@yoctoproject.org>
> Betreff: RE: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
>
> > -----Original Message-----
> > From: poky-bounces@yoctoproject.org [mailto:poky-
> > bounces@yoctoproject.org] On Behalf Of Arno Steffens
> > Sent: den 15 maj 2018 11:05
> > To: poky@yoctoproject.org
> > Subject: [poky] Yocto 2.5 and problem with pseudo-native-1.9.0
> > 
> > I get an error while building my rootfs, but doesn't have a clue what
> > the error message will tell me:
> > below:
> > 
> > Same with the log file, I don't get the point. How can I understand
> > this better?
> > 
> > ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack: Fetcher
> > failure: Fetch command export PSEUDO_DISABLED=1; export
> > DBUS_SESSION_BUS_ADDRESS="unix:abstract=/tmp/dbus-
> > qFLYbSsFJF,guid=c8cffdaaccadb737f94547ed5afa68f2"; export
> > SSH_AGENT_PID="1886"; export
> > SSH_AUTH_SOCK="/run/user/1000/keyring/ssh"; export
> > PATH="/home/user/y/yocto25/poky/scripts/native-
> > intercept:/home/user/y/yocto25/sp/tmp/sysroots-uninative/x86_64-
> > linux/usr/bin:/home/user/y/yocto25/poky/scripts:/home/user/y/yocto25/sp
> > /tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-
> > r0/recipe-sysroot-native/usr/bin/x86_64-
> > linux:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> > native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> > native/usr/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> > native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> > native/usr/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> > native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> > native/usr/bin:/home/user/y/yocto
> >  25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-
> > r0/recipe-sysroot-native/sbin:/home/user/y/yocto25/sp/tmp/work/x86_64-
> > linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-
> > native/bin:/home/user/y/yocto25/poky/bitbake/bin:/home/user/y/yocto25/s
> > p/tmp/hosttools"; export HOME="/home/user"; git -c
> > core.fsyncobjectfiles=0 checkout -B master
> > fddbe854c9db058d5a05830d3bcdd4233d95ee2e failed with exit code 128,
> > output:
> > fatal: reference is not a tree:
> > fddbe854c9db058d5a05830d3bcdd4233d95ee2e
> > 
> > ERROR: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_unpack: Function
> > failed: base_do_unpack
> > ERROR: Logfile of failure stored in:
> > /home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-
> > native/1.9.0+gitAUTOINC+fddbe854c9-r0/temp/log.do_unpack.14717
> > ERROR: Task (virtual:native:/home/user/y/yocto25/poky/meta/recipes-
> > devtools/pseudo/pseudo_git.bb:do_unpack) failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 154 tasks of which 151 didn't need to be
> > rerun and 1 failed.
> 
> Your Git clone of the pseudo repository is missing the fddbe854 commit.
> This can happen if there has been any problems when updating the repository. 
> Try `bitbake pseudo-native -c cleanall && bitbake pseudo-native` which 
> should give you a fresh clone.
> 
> //Peter

Thanks Peter, 
I am still confused.

While bitbake I get a warning:
WARNING: pseudo-native-1.9.0+gitAUTOINC+fddbe854c9-r0 do_fetch: Failed to fetch URL git://git.yoctoproject.org/pseudo, attempting MIRRORS if available

Looking into recipe the only source given for it is GIT. GIT is blocked in my company network :( - don't ask my why.
Usually this is no problem, as sources are also available via http(s).
And I see in the 

/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1.9.0+gitAUTOINC+fddbe854c9-r0

folder a lot of files in the git subfolder ....
A
bitbake pseudo-native -c cleanall 
bitbake pseudo-native

creates same error again :(
Arno

