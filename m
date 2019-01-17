Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A6F4E00C71; Thu, 17 Jan 2019 01:41:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 565C8E00C46
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 01:41:50 -0800 (PST)
Received: by mail-oi1-f182.google.com with SMTP id t204so5640490oie.7
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 01:41:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Mlw042sydQVmrn6tBE8HUb2U5V7jhJQycfzW3F7ZCbA=;
	b=AWdC1p8ZRDnf7xDgxu8xD2hFzWwcanOryIyjMOmuoJJVk+CvHzFFVJBDfGxGLj1klb
	CrmMA92lRA94GEdlYy4iZ0dia/VMfm+NYMDcuIG46qzBLPESBmEJgGJ7berDPCS9IYsW
	r4MY9uSKGQhj5U3X3dTIGfu/5f7SQwzJDDWDIkE/HTSris1xcVU2ccLbdG1eBvq12NKb
	0/JulsQMCxvHOcOTfdFcKsMsB6FPpiJQ1NWJzWI0WdC5NVnCB1jcpx+lwEGZDZhGk5xZ
	PTX0ZpB+rDKzJguuWXbT+YMjxEGZcrJEYJ25jTpynftVHhmPyIOlnlVD8JnK/xHpM54k
	tMcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Mlw042sydQVmrn6tBE8HUb2U5V7jhJQycfzW3F7ZCbA=;
	b=s5nNnEmZ2yZAQD3GRPZ2nd7BJqKTpvVTjNiAAP9lhvLdKd9ypv1DjLekfDwD/UlVQ1
	sv9APHsToJTINUJ17JImhnipKBogp3uzQyXDJ3+sO0iO1Ta1f9fbD2Isoa2jUriZcP23
	KuIJuK6/lk3QtJ5nZjWXsG5NHIjQf370zoL4R2rpZteOK0F6nK8kSOuRN0IQh7+Hpw7R
	tVb1F7/2NNzr4TQ1K+0buMSYC/7vRPzbFQbyQQ6bGbs01PlZp6Yk8ijxg5vTK5KyXi6Q
	rnH9hvwbhNxW6QlRrg2VWaHbHoCxhWGio1iwcbApwUyLy08mGEyNprN/LTRyCGyfezkN
	DheQ==
X-Gm-Message-State: AJcUukcpBEwmSu88Xo1SYUVqqobqdNo+zP2UPvYBOhlTiYtR8CkurnL4
	5xdHUvV+ifTARffQWp0+G7ni1QUyFzGFSa+HdSIl7Z6A
X-Google-Smtp-Source: ALg8bN6QmQIzpeT2YxeO7vUSmKmo2ZKXGz2PoBL/xJTqKkIEDROpFX83VfRQD29Pq3NTtW+SYJPWMLEpq/GoJox8HJw=
X-Received: by 2002:aca:3e06:: with SMTP id l6mr135151oia.299.1547718109238;
	Thu, 17 Jan 2019 01:41:49 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
	<1352415c490c46838b4e19205a85ca4c@XBOX04.axis.com>
In-Reply-To: <1352415c490c46838b4e19205a85ca4c@XBOX04.axis.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Thu, 17 Jan 2019 10:41:37 +0100
Message-ID: <CAFsTbWfEMnd4adtexbb=+R0xeCtMEfUJFmiqa6x70AtQ5aFQMQ@mail.gmail.com>
To: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Error: base-files/3.0.14-r89/temp/run.do_install.80432: Syntax error: Unterminated quoted string
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
X-List-Received-Date: Thu, 17 Jan 2019 09:41:52 -0000
X-Groupsio-MsgNum: 11531
Content-Type: multipart/mixed; boundary="0000000000001da125057fa434e4"

--0000000000001da125057fa434e4
Content-Type: multipart/alternative; boundary="0000000000001da11d057fa434e2"

--0000000000001da11d057fa434e2
Content-Type: text/plain; charset="UTF-8"

Hi Peter,

Thanks a lot for your quick responses and really appreciate it.

Now I have attached both the error logs and base-files_3.0.14.bb, please
let me know if you require any other information from my side

Many Thanks in advance

On Thu, Jan 17, 2019 at 10:20 AM Peter Kjellerstedt <
peter.kjellerstedt@axis.com> wrote:

