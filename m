Return-Path: <srinivasan.rns@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B636E00CB9; Thu, 17 Jan 2019 04:54:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srinivasan.rns[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37FAFE00C46
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 04:54:54 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id v6so6075757oif.2
	for <poky@yoctoproject.org>; Thu, 17 Jan 2019 04:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YpJfAoe+EIdOtPJ59meax2DDXdUCrsaB94Ea/oLSPzc=;
	b=h3N5/whySph5n65bOBPQ3TddV6WPTvdUXai95xJbuHQowIoC7toGnmNI8t25zAlDz8
	yM0VJItol+IAh1l+/8mZIrPT1bKbFZgEV8IG3ltK7kid89ogreHQI8369KVWgjdtVmx/
	VV71gTVQxtrCXHaZGJkq/TlSbT0NG0KG/V0tAbvXCrUrW8EQFycvM86gme0aPgV7mb7n
	Fo3y7MiIoe8a1/jyzyh1KHU0ZXqlQBlGtxNWtgEX1aar2G5Edntgr7W5eLUvEN1nr6OX
	ht0hnmeN2qvyIDk2ORetouC2AybtkgO5tFWDLThSCDfh97egVySTIbcgIBlZFZn7yjOo
	pe/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YpJfAoe+EIdOtPJ59meax2DDXdUCrsaB94Ea/oLSPzc=;
	b=Cx0pkh9xBzEeDF69c+TsKQCloQt935bUGYWkWP5a7PLqWDxaDNOP+iQerf+cU9+2ou
	YFNQoNzDrY6chM00DnY1BpYY7Q29dkdpDFhl6w4+W8Seq+zrJhJBGnuJuutwVqa4a1y4
	gVaIETcGO3Ku0n9QgbN2ebOoC7QtraTEYNve5mt45tvHJ+EP+a/nNWvui4992kPnFp1t
	wQZ4an1mnlMQYdAvASfSx8RYeOr0ihR37zAHL3BsYeAO+DfdtWDc7M/o8aeRzY1ml/lm
	N4zbQbdrbRi1T3E+0UyiTzkPUhP+LcCm+HFVPdzmY9hpFIY0CLyxiX7xj2FknmKwhypu
	26CA==
X-Gm-Message-State: AJcUukeEoB/fexH7PZQdgC1QXmZ2s1KHx5x4+JAg3WizapSVK13oFTbQ
	pdm8kJLCaCl9wpOvSJsh1RRDqZuDNBiuWEeSIfNm8VUf
X-Google-Smtp-Source: ALg8bN49FtYNKo8Q0z5UQseB4FECyuMF6ltSCbrhpbcewq+temC327Cs/zvlJLbxCKtaCuknt6/ifl0U5T2Jax27nBk=
X-Received: by 2002:aca:b2c4:: with SMTP id b187mr5638840oif.245.1547729693862;
	Thu, 17 Jan 2019 04:54:53 -0800 (PST)
MIME-Version: 1.0
References: <CAFsTbWc_XoCN-99LXeCL1R-m0+jXGmO7DgOb-94y7a3L3ODN7Q@mail.gmail.com>
	<1352415c490c46838b4e19205a85ca4c@XBOX04.axis.com>
	<CAFsTbWfEMnd4adtexbb=+R0xeCtMEfUJFmiqa6x70AtQ5aFQMQ@mail.gmail.com>
	<80a5da9d680b4ae7ba8a5d98656b7926@XBOX04.axis.com>
	<CAFsTbWcd4UWU5bY03mmmvPQpyKqp+3SnjpGNn4iGS3nvRkJo2A@mail.gmail.com>
In-Reply-To: <CAFsTbWcd4UWU5bY03mmmvPQpyKqp+3SnjpGNn4iGS3nvRkJo2A@mail.gmail.com>
From: srinivasan <srinivasan.rns@gmail.com>
Date: Thu, 17 Jan 2019 13:54:42 +0100
Message-ID: <CAFsTbWdZANf2rcc3FbT46L13Gv8__CyThf0z8eotzvm0kfNdyg@mail.gmail.com>
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
X-List-Received-Date: Thu, 17 Jan 2019 12:54:57 -0000
Content-Type: multipart/alternative; boundary="0000000000009c7023057fa6e6fe"

--0000000000009c7023057fa6e6fe
Content-Type: text/plain; charset="UTF-8"

Hi Peter,

Could you please let me know if any other information is needed from my
side?

Many Thanks in advance

On Thu, Jan 17, 2019 at 11:56 AM srinivasan <srinivasan.rns@gmail.com>
wrote:

> Many Thanks a lot Peter for your quick responses , I have attached the
> sources.zip folder plus the log files now, for the errors that I am facing
> now, kindly do the needful
>
>
>
>
> Many Thanks in advance,
>  test.zip
> <https://drive.google.com/file/d/17sokYBDYTUNCO5XfYBzktc-WjcuqKsgc/view?usp=drive_web>
>
> On Thu, Jan 17, 2019 at 10:51 AM Peter Kjellerstedt <
> peter.kjellerstedt@axis.com> wrote:
>
>> Unless you have made changes to base-files_3.0.14.bb (which I seriously
>> doubt), that is not the file we need. We need the file called:
>>
>>
>> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432
>>
>> That file is generated by bitbake and contains the actual shell code that
>> was run when the error occurred. It should hopefully give us a clue as to
>> what you should look for to find the actual mistake in your recipe files.
>>
>>
>>
>> //Peter
>>
>>
>>
>> *From:* srinivasan <srinivasan.rns@gmail.com>
>> *Sent:* den 17 januari 2019 10:42
>> *To:* Peter Kjellerstedt <peter.kjellerstedt@axis.com>
>> *Cc:* poky@yoctoproject.org
>> *Subject:* Re: [poky] Error:
>> base-files/3.0.14-r89/temp/run.do_install.80432: Syntax error: Unterminated
>> quoted string
>>
>>
>>
>> Hi Peter,
>>
>>
>>
>> Thanks a lot for your quick responses and really appreciate it.
>>
>>
>>
>> Now I have attached both the error logs and base-files_3.0.14.bb, please
>> let me know if you require any other information from my side
>>
>>
>>
>> Many Thanks in advance
>>
>>
>>
>> On Thu, Jan 17, 2019 at 10:20 AM Peter Kjellerstedt <
>> peter.kjellerstedt@axis.com> wrote:
>>
>> [ Recipient list pruned to not cross-post to every Yocto related mailing
>>   list out there... ]
>>
>> > -----Original Message-----
>> > From: poky-bounces@yoctoproject.org <poky-bounces@yoctoproject.org> On
>> > Behalf Of srinivasan
>> > Sent: den 17 januari 2019 06:03
>> > To: yocto-bsp@yoctoproject.org; yocto-builds@yoctoproject.org; meta-
>> > intel@yoctoproject.org; Development list for the linux-yocto*.git Linux
>> > kernel repositories <linux-yocto@yoctoproject.org>;
>> > poky@yoctoproject.org; yocto-infrastructure@yoctoproject.org;
>> > yocto@yoctoproject.org; meta-freescale@yoctoproject.org; meta-
>> > freescale-request@yoctoproject.org
>> > Subject: [poky] Error: base-files/3.0.14-r89/temp/run.do_install.80432:
>> > Syntax error: Unterminated quoted string
>> >
>> > Dear Yocto Experts,
>> >
>> > I am trying to customize my vendor specific Yocto BSP's to my custom
>> > OS.  I am facing the below error, could you please do the needful or
>> > provide me some pointers from your end for solving this issue
>> >
>> > Error:
>> > $ bitbake fsl-image-validation-imx
>> > WARNING: Host distribution "ubuntu-18.04" has not been validated with
>> > this version of the build system; you may possibly experience
>> > unexpected failures. It is recommended that you use a tested
>> > distribution.
>> > Loading cache: 100%
>> > |######################################################################
>> > #######################################################################
>> > #######################################################################
>> > ###########################|
>> > Time: 0:00:00
>> > Loaded 3196 entries from dependency cache.
>> > Parsing recipes: 100%
>> > |######################################################################
>> > #######################################################################
>> > #######################################################################
>> > #########################|
>> > Time: 0:00:02
>> > Parsing of 2298 .bb files complete (2284 cached, 14 parsed). 3202
>> > targets, 398 skipped, 6 masked, 0 errors.
>> > NOTE: Resolving any missing task queue dependencies
>> >
>> > Build Configuration:
>> > BB_VERSION           = "1.38.0"
>> > BUILD_SYS            = "x86_64-linux"
>> > NATIVELSBSTRING      = "universal"
>> > TARGET_SYS           = "aarch64-poky-linux"
>> > MACHINE              = "imx8mmevk"
>> > DISTRO               = "custom-TRK"
>> > DISTRO_VERSION       = "${custom_DISTRO_VERSION}"
>> > TUNE_FEATURES        = "aarch64"
>> > TARGET_FPU           = ""
>> > meta-traktor-imx8    = "sumo:4b25c1ee6896b5447f8502f13c28570341505360"
>> > meta-traktor         = "sumo:818be7ec4f768ba485e437dc26beb7bdc4b8120a"
>> > meta-qt5             = "qt-
>> > 5.11:ff6127ddd318d422f595295d1c189a86b3032873"
>> > meta-custom        = "sumo:d98452914e201d46a6b1360ca957d9b3e396b31f"
>> > meta-freescale       = "HEAD:1deea6b4a2f83521ff247ea4743d09cc705ecd8e"
>> > meta
>> > meta-poky            = "sumo:623b77885051174d0e05198843e739110977bd18"
>> > meta-oe
>> > meta-python
>> > meta-networking      = "sumo:8760facba1bceb299b3613b8955621ddaa3d4c3f"
>> > meta-bsp
>> > meta-sdk             = "HEAD:1de93d3d5128b8422c23a87cb8b54149e2bfb942"
>> >
>> > Initialising tasks: 100%
>> > |######################################################################
>> > #######################################################################
>> > #######################################################################
>> > ######################|
>> > Time: 0:00:02
>> > NOTE: Executing SetScene Tasks
>> > NOTE: Executing RunQueue Tasks
>> > ERROR: base-files-3.0.14-r89 do_install: Function failed: do_install
>> > (log file is located at
>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>> > r89/temp/log.do_install.80432)
>> > ERROR: Logfile of failure stored in:
>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>> > r89/temp/log.do_install.80432
>> > Log data follows:
>> > | DEBUG: Executing python function extend_recipe_sysroot
>> > | NOTE: Direct dependencies are
>> > ['/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/re
>> > cipes-devtools/quilt/quilt-native_0.65.bb:do_populate_sysroot',
>> > 'virtual:native:/home/srinishanmugam/customBuild_test_rpi/custom/source
>> > s/poky/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot']
>> > | NOTE: Installed into sysroot: []
>> > | NOTE: Skipping as already exists in sysroot: ['quilt-native',
>> > 'pseudo-native']
>> > | DEBUG: Python function extend_recipe_sysroot finished
>> > | DEBUG: Executing shell function do_install
>> > |
>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>> > r89/temp/run.do_install.80432:
>> > 176:
>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>> > r89/temp/run.do_install.80432:
>> > Syntax error: Unterminated quoted string
>> > | WARNING: exit code 2 from a shell command.
>> > | ERROR: Function failed: do_install (log file is located at
>> > /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_d
>> > istro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-
>> > r89/temp/log.do_install.80432)
>> > ERROR: Task
>> > (/home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/rec
>> > ipes-core/base-files/base-files_3.0.14.bb:do_install)
>> > failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 1256 tasks of which 1204 didn't need to
>> > be rerun and 1 failed.
>> >
>> > Summary: 1 task failed:
>> >
>> > /home/srinishanmugam/customBuild_test_rpi/custom/sources/poky/meta/reci
>> > pes-core/base-files/base-files_3.0.14.bb:do_install
>> > Summary: There was 1 WARNING message shown.
>> > Summary: There was 1 ERROR message shown, returning a non-zero exit
>> > code.
>> > srinishanmugam@ni-bln-
>> > 07594:~/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8$
>> >
>> >
>> > Kindly do the needful,
>> > Many Thanks in advance
>>
>> Have you looked at the contents of
>> /home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distro_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_install.80432
>>
>> to try to determine what caused the erroneous syntax? Otherwise do that,
>> and if you still cannot tell what causes the problem, please attach the
>> file for us to look at.
>>
>> //Peter
>>
>>

--0000000000009c7023057fa6e6fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">Hi Peter,</div><div class=3D"gmail_default" style=3D"font=
-family:comic sans ms,sans-serif"><br></div><div class=3D"gmail_default" st=
yle=3D"font-family:comic sans ms,sans-serif">Could you please let me know i=
f any other information is needed from=C2=A0my side?</div><div class=3D"gma=
il_default" style=3D"font-family:comic sans ms,sans-serif"><br></div><div c=
lass=3D"gmail_default" style=3D"font-family:comic sans ms,sans-serif">Many =
Thanks in advance</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
">On Thu, Jan 17, 2019 at 11:56 AM srinivasan &lt;<a href=3D"mailto:sriniva=
san.rns@gmail.com">srinivasan.rns@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"g=
mail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif">Ma=
ny Thanks a lot Peter for your quick responses , I have attached the source=
s.zip folder plus the log files now, for the errors that I am facing now, k=
indly do the needful</div><div class=3D"gmail_default" style=3D"font-family=
:&quot;comic sans ms&quot;,sans-serif"><span style=3D"font-family:Arial,Hel=
vetica,sans-serif"><br></span></div><div class=3D"gmail_default" style=3D"f=
ont-family:&quot;comic sans ms&quot;,sans-serif"><span style=3D"font-family=
:Arial,Helvetica,sans-serif"><br></span></div><div class=3D"gmail_default" =
style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><span style=3D"f=
ont-family:Arial,Helvetica,sans-serif"><br></span></div><div class=3D"gmail=
_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-serif"><span =
style=3D"font-family:Arial,Helvetica,sans-serif"><br></span></div><div clas=
s=3D"gmail_default" style=3D"font-family:&quot;comic sans ms&quot;,sans-ser=
if"><span style=3D"font-family:Arial,Helvetica,sans-serif">Many Thanks in a=
dvance,</span></div><div class=3D"gmail_default" style=3D"font-family:&quot=
;comic sans ms&quot;,sans-serif"><span style=3D"font-family:Arial,Helvetica=
,sans-serif"></span></div><div class=3D"gmail_chip gmail_drive_chip" style=
=3D"width:396px;height:18px;max-height:18px;background-color:rgb(245,245,24=
5);padding:5px;font-family:arial;font-weight:bold;font-size:13px;border:1px=
 solid rgb(221,221,221);line-height:1"><a href=3D"https://drive.google.com/=
file/d/17sokYBDYTUNCO5XfYBzktc-WjcuqKsgc/view?usp=3Ddrive_web" style=3D"dis=
play:inline-block;max-width:366px;overflow:hidden;text-overflow:ellipsis;wh=
ite-space:nowrap;text-decoration-line:none;padding:1px 0px;border:none" tar=
get=3D"_blank"><img style=3D"vertical-align: bottom; border: none;" src=3D"=
https://ssl.gstatic.com/docs/doclist/images/icon_10_generic_list.png">=C2=
=A0<span dir=3D"ltr" style=3D"vertical-align:bottom;text-decoration:none">t=
est.zip</span></a><img style=3D"opacity: 0.55; float: right; display: none;=
"></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Thu, Jan 1=
7, 2019 at 10:51 AM Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellers=
tedt@axis.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"SV">
<div class=3D"gmail-m_7901444200118432192gmail-m_-2910282238530596821WordSe=
ction1">
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
Unless you have made changes to <a href=3D"http://base-files_3.0.14.bb" tar=
get=3D"_blank">base-files_3.0.14.bb</a> (which I seriously doubt), that is =
not the file we need. We need the file called:<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
/home/srinishanmugam/customBuild_test_rpi/custom/buid_test3_customtrk_distr=
o_imx8/tmp/work/imx8mmevk-poky-linux/base-files/3.0.14-r89/temp/run.do_inst=
all.80432<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
That file is generated by bitbake and contains the actual shell code that w=
as run when the error occurred. It should hopefully give us a clue as to wh=
at you should look
 for to find the actual mistake in your recipe files.<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
<u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
//Peter<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"color:rgb(148,54,52)">=
<u></u>=C2=A0<u></u></span></p>
<div style=3D"border-top:none;border-right:none;border-bottom:none;border-l=
eft:1.5pt solid blue;padding:0cm 0cm 0cm 4pt">
<div>
<div style=3D"border-right:none;border-bottom:none;border-left:none;border-=
top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> srinivasan &lt;<a href=3D"mailto:srinivasan.rns@gmail.com" targ=
et=3D"_blank">srinivasan.rns@gmail.com</a>&gt;
<br>
<b>Sent:</b> den 17 januari 2019 10:42<br>
<b>To:</b> Peter Kjellerstedt &lt;<a href=3D"mailto:peter.kjellerstedt@axis=
.com" target=3D"_blank">peter.kjellerstedt@axis.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@=
yoctoproject.org</a><br>
<b>Subject:</b> Re: [poky] Error: base-files/3.0.14-r89/temp/run.do_install=
.80432: Syntax error: Unterminated quoted string<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Hi Peter,<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Thanks a lot for your quick responses and really appreciate it.<u></u><u>=
</u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Now I have attached both the error logs and
<a href=3D"http://base-files_3.0.14.bb" target=3D"_blank">base-files_3.0.14=
.bb</a>, please let me know if you require any other information from my si=
de<u></u><u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
"><u></u>=C2=A0<u></u></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Comic Sans MS&quot;=
">Many Thanks in advance<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal">On Thu, Jan 17, 2019 at 10:20 AM Peter Kjellerstedt =
&lt;<a href=3D"mailto:peter.kjellerstedt@axis.com" target=3D"_blank">peter.=
kjellerstedt@axis.com</a>&gt; wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"border-top:none;border-right:none;border-bottom:none;b=
order-left:1pt solid rgb(204,204,204);padding:0cm 0cm 0cm 6pt;margin-left:4=
.8pt;margin-right:0cm">
<p class=3D"MsoNormal" style=3D"margin-bottom:12pt">[ Recipient list pruned=
 to not cross-post to every Yocto related mailing
<br>
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
cto-bsp@yoctoproject.org</a>;
<a href=3D"mailto:yocto-builds@yoctoproject.org" target=3D"_blank">yocto-bu=
ilds@yoctoproject.org</a>; meta-<br>
&gt; <a href=3D"mailto:intel@yoctoproject.org" target=3D"_blank">intel@yoct=
oproject.org</a>; Development list for the linux-yocto*.git Linux<br>
&gt; kernel repositories &lt;<a href=3D"mailto:linux-yocto@yoctoproject.org=
" target=3D"_blank">linux-yocto@yoctoproject.org</a>&gt;;<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctop=
roject.org</a>;
<a href=3D"mailto:yocto-infrastructure@yoctoproject.org" target=3D"_blank">=
yocto-infrastructure@yoctoproject.org</a>;<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a>;
<a href=3D"mailto:meta-freescale@yoctoproject.org" target=3D"_blank">meta-f=
reescale@yoctoproject.org</a>; meta-<br>
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
all.80432
<br>
to try to determine what caused the erroneous syntax? Otherwise do that, <b=
r>
and if you still cannot tell what causes the problem, please attach the <br=
>
file for us to look at.<br>
<br>
//Peter<u></u><u></u></p>
</blockquote>
</div>
</div>
</div>
</div>

</blockquote></div>
</blockquote></div>

--0000000000009c7023057fa6e6fe--
