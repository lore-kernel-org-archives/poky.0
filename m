Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFB24E00E85; Tue, 15 May 2018 02:10:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Tue, 15 May 2018 02:10:09 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5B2FE00E82
	for <poky@yoctoproject.org>; Tue, 15 May 2018 02:10:09 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs15.server.lan (via HTTP); Tue, 15 May 2018 11:05:04 +0200
MIME-Version: 1.0
Message-ID: <trinity-fe84c674-2df9-449b-8b6a-53f1b7cf21d2-1526375104797@3c-app-gmx-bs15>
From: "Arno Steffens" <star@gmx.li>
To: poky@yoctoproject.org
Date: Tue, 15 May 2018 11:05:04 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:H30IdaveP3XR3Am9iOPnXEaHfr88+0L9O4quAKwLp9Y
	aAoHpVfSkSNKGdTFqPggb2hDyRVZwkDgM8TXZJra+YL7n1Bj3D
	wgYl06CSuyZuRFF1IYkdTJ84WxWJ9yN7d3Vwe0KITWgg12Fd1P
	FbmhYJFP6rGwDokyxncof6dpmJlsuoXz4oLPdjAhhPO/NKBo4k
	9LWqkC10DK75QzCFiWxNoSmBOAN0JwG5EO++UR5Z6iM5iXI2v2
	LIBkdS96V/1bAdXw1Cy8OZEVpIMjjJLTdno/wqwgl/oUV1bLCc 7mYdPs=
X-UI-Out-Filterresults: notjunk:1;V01:K0:UxT0yMfIUFI=:RprefG1isp9Lmapq/Kpr40
	bBYKAW2MOzZTPcZaLcPzTr4P8RBp7IYyMiSeCer+Lb/DodQs3PmwFER2A/XzX6VxKclxhtqHg
	tfFeBaHhA/s5WwRwO5Fopz14QRfogtHh2RRORpm0NK9ybXPy/ux6PKIVffktW2g7Trzy91+py
	cGHpGzS8S9fgMKlQcdBw9BJGL6I+FPBuaK59P1zolXfFx26/VvZ+hrp3k2eWjKK1lfYcD827g
	XHCAcvLvz59/YudUfoym1sfo/kVB4cfj1p46CRG8RfqX6zfXYiJcomhY1cOJmI7CtBiQ0Cq9S
	fd9okeWxg9ivYpuJ+xU7dQ85atBQqiGCMUGKoU/689OkE1nnG3IHP9ztJn7D7TKXjYYlAOdGC
	/rcdRPssDYzbz160946tkOw33pi0sLg8/zjvyLwgpZBxOKdGd8oGm5vIQNT2g4szKee8k+Ecw
	16zLcN8pNFQ8KQ+uzhmwvzDdkzlGhD3P+nCoaRoAsdUFXdVAuBBq
Subject: Yocto 2.5 and problem with pseudo-native-1.9.0
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
X-List-Received-Date: Tue, 15 May 2018 09:10:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I get an error while building my rootfs, but doesn't have a clue what the e=
rror message will tell me:
below:

Same with the log file, I don't get the point=2E How can I understand this=
 better?

ERROR: pseudo-native-1=2E9=2E0+gitAUTOINC+fddbe854c9-r0 do_unpack: Fetcher=
 failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION_BUS=
_ADDRESS=3D"unix:abstract=3D/tmp/dbus-qFLYbSsFJF,guid=3Dc8cffdaaccadb737f94=
547ed5afa68f2"; export SSH_AGENT_PID=3D"1886"; export SSH_AUTH_SOCK=3D"/run=
/user/1000/keyring/ssh"; export PATH=3D"/home/user/y/yocto25/poky/scripts/n=
ative-intercept:/home/user/y/yocto25/sp/tmp/sysroots-uninative/x86_64-linux=
/usr/bin:/home/user/y/yocto25/poky/scripts:/home/user/y/yocto25/sp/tmp/work=
/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysro=
ot-native/usr/bin/x86_64-linux:/home/user/y/yocto25/sp/tmp/work/x86_64-linu=
x/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/us=
r/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0=
+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/usr/sbin:/home/user/y/yocto=
25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r=
0/recipe-sysroot-native/usr/bin:/home/user/y/yocto25/sp/tmp/work/x86_64-lin=
ux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/recipe-sysroot-native/s=
bin:/home/user/y/yocto25/sp/tmp/work/x86_64-linux/pseudo-native/1=2E9=2E0+g=
itAUTOINC+fddbe854c9-r0/recipe-sysroot-native/bin:/home/user/y/yocto25/poky=
/bitbake/bin:/home/user/y/yocto25/sp/tmp/hosttools"; export HOME=3D"/home/u=
ser"; git -c core=2Efsyncobjectfiles=3D0 checkout -B master fddbe854c9db058=
d5a05830d3bcdd4233d95ee2e failed with exit code 128, output:
fatal: reference is not a tree: fddbe854c9db058d5a05830d3bcdd4233d95ee2e

ERROR: pseudo-native-1=2E9=2E0+gitAUTOINC+fddbe854c9-r0 do_unpack: Functio=
n failed: base_do_unpack
ERROR: Logfile of failure stored in: /home/user/y/yocto25/sp/tmp/work/x86_=
64-linux/pseudo-native/1=2E9=2E0+gitAUTOINC+fddbe854c9-r0/temp/log=2Edo_unp=
ack=2E14717
ERROR: Task (virtual:native:/home/user/y/yocto25/poky/meta/recipes-devtool=
s/pseudo/pseudo_git=2Ebb:do_unpack) failed with exit code '1'
NOTE: Tasks Summary: Attempted 154 tasks of which 151 didn't need to be re=
run and 1 failed=2E