> [ Recipient list pruned to not cross-post to every Yocto related mailing
>   list out there... ]
>
> > -----Original Message-----
> > From: poky-bounces@yoctoproject.org <poky-bounces@yoctoproject.org> On
> > Behalf Of srinivasan
> > Sent: den 17 januari 2019 06:03
> > To: yocto-bsp@yoctoproject.org; yocto-builds@yoctoproject.org; meta-
> > intel@yoctoproject.org; Development list for the linux-yocto*.git Linux
> > kernel repositories <linux-yocto@yoctoproject.org>;
> > poky@yoctoproject.org; yocto-infrastructure@yoctoproject.org;
> > yocto@yoctoproject.org; meta-freescale@yoctoproject.org; meta-
> > freescale-request@yoctoproject.org
> > Subject: [poky] Error: base-files/3.0.14-r89/temp/run.do_install.80432:
> > Syntax error: Unterminated quoted string
> >
> > Dear Yocto Experts,
> >
> > I am trying to customize my vendor specific Yocto BSP's to my custom
> > OS.  I am facing the below error, could you please do the needful or
> > provide me some pointers from your end for solving this issue
> >
> > Error:
> > $ bitbake fsl-image-validation-imx
> > WARNING: Host distribution "ubuntu-18.04" has not been validated with
> > this version of the build system; you may possibly experience
> > unexpected failures. It is recommended that you use a tested
> > distribution.
> > Loading cache: 100%
> > |######################################################################
> > #######################################################################
> > #######################################################################
> > ###########################|
> > Time: 0:00:00
> > Loaded 3196 entries from dependency cache.
> > Parsing recipes: 100%
> > |######################################################################
> > #######################################################################
> > #######################################################################
> > #########################|
> > Time: 0:00:02
> > Parsing of 2298 .bb files complete (2284 cached, 14 parsed). 3202
> > targets, 398 skipped, 6 masked, 0 errors.
> > NOTE: Resolving any missing task queue dependencies
> >
> > Build Configuration:
> > BB_VERSION           = "1.38.0"
> > BUILD_SYS            = "x86_64-linux"
> > NATIVELSBSTRING      = "universal"
> > TARGET_SYS           = "aarch64-poky-linux"
> > MACHINE              = "imx8mmevk"
> > DISTRO               = "custom-TRK"
> > DISTRO_VERSION       = "${custom_DISTRO_VERSION}"
> > TUNE_FEATURES        = "aarch64"
> > TARGET_FPU           = ""
> > meta-traktor-imx8    = "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
> > meta-traktor         = "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
> > meta-qt5             = "qt-
> > 5.11:ff6127ddd318d422f595295d1c189a86b3032873"
> > meta-custom        = "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
> > meta-freescale       = "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
> > meta
> > meta-poky            = "sumo:623b77885051174d0e05198843e739110977bd18"
> > meta-oe
> > meta-python
> > meta-networking      = "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
> > meta-bsp
> > meta-sdk             = "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"
> >
> > Initialising tasks: 100%
> > |######################################################################
> > #######################################################################
> > #######################################################################
> > ######################|
> > Time: 0:00:02
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > ERROR: base-files-3.0.14-r89 do_install: Function failed: do_install
> > (log file is located at
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/log.do_install.80432)
> > ERROR: Logfile of failure stored in:
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/log.do_install.80432
> > Log data follows:
> > | DEBUG: Executing python function extend_recipe_sysroot
> > | NOTE: Direct dependencies are
> > ['/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/re
> > cipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
> > 'virtual:native:/home/srinishanmugam/customBuild_test_rpi/custom/source
> > s/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
> > | NOTE: Installed into sysroot: []
> > | NOTE: Skipping as already exists in sysroot: ['quilt-native',
> > 'pseudo-native']
> > | DEBUG: Python function extend_recipe_sysroot finished
> > | DEBUG: Executing shell function do_install
> > |
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/run.do_install.80432:
> > 176:
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/run.do_install.80432:
> > Syntax error: Unterminated quoted string
> > | WARNING: exit code 2 from a shell command.
> > | ERROR: Function failed: do_install (log file is located at
> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
> > r89/temp/log.do_install.80432)
> > ERROR: Task
> > (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/rec
> > ipes-core/base-files/base-files_3.0.14.bb:do_install)
> > failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 1256 tasks of which 1204 didn't need to
> > be rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
> > /home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/reci
> > pes-core/base-files/base-files_3.0.14.bb:do_install
> > Summary: There was 1 WARNING message shown.
> > Summary: There was 1 ERROR message shown, returning a non-zero exit
> > code.
> > srinishanmugam@ni-bln-
> > 07594:~/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8$
> >
> >
> > Kindly do the needful,
> > Many Thanks in advance
>
> Have you looked at the contents of
> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432
>
> to try to determine what caused the erroneous syntax? Otherwise do that,
> and if you still cannot tell what causes the problem, please attach the
> file for us to look at.
>
> //Peter
>
>

--0000000000001da11d057fa434e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">Hi Peter,</div><div class=3D"gmail_default" style=3D"font=
-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default" st=
yle=3D"font-family:comic sans ms,sans-serif">Thanks a lot for your quick re=
sponses and really appreciate it.</div><div class=3D"gmail_default" style=
=3D"font-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_def=
ault" style=3D"font-family:comic sans ms,sans-serif">Now I have attached bo=
th the error logs and <a href=3D"http://base-files_3.0.14.bb">base-files_3.=
0.14.bb</a>, please let me know if you require any other information from m=
y side</div><div class=3D"gmail_default" style=3D"font-family:comic sans ms=
,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:co=
mic sans ms,sans-serif">Many Thanks in advance</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Thu, Jan 17, 2019 at 10:20 AM Peter Kjell=
erstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis.com">peter.kjellerste=
dt@axis.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">[ Recipient list pruned to not cross-post to every Yocto related=
 mailing <br>
=C2=A0 list out there... ]<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: <a href=3D"mailto:poky-bounces@yoctoproject.org" target=3D"_blan=
k">poky-bounces@yoctoproject.org</a> &lt;<a href=3D"mailto:poky-bounces@yoc=
toproject.org" target=3D"_blank">poky-bounces@yoctoproject.org</a>&gt; On<b=
r>
&gt; Behalf Of srinivasan<br>
&gt; Sent: den 17 januari 2019 06:03<br>
&gt; To: <a href=3D"mailto:yocto-bsp@yoctoproject.org" target=3D"_blank">yo=
cto-bsp@yoctoproject.org</a>; <a href=3D"mailto:yocto-builds@yoctoproject.o=
rg" target=3D"_blank">yocto-builds@yoctoproject.org</a>; meta-<br>
&gt; <a href=3D"mailto:intel@yoctoproject.org" target=3D"_blank">intel@yoct=
oproject.org</a>; Development list for the linux-yocto*.git Linux<br>
&gt; kernel repositories &lt;<a href=3D"mailto:linux-yocto@yoctoproject.org=
" target=3D"_blank">linux-yocto@yoctoproject.org</a>&gt;;<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a>; <a href=3D"mailto:yocto-infrastructure@yoctoproject.org" ta=
rget=3D"_blank">yocto-infrastructure@yoctoproject.org</a>;<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a>; <a href=3D"mailto:meta-freescale@yoctoproject.org" target=
=3D"_blank">meta-freescale@yoctoproject.org</a>; meta-<br>
&gt; <a href=3D"mailto:freescale-request@yoctoproject.org" target=3D"_blank=
">freescale-request@yoctoproject.org</a><br>
&gt; Subject: [poky] Error: base-files/3.0.14-r89/temp/run.do_install.80432=
:<br>
&gt; Syntax error: Unterminated quoted string<br>
&gt; <br>
&gt; Dear Yocto Experts,<br>
&gt; <br>
&gt; I am trying to customize my vendor specific Yocto BSP&#39;s to my cust=
om<br>
&gt; OS.=C2=A0 I am facing the below error, could you please do the needful=
 or<br>
