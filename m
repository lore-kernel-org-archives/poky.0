Return-Path: <francis.giraldeau@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB27FE00E21; Fri, 15 Apr 2016 10:44:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (francis.giraldeau[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83913E0092C
	for <poky@yoctoproject.org>; Fri, 15 Apr 2016 10:44:32 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id y204so131034054oie.3
	for <poky@yoctoproject.org>; Fri, 15 Apr 2016 10:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=mEbtFK2Pz0oEs0DHXkDQZsRhgrPAXMq4ztWO6T6wtJU=;
	b=niPJM6wiYfDUHZpvELGtSd6ZqV3N3ZMPBSV+zaSLn7RM0kok6pgfPaLgb4TeA05+rI
	gG+UQj9khNpPUMFLIQA3DNVnNYCnlIPeQ3eKny92x+sTpTfXTAG94wqWiCqnhQxEf/5D
	IBKxbXon6XnU8x3Ag/62H9d7x5qxuoY/VLUJVNSjOCkQhvO116Je/KHUUVJCTxJBVyNp
	k2QKORwdDMAZ9gbXIvJ8hlVGfqcXxdQTr8jN094QYLnIcQrvAE1Rm8EIoPcUDAz9Qm0W
	/KUoETCmsxOcKT+sFWqUjtY1DFO5UMeBrPKDWth70ip4cbcPOyLH0/L8Xocxv2tEMQtF
	YHzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=mEbtFK2Pz0oEs0DHXkDQZsRhgrPAXMq4ztWO6T6wtJU=;
	b=IPeshFYKmnE9nq+MCeoLwKlOHOIKUQOYo9z8iLe0Vq16Pmd44WaFNvWw533WR8VWbo
	qWJ6kzQvdiWkJxkaMRlI0J733xssEENmvtV0ASOyLhGoaYI/A0Ckk7NpIXAjx6J5gA2F
	/b2Sk59LPoDw8uZRzYxJOXl3AHNuLevxA4gmuWtyM1fV6a180Mq6PcDUHT1IBGUWxvtM
	AOKg6dlofRxFm4lXBCRt0flUk2ZvBFkZBZXsWxXj8MUyGSkVgipeVqmNp7Yww9Y4rD15
	TzlgkNJX+tqbuE5EYi6mD/5ESKcpJxWBT7+TVTb7bC/CyeFYBfactsYeNixxLbeBaswT
	Phaw==
X-Gm-Message-State: AOPr4FWBLzchf2gl5vDElOgCuGFoc0m2mT1EJJ+Blqbn12An/uZJUReDK81shCktu41A9D7EfeWu7QngkhIVSQ==
X-Received: by 10.157.47.37 with SMTP id h34mr6844468otb.76.1460742272199;
	Fri, 15 Apr 2016 10:44:32 -0700 (PDT)
MIME-Version: 1.0
From: Francis Giraldeau <francis.giraldeau@gmail.com>
Date: Fri, 15 Apr 2016 17:44:22 +0000
Message-ID: <CAC6yHM64yMhA-xvmVviqFu1H4zo5kpn659A5=gfgC_wPMsjdpg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Status of preempt-rt on raspberrypi
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
X-List-Received-Date: Fri, 15 Apr 2016 17:44:37 -0000
Content-Type: multipart/alternative; boundary=94eb2c0356a03e37950530899031

--94eb2c0356a03e37950530899031
Content-Type: text/plain; charset=UTF-8

I'd like to create an image with linux preempt-rt for the raspberry-pi.

I merged the patches specific to the rpi on top of the linux 4.4 preempt-rt
branch [1]. Now, I'm trying to add the support in the meta-raspberrypi
layer [2].

However, I still have an issue setting the required config, such as
CONFIG_PREEMPT_FULL=y for the kernel. I saw that there is already a
preempt-rt branch and config by default in Yocto, but I haven't found the
way to select in the local.conf file when building for the rpi. My
local.conf file has this content:

MACHINE ??= "raspberrypi2"
PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi-rt"

In fact, even with this local.conf:
MACHINE ??= "qemuarm"
KBRANCH ?= "standard/preempt-rt"

The resulting kernel config does not include PREEMPT_FULL:
$ grep PREEMPT
./tmp/work/qemuarm-poky-linux-gnueabi/linux-yocto/4.1.15+gitAUTOINC+46bb64d605_cf760f381c-r0/linux-qemuarm-standard-build/.config
CONFIG_PREEMPT_RCU=y
# CONFIG_PREEMPT_NONE is not set
# CONFIG_PREEMPT_VOLUNTARY is not set
CONFIG_PREEMPT=y
CONFIG_PREEMPT_COUNT=y
CONFIG_DEBUG_PREEMPT=y
# CONFIG_PREEMPT_TRACER is not set

And CONFIG_DEBUG_PREEMPT should be unset, because it is known to cause
slowdowns.

I followed the kernel dev manual and tried to add .cfg file, but it looks
like the kernel .config is generated from within do_configure_prepend() in
the meta-raspberrypi kernel recipe. That seems to overwrite other config
done by bitbake.

So, I'm a bit confused on how things should properly work. Any advice would
be greatly appreciated.

Thanks for the help,

Francis

[1] https://github.com/giraldeau/linux/tree/linux-4.4.y-rt-rebase-rpi
[2]
https://github.com/giraldeau/meta-raspberrypi/commit/56168d6b320c1b724d04b1e7f365255ffdb62e70

--94eb2c0356a03e37950530899031
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;d like to create an image with linux preempt-rt=
 for the raspberry-pi.=C2=A0</div><div><br></div><div>I merged the patches =
specific to the rpi on top of the linux 4.4 preempt-rt branch [1]. Now, I&#=
39;m trying to=C2=A0<span style=3D"line-height:1.5">add the support in the =
meta-raspberrypi layer [2].=C2=A0</span></div><div><br></div><div>However, =
I still have an issue setting the required config, such as CONFIG_PREEMPT_F=
ULL=3Dy for the kernel. I saw that there is already a preempt-rt branch and=
 config by default in Yocto, but I haven&#39;t found the way to select in t=
he local.conf file when building for the rpi. My local.conf file has this c=
ontent:</div><div><br></div><div><div>MACHINE ??=3D &quot;raspberrypi2&quot=
;</div><div>PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-raspberrypi-=
rt&quot;</div></div><div><br></div><div><span style=3D"line-height:1.5">In =
fact, even with this local.conf:=C2=A0</span><br></div><div><div>MACHINE ??=
=3D &quot;qemuarm&quot;</div><div>KBRANCH ?=3D &quot;standard/preempt-rt&qu=
ot;</div></div><div><br></div><div>The resulting kernel config does not inc=
lude PREEMPT_FULL:</div><div><div>$ grep PREEMPT ./tmp/work/qemuarm-poky-li=
nux-gnueabi/linux-yocto/4.1.15+gitAUTOINC+46bb64d605_cf760f381c-r0/linux-qe=
muarm-standard-build/.config</div><div>CONFIG_PREEMPT_RCU=3Dy</div><div># C=
ONFIG_PREEMPT_NONE is not set</div><div># CONFIG_PREEMPT_VOLUNTARY is not s=
et</div><div>CONFIG_PREEMPT=3Dy</div><div>CONFIG_PREEMPT_COUNT=3Dy</div><di=
v>CONFIG_DEBUG_PREEMPT=3Dy</div><div># CONFIG_PREEMPT_TRACER is not set</di=
v></div><div><br></div><div>And CONFIG_DEBUG_PREEMPT should be unset, becau=
se it is known to cause slowdowns.</div><div><br></div><div><span style=3D"=
line-height:1.5">I followed the kernel dev manual and tried to add .cfg fil=
e, but it looks like the kernel .config is generated from within do_configu=
re_prepend()=C2=A0</span><span style=3D"line-height:1.5">in the meta-raspbe=
rrypi kernel recipe. T</span><span style=3D"line-height:1.5">hat seems to o=
verwrite other config done by bitbake.</span></div><div><br></div><div>So, =
I&#39;m a bit confused on how things should properly work. Any advice would=
 be greatly appreciated.=C2=A0</div><div><br></div><div>Thanks for the help=
,</div><div><br></div><div>Francis</div><div><br></div><div>[1]=C2=A0<a hre=
f=3D"https://github.com/giraldeau/linux/tree/linux-4.4.y-rt-rebase-rpi">htt=
ps://github.com/giraldeau/linux/tree/linux-4.4.y-rt-rebase-rpi</a></div><di=
v>[2]=C2=A0<a href=3D"https://github.com/giraldeau/meta-raspberrypi/commit/=
56168d6b320c1b724d04b1e7f365255ffdb62e70">https://github.com/giraldeau/meta=
-raspberrypi/commit/56168d6b320c1b724d04b1e7f365255ffdb62e70</a></div><div>=
<br></div></div>

--94eb2c0356a03e37950530899031--
