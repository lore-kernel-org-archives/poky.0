Return-Path: <hardik.vala@aumraj.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 55220E014FE; Tue, 17 Jul 2018 04:59:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [106.10.244.145 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic310-25.consmr.mail.sg3.yahoo.com
	(sonic310-25.consmr.mail.sg3.yahoo.com [106.10.244.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55235E012AA
	for <poky@yoctoproject.org>; Tue, 17 Jul 2018 04:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1531828752; bh=peaLQGQ0/b+ZaqNaF38AUSUOBHpmqMmcTy7zSpApbEg=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=az85AFtIlsiJoCSd2GoqXDvbRuEneTURHomUcW24mh+AwF3bxnuT+69W+ZLEd3mz/u/51vxW5az/SSiZnDVPnRDRlGQbE6DxLaSIMf/T/C3vvjcujv1Gl8krsfVxhs0FFLcgCg5MPfAkumKkug1ErYur7Jd2Zy0etDfrSgF4XoaXfNQrjangC4ukRWQRYCQrEHE+ZflKNXaHxDdeCJX8Cz4uFem24a2L55VOzv7fakqXUn49BzaxqJbG7CwZD/qls61o3fDbj/4OwPPw7Rmidl5ui35m66J5s2YRTkM/S3iLiROHVpCdT6zPN+CTIJGbOp3ZWV1BnH7lGdgMIcHpQA==
X-YMail-OSG: Imc9TBsVM1kL9jRaakvnKAtOudTF4pQ5uD.Kcb61jz20cyiIQ4TuTDhXpM2k.a1
	MSW4TlaLgqM8MCNdKWyL.Ja8NWia4wk9bKx3to0QGaIhf5spH1wVPEzfA6MnxAX1R.cZVOTtUaT7
	kczQ5y_ET354fEo4HrcOeT3736m6RB5q6fMfX088qwXuM7N182tcgWCs56pUYCJAMExfDfmUNQq8
	IGd1S4HIYQBx.eDifeqID4Z_X_X5y5BCh7pY._wRFWDaV25.AzCKQsX9SDGZDyayp.etLQP5L0ar
	oJu8c83OdMnyu8ANPlvWOkEzxLyld8oIZAJtNW8aKxmiGymyQOUCbhkUm0w5U4J.4zpWpkrsApWT
	CihHtsgYFRDHTJAy5wlYqvmM2k5Jm8FvbGjKQMVcqLs6OYx58s7IffIdNSQLULL1N64JqUj.SMC6
	jrbMBeZAkaaSxGlxgSP4Yzik4UsBu6Vaw.1PLqzhxNTRrhZuy39NgqbpdycKmegGtpCFPu57PzIQ
	tS0REw8fcxmjyDE5ApsCRI5OE7wUmGYopxYRSwjzM45g2mSPCN724OEgSGV7N49YqxX627fjjApL
	zZRVSdPZwlzBhrscqnO50CPLkqXjwip..oVvrPR_g7bE6smIxFnJ.wmPhjOTBKhBKiFCpkVscdhZ
	QAriXOHqY5HFGKHITFQ2S_NTb6_yIqB5pFHsGDqz1izurdJI.hRxPn5v_g95IcGB0ew.3PbvE4dn
	e2b7_SK.MfpjjHn_b_RZlVPRJ._9jSucMVRxAQXUM19zgZv8HXTGmDbuq3NSHnOd1qGgs76sNbxI
	3lTLvpLJ6TCau7HwyAzAJZwqs_ViAZ5lDD75pRKyAtdmLk_quxyrbasF1u1Lk0h8uAdj8wqbpkqk
	f9Ya4segRDbEU6x6rKXfRqZCe6lebKVeL4DfQM0gf.PzvM7RSERkNxXZtfNS13u_9KUKrmUHyZZp
	K6dOth91Buw--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic310.consmr.mail.sg3.yahoo.com with HTTP;
	Tue, 17 Jul 2018 11:59:12 +0000
Date: Tue, 17 Jul 2018 11:59:11 +0000 (UTC)
From: hardik vala <hardik.vala@aumraj.com>
To: Poky Project <poky@yoctoproject.org>
Message-ID: <757177747.5188618.1531828751387@mail.yahoo.com>
MIME-Version: 1.0
References: <757177747.5188618.1531828751387.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.12062 YahooMailNeo Mozilla/5.0 (X11; Ubuntu;
	Linux x86_64; rv:61.0) Gecko/20100101 Firefox/61.0
Subject: Uboot function failed
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: hardik vala <hardik.vala@aumraj.com>
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Jul 2018 11:59:15 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_5188617_910212964.1531828751380"

------=_Part_5188617_910212964.1531828751380
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,can anybody help me on this=20

I am buiding core-image-sato for bbb
ERROR: u-boot-1_2018.01-r0 do_patch: Command Error: 'quilt --quiltrc /home/=
ar_cpu_34/poky-sumo-19.0.0/build/tmp/work/beaglebone_yocto-poky-linux-gnuea=
bi/u-boot/1_2018.01-r0/recipe-sysroot-native/etc/quiltrc push' exited with =
0=C2=A0 Output:
Applying patch 0003-Integration-of-Mender-boot-code-into-U-Boot.patch
patching file include/env_default.h
Hunk #1 succeeded at 10 with fuzz 2 (offset 1 line).
Hunk #2 FAILED at 23.
1 out of 2 hunks FAILED -- rejects in file include/env_default.h
patching file scripts/Makefile.autoconf
Hunk #1 succeeded at 111 (offset 2 lines).
Patch 0003-Integration-of-Mender-boot-code-into-U-Boot.patch does not apply=
 (enforce with -f)
ERROR: u-boot-1_2018.01-r0 do_patch: Function failed: patch_do_patch
ERROR: Logfile of failure stored in: /home/ar_cpu_34/poky-sumo-19.0.0/build=
/tmp/work/beaglebone_yocto-poky-linux-gnueabi/u-boot/1_2018.01-r0/temp/log.=
do_patch.30174
ERROR: Task (/home/ar_cpu_34/poky-sumo-19.0.0/meta/recipes-bsp/u-boot/u-boo=
t_2018.01.bb:do_patch) failed with exit code '1'

Thanks,Hardik Vala

------=_Part_5188617_910212964.1531828751380
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:=E6=A8=99=E6=A5=B7=E9=AB=94, dfkai-sb;font-size:16px"><div id=3D=
"yui_3_16_0_ym19_1_1531806226933_7916">Hi,</div><div id=3D"yui_3_16_0_ym19_=
1_1531806226933_7953">can anybody help me on this <br></div><div id=3D"yui_=
3_16_0_ym19_1_1531806226933_8009"><br></div><div id=3D"yui_3_16_0_ym19_1_15=
31806226933_8008">I am buiding core-image-sato for bbb</div><div id=3D"yui_=
3_16_0_ym19_1_1531806226933_8017"><br></div><div id=3D"yui_3_16_0_ym19_1_15=
31806226933_7954" dir=3D"ltr">ERROR: u-boot-1_2018.01-r0 do_patch: Command =
Error: 'quilt --quiltrc /home/ar_cpu_34/poky-sumo-19.0.0/build/tmp/work/bea=
glebone_yocto-poky-linux-gnueabi/u-boot/1_2018.01-r0/recipe-sysroot-native/=
etc/quiltrc push' exited with 0&nbsp; Output:<br id=3D"yui_3_16_0_ym19_1_15=
31806226933_7979">Applying patch 0003-Integration-of-Mender-boot-code-into-=
U-Boot.patch<br id=3D"yui_3_16_0_ym19_1_1531806226933_7980">patching file i=
nclude/env_default.h<br id=3D"yui_3_16_0_ym19_1_1531806226933_7981">Hunk #1=
 succeeded at 10 with fuzz 2 (offset 1 line).<br id=3D"yui_3_16_0_ym19_1_15=
31806226933_7982">Hunk #2 FAILED at 23.<br id=3D"yui_3_16_0_ym19_1_15318062=
26933_7983">1 out of 2 hunks FAILED -- rejects in file include/env_default.=
h<br id=3D"yui_3_16_0_ym19_1_1531806226933_7984">patching file scripts/Make=
file.autoconf<br id=3D"yui_3_16_0_ym19_1_1531806226933_7985">Hunk #1 succee=
ded at 111 (offset 2 lines).<br id=3D"yui_3_16_0_ym19_1_1531806226933_7986"=
>Patch 0003-Integration-of-Mender-boot-code-into-U-Boot.patch does not appl=
y (enforce with -f)<br id=3D"yui_3_16_0_ym19_1_1531806226933_7987">ERROR: u=
-boot-1_2018.01-r0 do_patch: Function failed: patch_do_patch<br id=3D"yui_3=
_16_0_ym19_1_1531806226933_7988">ERROR: Logfile of failure stored in: /home=
/ar_cpu_34/poky-sumo-19.0.0/build/tmp/work/beaglebone_yocto-poky-linux-gnue=
abi/u-boot/1_2018.01-r0/temp/log.do_patch.30174<br id=3D"yui_3_16_0_ym19_1_=
1531806226933_7989">ERROR: Task (/home/ar_cpu_34/poky-sumo-19.0.0/meta/reci=
pes-bsp/u-boot/u-boot_2018.01.bb:do_patch) failed with exit code '1'<br id=
=3D"yui_3_16_0_ym19_1_1531806226933_7990"></div><div dir=3D"ltr" id=3D"yui_=
3_16_0_ym19_1_1531806226933_8019"><br></div><div dir=3D"ltr" id=3D"yui_3_16=
_0_ym19_1_1531806226933_8042">Thanks,</div><div dir=3D"ltr">Hardik Vala<br>=
</div></div></body></html>

------=_Part_5188617_910212964.1531828751380--