&gt; provide me some pointers from your end for solving this issue<br>
&gt; <br>
&gt; Error:<br>
&gt; $ bitbake fsl-image-validation-imx<br>
&gt; WARNING: Host distribution &quot;ubuntu-18.04&quot; has not been valid=
ated with<br>
&gt; this version of the build system; you may possibly experience<br>
&gt; unexpected failures. It is recommended that you use a tested<br>
&gt; distribution.<br>
&gt; Loading cache: 100%<br>
&gt; |#####################################################################=
#<br>
&gt; ######################################################################=
#<br>
&gt; ######################################################################=
#<br>
&gt; ###########################|<br>
&gt; Time: 0:00:00<br>
&gt; Loaded 3196 entries from dependency cache.<br>
&gt; Parsing recipes: 100%<br>
&gt; |#####################################################################=
#<br>
&gt; ######################################################################=
#<br>
&gt; ######################################################################=
#<br>
&gt; #########################|<br>
&gt; Time: 0:00:02<br>
&gt; Parsing of 2298 .bb files complete (2284 cached, 14 parsed). 3202<br>
&gt; targets, 398 skipped, 6 masked, 0 errors.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; <br>
&gt; Build Configuration:<br>
&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.38.0&qu=
ot;<br>
&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-li=
nux&quot;<br>
&gt; NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal&quot;<br>
&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;aarch64-p=
oky-linux&quot;<br>
&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;imx8=
mmevk&quot;<br>
&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot=
;custom-TRK&quot;<br>
&gt; DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;${custom_DISTRO_VER=
SION}&quot;<br>
&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;aarch64&quot;<br>
&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;&quot;<br=
>
&gt; meta-traktor-imx8=C2=A0 =C2=A0 =3D &quot;sumo:4b25c1ee6896b5447f8502f1=
3c28570341505360&quot;<br>
&gt; meta-traktor=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;sumo:818be7ec4=
f768ba485e437dc26beb7bdc4b8120a&quot;<br>
&gt; meta-qt5=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;qt-<=
br>
&gt; 5.11:ff6127ddd318d422f595295d1c189a86b3032873&quot;<br>
&gt; meta-custom=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;sumo:d98452914e201d46=
a6b1360ca957d9b3e396b31f&quot;<br>
&gt; meta-freescale=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD:1deea6b4a2f835=
21ff247ea4743d09cc705ecd8e&quot;<br>
&gt; meta<br>
&gt; meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;sumo:623b=
77885051174d0e05198843e739110977bd18&quot;<br>
&gt; meta-oe<br>
&gt; meta-python<br>
&gt; meta-networking=C2=A0 =C2=A0 =C2=A0 =3D &quot;sumo:8760facba1bceb299b3=
613b8955621ddaa3d4c3f&quot;<br>
&gt; meta-bsp<br>
&gt; meta-sdk=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;HEAD=
:1de93d3d5128b8422c23a87cb8b54149e2bfb942&quot;<br>
&gt; <br>
&gt; Initialising tasks: 100%<br>
&gt; |#####################################################################=
#<br>
&gt; ######################################################################=
#<br>
&gt; ######################################################################=
#<br>
&gt; ######################|<br>
&gt; Time: 0:00:02<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; ERROR: base-files-3.0.14-r89 do_install: Function failed: do_install<b=
r>
&gt; (log file is located at<br>
&gt; /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_=
d<br>
&gt; istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-<br>
&gt; r89/temp/log.do_install.80432)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_=
d<br>
&gt; istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-<br>
&gt; r89/temp/log.do_install.80432<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing python function extend_recipe_sysroot<br>
&gt; | NOTE: Direct dependencies are<br>
&gt; [&#39;/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/me=
ta/re<br>
&gt; cipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot&#39;,<br=
>
&gt; &#39;virtual:native:/home/srinishanmugam/customBuild_test_rpi/custom/s=
ource<br>
&gt; s/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot&=
#39;]<br>
&gt; | NOTE: Installed into sysroot: []<br>
&gt; | NOTE: Skipping as already exists in sysroot: [&#39;quilt-native&#39;=
,<br>
&gt; &#39;pseudo-native&#39;]<br>
&gt; | DEBUG: Python function extend_recipe_sysroot finished<br>
&gt; | DEBUG: Executing shell function do_install<br>
&gt; |<br>
&gt; /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_=
d<br>
&gt; istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-<br>
&gt; r89/temp/run.do_install.80432:<br>
&gt; 176:<br>
&gt; /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_=
d<br>
&gt; istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-<br>
&gt; r89/temp/run.do_install.80432:<br>
&gt; Syntax error: Unterminated quoted string<br>
&gt; | WARNING: exit code 2 from a shell command.<br>
&gt; | ERROR: Function failed: do_install (log file is located at<br>
&gt; /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_=
d<br>
&gt; istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-<br>
&gt; r89/temp/log.do_install.80432)<br>
&gt; ERROR: Task<br>
&gt; (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/re=
c<br>
&gt; ipes-core/base-files/base-files_3.0.14.bb:do_install)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 1256 tasks of which 1204 didn&#39;t nee=
d to<br>
&gt; be rerun and 1 failed.<br>
&gt; <br>
&gt; Summary: 1 task failed:<br>
&gt; <br>
&gt; /home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/rec=
i<br>
&gt; pes-core/base-files/base-files_3.0.14.bb:do_install<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit<br=
>
&gt; code.<br>
&gt; srinishanmugam@ni-bln-<br>
&gt; 07594:~/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8$<=
br>
&gt; <br>
&gt; <br>
&gt; Kindly do the needful,<br>
&gt; Many Thanks in advance<br>
<br>
Have you looked at the contents of <br>
/home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distr=
o_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_inst=
all.80432 <br>
to try to determine what caused the erroneous syntax? Otherwise do that, <b=
r>
and if you still cannot tell what causes the problem, please attach the <br=
>
file for us to look at.<br>
<br>
//Peter<br>
<br>
</blockquote></div>

--0000000000001da11d057fa434e2--

--0000000000001da125057fa434e4
Content-Type: text/plain; charset="US-ASCII"; name="error.txt"
Content-Disposition: attachment; filename="error.txt"
Content-Transfer-Encoding: base64
Content-ID: <f_jr0fbsru0>
X-Attachment-Id: f_jr0fbsru0

c3JpbmlzaGFubXVnYW1AbmktYmxuLTA3NTk0On4vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9i
dWlsZF9uYXRpdmVvc2Rpc3Ryb19pbXg4JCBiaXRiYWtlIGNvcmUtaW1hZ2UtbWluaW1hbApOT1RF
OiBZb3VyIGNvbmYvYmJsYXllcnMuY29uZiBoYXMgYmVlbiBhdXRvbWF0aWNhbGx5IHVwZGF0ZWQu
CldBUk5JTkc6IEhvc3QgZGlzdHJpYnV0aW9uICJ1YnVudHUtMTguMDQiIGhhcyBub3QgYmVlbiB2
YWxpZGF0ZWQgd2l0aCB0aGlzIHZlcnNpb24gb2YgdGhlIGJ1aWxkIHN5c3RlbTsgeW91IG1heSBw
b3NzaWJseSBleHBlcmllbmNlIHVuZXhwZWN0ZWQgZmFpbHVyZXMuIEl0IGlzIHJlY29tbWVuZGVk
IHRoYXQgeW91IHVzZSBhIHRlc3RlZCBkaXN0cmlidXRpb24uClBhcnNpbmcgcmVjaXBlczogMTAw
JSB8IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjfCBUaW1lOiAwOjAwOjE0ClBhcnNpbmcgb2YgMjI5OCAuYmIgZmlsZXMgY29t
cGxldGUgKDAgY2FjaGVkLCAyMjk4IHBhcnNlZCkuIDMyMDIgdGFyZ2V0cywgMzk4IHNraXBwZWQs
IDYgbWFza2VkLCAwIGVycm9ycy4KTk9URTogUmVzb2x2aW5nIGFueSBtaXNzaW5nIHRhc2sgcXVl
dWUgZGVwZW5kZW5jaWVzCgpCdWlsZCBDb25maWd1cmF0aW9uOgpCQl9WRVJTSU9OICAgICAgICAg
ICA9ICIxLjM4LjAiCkJVSUxEX1NZUyAgICAgICAgICAgID0gIng4Nl82NC1saW51eCIKTkFUSVZF
TFNCU1RSSU5HICAgICAgPSAidWJ1bnR1LTE4LjA0IgpUQVJHRVRfU1lTICAgICAgICAgICA9ICJh
YXJjaDY0LXBva3ktbGludXgiCk1BQ0hJTkUgICAgICAgICAgICAgID0gImlteDhtbWV2ayIKRElT
VFJPICAgICAgICAgICAgICAgPSAiTmF0aXZlT1MtVFJLIgpESVNUUk9fVkVSU0lPTiAgICAgICA9
ICIke05JQl9ESVNUUk9fVkVSU0lPTn0iClRVTkVfRkVBVFVSRVMgICAgICAgID0gImFhcmNoNjQi
ClRBUkdFVF9GUFUgICAgICAgICAgID0gIiIKbWV0YS10cmFrdG9yLWlteDggICAgPSAic3Vtbzo0
YjI1YzFlZTY4OTZiNTQ0N2Y4NTAyZjEzYzI4NTcwMzQxNTA1MzYwIgptZXRhLXRyYWt0b3IgICAg
ICAgICA9ICJzdW1vOjgxOGJlN2VjNGY3NjhiYTQ4NWU0MzdkYzI2YmViN2JkYzRiODEyMGEiCm1l
dGEtcXQ1ICAgICAgICAgICAgID0gInF0LTUuMTE6ZmY2MTI3ZGRkMzE4ZDQyMmY1OTUyOTVkMWMx
ODlhODZiMzAzMjg3MyIKbWV0YS1uYXRpdmVvcyAgICAgICAgPSAic3VtbzpkOTg0NTI5MTRlMjAx
ZDQ2YTZiMTM2MGNhOTU3ZDliM2UzOTZiMzFmIgptZXRhLWZyZWVzY2FsZSAgICAgICA9ICJIRUFE
OjFkZWVhNmI0YTJmODM1MjFmZjI0N2VhNDc0M2QwOWNjNzA1ZWNkOGUiCm1ldGEgICAgICAgICAg
ICAgICAgIAptZXRhLXBva3kgICAgICAgICAgICA9ICJzdW1vOjYyM2I3Nzg4NTA1MTE3NGQwZTA1
MTk4ODQzZTczOTExMDk3N2JkMTgiCm1ldGEtb2UgICAgICAgICAgICAgIAptZXRhLXB5dGhvbiAg
ICAgICAgICAKbWV0YS1uZXR3b3JraW5nICAgICAgPSAic3Vtbzo4NzYwZmFjYmExYmNlYjI5OWIz
NjEzYjg5NTU2MjFkZGFhM2Q0YzNmIgptZXRhLWJzcCAgICAgICAgICAgICAKbWV0YS1zZGsgICAg
ICAgICAgICAgPSAiSEVBRDoxZGU5M2QzZDUxMjhiODQyMmMyM2E4N2NiOGI1NDE0OWUyYmZiOTQy
IgoKSW5pdGlhbGlzaW5nIHRhc2tzOiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyN8IFRpbWU6IDA6MDA6MDEKTk9URTog
RXhlY3V0aW5nIFNldFNjZW5lIFRhc2tzCk5PVEU6IEV4ZWN1dGluZyBSdW5RdWV1ZSBUYXNrcwpF
UlJPUjogYmFzZS1maWxlcy0zLjAuMTQtcjg5IGRvX2luc3RhbGw6IEZ1bmN0aW9uIGZhaWxlZDog
ZG9faW5zdGFsbCAobG9nIGZpbGUgaXMgbG9jYXRlZCBhdCAvaG9tZS9zcmluaXNoYW5tdWdhbS9O
SUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX25hdGl2ZW9zZGlzdHJvX2lteDgvdG1wL3dv
cmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5L3RlbXAvbG9nLmRv
X2luc3RhbGwuMTgxODEpCkVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUgc3RvcmVkIGluOiAvaG9t
ZS9zcmluaXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX25hdGl2ZW9z
ZGlzdHJvX2lteDgvdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAu
MTQtcjg5L3RlbXAvbG9nLmRvX2luc3RhbGwuMTgxODEKTG9nIGRhdGEgZm9sbG93czoKfCBERUJV
RzogRXhlY3V0aW5nIHB5dGhvbiBmdW5jdGlvbiBleHRlbmRfcmVjaXBlX3N5c3Jvb3QKfCBOT1RF
OiBEaXJlY3QgZGVwZW5kZW5jaWVzIGFyZSBbJ3ZpcnR1YWw6bmF0aXZlOi9ob21lL3NyaW5pc2hh
bm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3Mvc291cmNlcy9wb2t5L21ldGEvcmVjaXBl
cy1kZXZ0b29scy9wc2V1ZG8vcHNldWRvX2dpdC5iYjpkb19wb3B1bGF0ZV9zeXNyb290JywgJy9o
b21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3Mvc291cmNlcy9wb2t5
L21ldGEvcmVjaXBlcy1kZXZ0b29scy9xdWlsdC9xdWlsdC1uYXRpdmVfMC42NS5iYjpkb19wb3B1
bGF0ZV9zeXNyb290J10KfCBOT1RFOiBJbnN0YWxsZWQgaW50byBzeXNyb290OiBbJ3BzZXVkby1u
YXRpdmUnXQp8IE5PVEU6IFNraXBwaW5nIGFzIGFscmVhZHkgZXhpc3RzIGluIHN5c3Jvb3Q6IFsn
cXVpbHQtbmF0aXZlJ10KfCBERUJVRzogUHl0aG9uIGZ1bmN0aW9uIGV4dGVuZF9yZWNpcGVfc3lz
cm9vdCBmaW5pc2hlZAp8IERFQlVHOiBFeGVjdXRpbmcgc2hlbGwgZnVuY3Rpb24gZG9faW5zdGFs
bAp8IC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRf
bmF0aXZlb3NkaXN0cm9faW14OC90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZp
bGVzLzMuMC4xNC1yODkvdGVtcC9ydW4uZG9faW5zdGFsbC4xODE4MTogMTc2OiAvaG9tZS9zcmlu
aXNoYW5tdWdhbS9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX25hdGl2ZW9zZGlzdHJv
X2lteDgvdG1wL3dvcmsvaW14OG1tZXZrLXBva3ktbGludXgvYmFzZS1maWxlcy8zLjAuMTQtcjg5
L3RlbXAvcnVuLmRvX2luc3RhbGwuMTgxODE6IFN5bnRheCBlcnJvcjogVW50ZXJtaW5hdGVkIHF1
b3RlZCBzdHJpbmcKfCBXQVJOSU5HOiBleGl0IGNvZGUgMiBmcm9tIGEgc2hlbGwgY29tbWFuZC4K
fCBFUlJPUjogRnVuY3Rpb24gZmFpbGVkOiBkb19pbnN0YWxsIChsb2cgZmlsZSBpcyBsb2NhdGVk
IGF0IC9ob21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3MvYnVpbGRf
bmF0aXZlb3NkaXN0cm9faW14OC90bXAvd29yay9pbXg4bW1ldmstcG9reS1saW51eC9iYXNlLWZp
bGVzLzMuMC4xNC1yODkvdGVtcC9sb2cuZG9faW5zdGFsbC4xODE4MSkKRVJST1I6IFRhc2sgKC9o
b21lL3NyaW5pc2hhbm11Z2FtL05JQnVpbGRfdGVzdF9ycGkvbmF0aXZlb3Mvc291cmNlcy9wb2t5
L21ldGEvcmVjaXBlcy1jb3JlL2Jhc2UtZmlsZXMvYmFzZS1maWxlc18zLjAuMTQuYmI6ZG9faW5z
dGFsbCkgZmFpbGVkIHdpdGggZXhpdCBjb2RlICcxJwpOT1RFOiBUYXNrcyBTdW1tYXJ5OiBBdHRl
bXB0ZWQgMTUyNiB0YXNrcyBvZiB3aGljaCAxMTIxIGRpZG4ndCBuZWVkIHRvIGJlIHJlcnVuIGFu
ZCAxIGZhaWxlZC4KClN1bW1hcnk6IDEgdGFzayBmYWlsZWQ6CiAgL2hvbWUvc3JpbmlzaGFubXVn
YW0vTklCdWlsZF90ZXN0X3JwaS9uYXRpdmVvcy9zb3VyY2VzL3Bva3kvbWV0YS9yZWNpcGVzLWNv
cmUvYmFzZS1maWxlcy9iYXNlLWZpbGVzXzMuMC4xNC5iYjpkb19pbnN0YWxsClN1bW1hcnk6IFRo
ZXJlIHdhcyAxIFdBUk5JTkcgbWVzc2FnZSBzaG93bi4KU3VtbWFyeTogVGhlcmUgd2FzIDEgRVJS
T1IgbWVzc2FnZSBzaG93biwgcmV0dXJuaW5nIGEgbm9uLXplcm8gZXhpdCBjb2RlLgpzcmluaXNo
YW5tdWdhbUBuaS1ibG4tMDc1OTQ6fi9OSUJ1aWxkX3Rlc3RfcnBpL25hdGl2ZW9zL2J1aWxkX25h
dGl2ZW9zZGlzdHJvX2lteDgkCg==

--0000000000001da125057fa434e4
Content-Type: application/octet-stream; name="base-files_3.0.14.bb"
Content-Disposition: attachment; filename="base-files_3.0.14.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_jr0fcee21>
X-Attachment-Id: f_jr0fcee21

U1VNTUFSWSA9ICJNaXNjZWxsYW5lb3VzIGZpbGVzIGZvciB0aGUgYmFzZSBzeXN0ZW0iCkRFU0NS
SVBUSU9OID0gIlRoZSBiYXNlLWZpbGVzIHBhY2thZ2UgY3JlYXRlcyB0aGUgYmFzaWMgc3lzdGVt
IGRpcmVjdG9yeSBzdHJ1Y3R1cmUgYW5kIHByb3ZpZGVzIGEgc21hbGwgc2V0IG9mIGtleSBjb25m
aWd1cmF0aW9uIGZpbGVzIGZvciB0aGUgc3lzdGVtLiIKU0VDVElPTiA9ICJiYXNlIgpQUiA9ICJy
ODkiCkxJQ0VOU0UgPSAiR1BMdjIiCkxJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL2xpY2Vuc2Vz
L0dQTC0yO21kNT05NGQ1NWQ1MTJhOWJhMzZjYWE5YjdkZjA3OWJhZTE5ZiIKIyBSZW1vdmVkIGFs
bCBsaWNlbnNlIHJlbGF0ZWQgdGFza3MgaW4gdGhpcyByZWNpcGUgYXMgbGljZW5zZS5iYmNsYXNz
IAojIG5vdyBkZWFscyB3aXRoIHRoaXMuIEluIG9yZGVyIHRvIGdldCBhY2N1cmF0ZSBsaWNlbnNp
bmcgb24gdG8gdGhlIGltYWdlOgojIFNldCBDT1BZX0xJQ19NQU5JRkVTVCB0byBqdXN0IGNvcHkg
anVzdCB0aGUgbGljZW5zZS5tYW5pZmVzdCB0byB0aGUgaW1hZ2UKIyBGb3IgdGhlIG1hbmlmZXN0
IGFuZCB0aGUgbGljZW5zZSB0ZXh0IGZvciBlYWNoIHBhY2thZ2U6CiMgU2V0IENPUFlfTElDX01B
TklGRVNUIGFuZCBDT1BZX0xJQ19ESVJTCgpTUkNfVVJJID0gImZpbGU6Ly9yb3RhdGlvbiBcCiAg
ICAgICAgICAgZmlsZTovL25zc3dpdGNoLmNvbmYgXAogICAgICAgICAgIGZpbGU6Ly9tb3RkIFwK
ICAgICAgICAgICBmaWxlOi8vaG9zdC5jb25mIFwKICAgICAgICAgICBmaWxlOi8vcHJvZmlsZSBc
CiAgICAgICAgICAgZmlsZTovL3NoZWxscyBcCiAgICAgICAgICAgZmlsZTovL2ZzdGFiIFwKICAg
ICAgICAgICBmaWxlOi8vZmlsZXN5c3RlbXMgXAogICAgICAgICAgIGZpbGU6Ly9pc3N1ZS5uZXQg
XAogICAgICAgICAgIGZpbGU6Ly9pc3N1ZSBcCiAgICAgICAgICAgZmlsZTovL3VzYmQgXAogICAg
ICAgICAgIGZpbGU6Ly9zaGFyZS9kb3QuYmFzaHJjIFwKICAgICAgICAgICBmaWxlOi8vc2hhcmUv
ZG90LnByb2ZpbGUgXAogICAgICAgICAgIGZpbGU6Ly9saWNlbnNlcy9HUEwtMiBcCiAgICAgICAg
ICAgIgpTID0gIiR7V09SS0RJUn0iCgpJTkhJQklUX0RFRkFVTFRfREVQUyA9ICIxIgoKZG9jZGly
X2FwcGVuZCA9ICIvJHtQfSIKZGlyczE3NzcgPSAiL3RtcCAke2xvY2Fsc3RhdGVkaXJ9L3ZvbGF0
aWxlL3RtcCIKZGlyczI3NzUgPSAiIgpkaXJzNTU1ID0gIi9zeXMgL3Byb2MiCmRpcnM3NTUgPSAi
L2Jvb3QgL2RldiAke2Jhc2VfYmluZGlyfSAke2Jhc2Vfc2JpbmRpcn0gJHtiYXNlX2xpYmRpcn0g
XAogICAgICAgICAgICR7c3lzY29uZmRpcn0gJHtzeXNjb25mZGlyfS9kZWZhdWx0IFwKICAgICAg
ICAgICAke3N5c2NvbmZkaXJ9L3NrZWwgJHtub25hcmNoX2Jhc2VfbGliZGlyfSAvbW50ICR7Uk9P
VF9IT01FfSAvcnVuIFwKICAgICAgICAgICAke3ByZWZpeH0gJHtiaW5kaXJ9ICR7ZG9jZGlyfSAv
dXNyL2dhbWVzICR7aW5jbHVkZWRpcn0gXAogICAgICAgICAgICR7bGliZGlyfSAke3NiaW5kaXJ9
ICR7ZGF0YWRpcn0gXAogICAgICAgICAgICR7ZGF0YWRpcn0vY29tbW9uLWxpY2Vuc2VzICR7ZGF0
YWRpcn0vZGljdCAke2luZm9kaXJ9IFwKICAgICAgICAgICAke21hbmRpcn0gJHtkYXRhZGlyfS9t
aXNjICR7bG9jYWxzdGF0ZWRpcn0gXAogICAgICAgICAgICR7bG9jYWxzdGF0ZWRpcn0vYmFja3Vw
cyAke2xvY2Fsc3RhdGVkaXJ9L2xpYiBcCiAgICAgICAgICAgJHtsb2NhbHN0YXRlZGlyfS9saWIv
bWlzYyAke2xvY2Fsc3RhdGVkaXJ9L3Nwb29sIFwKICAgICAgICAgICAke2xvY2Fsc3RhdGVkaXJ9
L3ZvbGF0aWxlIFwKICAgICAgICAgICAke2xvY2Fsc3RhdGVkaXJ9LyR7QCd2b2xhdGlsZS8nIGlm
IG9lLnR5cGVzLmJvb2xlYW4oJyR7Vk9MQVRJTEVfTE9HX0RJUn0nKSBlbHNlICcnfWxvZyBcCiAg
ICAgICAgICAgL2hvbWUgJHtwcmVmaXh9L3NyYyAke2xvY2Fsc3RhdGVkaXJ9L2xvY2FsIFwKICAg
ICAgICAgICAvbWVkaWEiCgpkaXJzNzU1LWxzYiA9ICIvc3J2ICBcCiAgICAgICAgICAgICAgICR7
cHJlZml4fS9sb2NhbCAke3ByZWZpeH0vbG9jYWwvYmluICR7cHJlZml4fS9sb2NhbC9nYW1lcyBc
CiAgICAgICAgICAgICAgICR7cHJlZml4fS9sb2NhbC9pbmNsdWRlICR7cHJlZml4fS9sb2NhbC9s
aWIgJHtwcmVmaXh9L2xvY2FsL3NiaW4gXAogICAgICAgICAgICAgICAke3ByZWZpeH0vbG9jYWwv
c2hhcmUgJHtwcmVmaXh9L2xvY2FsL3NyYyBcCiAgICAgICAgICAgICAgICR7cHJlZml4fS9saWIv
bG9jYWxlIgpkaXJzMjc3NS1sc2IgPSAiL3Zhci9tYWlsIgoKdm9sYXRpbGVzID0gIiR7QCdsb2cn
IGlmIG9lLnR5cGVzLmJvb2xlYW4oJyR7Vk9MQVRJTEVfTE9HX0RJUn0nKSBlbHNlICcnfSB0bXAi
CmNvbmZmaWxlcyA9ICIke3N5c2NvbmZkaXJ9L2RlYmlhbl92ZXJzaW9uICR7c3lzY29uZmRpcn0v
aG9zdC5jb25mIFwKICAgICAgICAgICAgICR7c3lzY29uZmRpcn0vaXNzdWUgLyR7c3lzY29uZmRp
cn0vaXNzdWUubmV0IFwKICAgICAgICAgICAgICR7c3lzY29uZmRpcn0vbnNzd2l0Y2guY29uZiAk
e3N5c2NvbmZkaXJ9L3Byb2ZpbGUgXAogICAgICAgICAgICAgJHtzeXNjb25mZGlyfS9kZWZhdWx0
IgoKIyBCeSBkZWZhdWx0IHRoZSBob3N0bmFtZSBpcyB0aGUgbWFjaGluZSBuYW1lLiBJZiB0aGUg
aG9zdG5hbWUgaXMgdW5zZXQgdGhlbiBhCiMgL2V0Yy9ob3N0bmFtZSBmaWxlIGlzbid0IHdyaXR0
ZW4sIHN1aXRhYmxlIGZvciBlbnZpcm9ubWVudHMgd2l0aCBkeW5hbWljCiMgaG9zdG5hbWVzLgoj
CiMgVGhlIGhvc3RuYW1lIGNhbiBiZSBjaGFuZ2VkIG91dHNpZGUgb2YgdGhpcyByZWNpcGUgYnkg
dXNpbmcKIyBob3N0bmFtZV9wbi1iYXNlLWZpbGVzID0gIm15LWhvc3QtbmFtZSIuCmhvc3RuYW1l
ID0gIiR7TUFDSElORX0iCgpCQVNFRklMRVNJU1NVRUlOU1RBTEwgPz0gImRvX2luc3RhbGxfYmFz
ZWZpbGVzaXNzdWUiCgojIEluIHByZXZpb3VzIHZlcnNpb25zIG9mIGJhc2UtZmlsZXMsIC9ydW4g
d2FzIGEgc29mdGxpbmsgdG8gL3Zhci9ydW4gYW5kIHRoZQojIGRpcmVjdG9yeSB3YXMgbG9jYXRl
ZCBpbiAvdmFyL3ZvbGF0bGllL3J1bi4gIEFsc28sIC92YXIvbG9jayB3YXMgYSBzb2Z0bGluawoj
IHRvIC92YXIvdm9sYXRpbGUvbG9jayB3aGljaCBpcyB3aGVyZSB0aGUgcmVhbCBkaXJlY3Rvcnkg
d2FzIGxvY2F0ZWQuICBOb3csCiMgL3J1biBhbmQgL3J1bi9sb2NrIGFyZSB0aGUgcmVhbCBkaXJl
Y3Rvcmllcy4gIElmIHdlIGFyZSB1cGdyYWRpbmcsIHdlIG1heQojIG5lZWQgdG8gcmVtb3ZlIHRo
ZSBzeW1ib2xpYyBsaW5rcyBmaXJzdCBiZWZvcmUgd2UgY3JlYXRlIHRoZSBkaXJlY3Rvcmllcy4K
IyBPdGhlcndpc2UgdGhlIGRpcmVjdG9yeSBjcmVhdGlvbiB3aWxsIGZhaWwgYW5kIHdlIHdpbGwg
aGF2ZSBjaXJjdWxhciBzeW1ib2xpYwojIGxpbmtzLgojIApwa2dfcHJlaW5zdF8ke1BOfSAoKSB7
CiAgICAjIS9iaW4vc2ggLWUKICAgIGlmIFsgeCIkRCIgPSAieCIgXTsgdGhlbgogICAgICAgIGlm
IFsgLWggIi92YXIvbG9jayIgXTsgdGhlbgogICAgICAgICAgICAjIFJlbW92ZSB0aGUgc3ltYm9s
aWMgbGluawogICAgICAgICAgICBybSAtZiAvdmFyL2xvY2sKICAgICAgICBmaQoKICAgICAgICBp
ZiBbIC1oICIvcnVuIiBdOyB0aGVuCiAgICAgICAgICAgICMgUmVtb3ZlIHRoZSBzeW1ib2xpYyBs
aW5rCiAgICAgICAgICAgIHJtIC1mIC9ydW4KICAgICAgICBmaQogICAgZmkgICAgIAp9Cgpkb19p
bnN0YWxsICgpIHsKCWZvciBkIGluICR7ZGlyczU1NX07IGRvCgkJaW5zdGFsbCAtbSAwNTU1IC1k
ICR7RH0kZAoJZG9uZQoJZm9yIGQgaW4gJHtkaXJzNzU1fTsgZG8KCQlpbnN0YWxsIC1tIDA3NTUg
LWQgJHtEfSRkCglkb25lCglmb3IgZCBpbiAke2RpcnMxNzc3fTsgZG8KCQlpbnN0YWxsIC1tIDE3
NzcgLWQgJHtEfSRkCglkb25lCglmb3IgZCBpbiAke2RpcnMyNzc1fTsgZG8KCQlpbnN0YWxsIC1t
IDI3NzUgLWQgJHtEfSRkCglkb25lCglmb3IgZCBpbiAke3ZvbGF0aWxlc307IGRvCgkJbG4gLXNm
IHZvbGF0aWxlLyRkICR7RH0ke2xvY2Fsc3RhdGVkaXJ9LyRkCglkb25lCgoJbG4gLXNuZiAuLi9y
dW4gJHtEfSR7bG9jYWxzdGF0ZWRpcn0vcnVuCglsbiAtc25mIC4uL3J1bi9sb2NrICR7RH0ke2xv
Y2Fsc3RhdGVkaXJ9L2xvY2sKCgkke0JBU0VGSUxFU0lTU1VFSU5TVEFMTH0KCglyb3RhdGlvbj1g
Y2F0ICR7V09SS0RJUn0vcm90YXRpb25gCglpZiBbICIkcm90YXRpb24iICE9ICIwIiBdOyB0aGVu
CiAJCWluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L3JvdGF0aW9uICR7RH0ke3N5c2NvbmZkaXJ9
L3JvdGF0aW9uCglmaQoKCWluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L2ZzdGFiICR7RH0ke3N5
c2NvbmZkaXJ9L2ZzdGFiCglpbnN0YWxsIC1tIDA2NDQgJHtXT1JLRElSfS9maWxlc3lzdGVtcyAk
e0R9JHtzeXNjb25mZGlyfS9maWxlc3lzdGVtcwoJaW5zdGFsbCAtbSAwNjQ0ICR7V09SS0RJUn0v
dXNiZCAke0R9JHtzeXNjb25mZGlyfS9kZWZhdWx0L3VzYmQKCWluc3RhbGwgLW0gMDY0NCAke1dP
UktESVJ9L3Byb2ZpbGUgJHtEfSR7c3lzY29uZmRpcn0vcHJvZmlsZQoJc2VkIC1pICdzI1JPT1RI
T01FIyR7Uk9PVF9IT01FfSMnICR7RH0ke3N5c2NvbmZkaXJ9L3Byb2ZpbGUKCWluc3RhbGwgLW0g
MDY0NCAke1dPUktESVJ9L3NoZWxscyAke0R9JHtzeXNjb25mZGlyfS9zaGVsbHMKCWluc3RhbGwg
LW0gMDc1NSAke1dPUktESVJ9L3NoYXJlL2RvdC5wcm9maWxlICR7RH0ke3N5c2NvbmZkaXJ9L3Nr
ZWwvLnByb2ZpbGUKCWluc3RhbGwgLW0gMDc1NSAke1dPUktESVJ9L3NoYXJlL2RvdC5iYXNocmMg
JHtEfSR7c3lzY29uZmRpcn0vc2tlbC8uYmFzaHJjCglpbnN0YWxsIC1tIDA2NDQgJHtXT1JLRElS
fS9uc3N3aXRjaC5jb25mICR7RH0ke3N5c2NvbmZkaXJ9L25zc3dpdGNoLmNvbmYKCWluc3RhbGwg
LW0gMDY0NCAke1dPUktESVJ9L2hvc3QuY29uZiAke0R9JHtzeXNjb25mZGlyfS9ob3N0LmNvbmYK
CWluc3RhbGwgLW0gMDY0NCAke1dPUktESVJ9L21vdGQgJHtEfSR7c3lzY29uZmRpcn0vbW90ZAoK
CWxuIC1zZiAvcHJvYy9tb3VudHMgJHtEfSR7c3lzY29uZmRpcn0vbXRhYgp9CgpESVNUUk9fVkVS
U0lPTlt2YXJkZXBzZXhjbHVkZV0gKz0gIkRBVEUiCmRvX2luc3RhbGxfYmFzZWZpbGVzaXNzdWUg
KCkgewoJaWYgWyAiJHtob3N0bmFtZX0iIF07IHRoZW4KCQllY2hvICR7aG9zdG5hbWV9ID4gJHtE
fSR7c3lzY29uZmRpcn0vaG9zdG5hbWUKCWZpCgoJaW5zdGFsbCAtbSA2NDQgJHtXT1JLRElSfS9p
c3N1ZSogICR7RH0ke3N5c2NvbmZkaXJ9CiAgICAgICAgaWYgWyAtbiAiJHtESVNUUk9fTkFNRX0i
IF07IHRoZW4KCQlwcmludGYgIiR7RElTVFJPX05BTUV9ICIgPj4gJHtEfSR7c3lzY29uZmRpcn0v
aXNzdWUKCQlwcmludGYgIiR7RElTVFJPX05BTUV9ICIgPj4gJHtEfSR7c3lzY29uZmRpcn0vaXNz
dWUubmV0CgkJaWYgWyAtbiAiJHtESVNUUk9fVkVSU0lPTn0iIF07IHRoZW4KCQkJZGlzdHJvX3Zl
cnNpb25fbm9kYXRlPSR7QCcke0RJU1RST19WRVJTSU9OfScucmVwbGFjZSgnc25hcHNob3QtJHtE
QVRFfScsJ3NuYXBzaG90JykucmVwbGFjZSgnJHtEQVRFfScsJycpfQoJCQlwcmludGYgIiVzICIg
JGRpc3Ryb192ZXJzaW9uX25vZGF0ZSA+PiAke0R9JHtzeXNjb25mZGlyfS9pc3N1ZQoJCQlwcmlu
dGYgIiVzICIgJGRpc3Ryb192ZXJzaW9uX25vZGF0ZSA+PiAke0R9JHtzeXNjb25mZGlyfS9pc3N1
ZS5uZXQKCQlmaQoJCXByaW50ZiAiXFxcbiBcXFxsXG4iID4+ICR7RH0ke3N5c2NvbmZkaXJ9L2lz
c3VlCgkJZWNobyA+PiAke0R9JHtzeXNjb25mZGlyfS9pc3N1ZQoJCWVjaG8gIiVoIiAgICA+PiAk
e0R9JHtzeXNjb25mZGlyfS9pc3N1ZS5uZXQKCQllY2hvID4+ICR7RH0ke3N5c2NvbmZkaXJ9L2lz
c3VlLm5ldAogCWZpCn0KZG9faW5zdGFsbF9iYXNlZmlsZXNpc3N1ZVt2YXJkZXBzZXhjbHVkZV0g
Kz0gIkRBVEUiCgpkb19pbnN0YWxsX2FwcGVuZF9saW51eHN0ZGJhc2UoKSB7Cglmb3IgZCBpbiAk
e2RpcnM3NTUtbHNifTsgZG8KICAgICAgICAgICAgICAgIGluc3RhbGwgLW0gMDc1NSAtZCAke0R9
JGQKICAgICAgICBkb25lCgoJZm9yIGQgaW4gJHtkaXJzMjc3NS1sc2J9OyBkbwogICAgICAgICAg
ICAgICAgaW5zdGFsbCAtbSAyNzc1IC1kICR7RH0kZAogICAgICAgIGRvbmUKfQoKU1lTUk9PVF9E
SVJTICs9ICIke3N5c2NvbmZkaXJ9L3NrZWwiCgpQQUNLQUdFUyA9ICIke1BOfS1kb2MgJHtQTn0g
JHtQTn0tZGV2ICR7UE59LWRiZyIKRklMRVNfJHtQTn0gPSAiLyIKRklMRVNfJHtQTn0tZG9jID0g
IiR7ZG9jZGlyfSAke2RhdGFkaXJ9L2NvbW1vbi1saWNlbnNlcyIKClBBQ0tBR0VfQVJDSCA9ICIk
e01BQ0hJTkVfQVJDSH0iCgpDT05GRklMRVNfJHtQTn0gPSAiJHtzeXNjb25mZGlyfS9mc3RhYiAk
e0BbJycsICcke3N5c2NvbmZkaXJ9L2hvc3RuYW1lJ11bKGQuZ2V0VmFyKCdob3N0bmFtZScpICE9
ICcnKV19ICR7c3lzY29uZmRpcn0vc2hlbGxzIgpDT05GRklMRVNfJHtQTn0gKz0gIiR7c3lzY29u
ZmRpcn0vbW90ZCAke3N5c2NvbmZkaXJ9L25zc3dpdGNoLmNvbmYgJHtzeXNjb25mZGlyfS9wcm9m
aWxlIgo=

--0000000000001da125057fa434e4--
