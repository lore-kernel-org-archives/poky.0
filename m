Return-Path: <nitishjha16@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAB75E009AA; Sun, 26 Mar 2017 10:01:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nitishjha16[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DE85E00985
	for <poky@yoctoproject.org>; Sun, 26 Mar 2017 10:01:30 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id w124so50662442itb.1
	for <poky@yoctoproject.org>; Sun, 26 Mar 2017 10:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=0WKjtXj91e25LDtb4koM20eqBUEuGOEleyIC5zqjtqg=;
	b=hxlljS6aOnLHOJcjU9y4X++uIeUEeRaPb0hLg5E/FNCGnzhNo0Y/ht8oKIPlavzGgL
	KUrhIpjvZAFvBAcr82p93TtxKlBeLDVYEmzABrUtU9dxK5aEaOZfyFjpLMiqKQDe+9oO
	vNXUkOUw60W4OOsMdh6j32p9hrBucZ9/4h+wvtuMQJHuOYIyeKKCC6AclqZiH26Yd+Ic
	xBS7e/RDhriC6CZEHQU82KhHqFHtZCEAsLVwzO6k7dQB9YcJpuJWWwEHc1E/zMEE5Nsr
	n2qP1xVT1cs18ttm4ONIO5UDO7TRZTtyEEjw4exz5vO4/p63GShHIvCuHih+qDDDXtQ9
	qr+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=0WKjtXj91e25LDtb4koM20eqBUEuGOEleyIC5zqjtqg=;
	b=PXl1ZCs0AR4m1VjhwIbv+lneiyNVUW/Ar6V7xYT7PgBvmDOghqnmYm2ZEGuDEpeYdN
	TpBS6c+F9rokm1Z2hIpZad2YNIf4Wjujle4kMfL9/7VTAAPHTtYtVPzCYzy6I5NNVF78
	OnCUjkImxflgmZTXT70mng47JdyB9YZAnXiVkpnVvWxakuSzTYpHGKAfKO0+lPndwFoS
	vyQEzALAsBT+1m0v6nRA81kpTlp53sbS+jUDPcXMT5vNCQDAZqdkJ3wHVl0wK9PojXYT
	RfCdAl7X8xVYOFSkTlZimYmH5lrMG2iHvVDcS5qliT/pFDTvIcSk5X1fw0ae1Eq5YE+2
	r+hQ==
X-Gm-Message-State: AFeK/H3FWbukCJk5oroVHabNBfMiFNP9RPHSIte5y0DJyp1xuag2lL00razTXp11K41zSEBUdc8jagoFUz0KOA==
X-Received: by 10.36.71.18 with SMTP id t18mr6033346itb.104.1490547690117;
	Sun, 26 Mar 2017 10:01:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.139.138 with HTTP; Sun, 26 Mar 2017 10:01:29 -0700 (PDT)
In-Reply-To: <1490114891.3261.177.camel@linux.intel.com>
References: <CABh+fobNXQK8NrDzwKRaOs4rWixEUJA3Bi6QL=we+XS6AsUjhA@mail.gmail.com>
	<1490114891.3261.177.camel@linux.intel.com>
From: nitish jha <nitishjha16@gmail.com>
Date: Sun, 26 Mar 2017 19:01:29 +0200
Message-ID: <CABh+foaucetHXz5T5_sQgVseeokRW2qrN-LPwDWoMptqJ-=aWw@mail.gmail.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [extendable-sdk] patch to fix devtool error
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
X-List-Received-Date: Sun, 26 Mar 2017 17:01:37 -0000
Content-Type: multipart/alternative; boundary=001a113f72a49732c8054ba52da4

--001a113f72a49732c8054ba52da4
Content-Type: text/plain; charset=UTF-8

Hello Leonardo,

I am working on Krogoth master branch, but I have also checked Jethro and
Morty master branch. This Issue persist in those branches too.

Issue detail: I have created a custom layer and I successfully built my
custom image.

command used : bitbake <image_name>
after that I wanted to create extendable_sdk
command used : bitbake <image_name> -c populate_sdk_ext

error description is in above mail, reason I found is, in devtool.py lib
path there is no recipeutils.py. This file is in meta/lib/oe folder
So I added this path in lib path of devtool, which solves the issue and
extendable_sdk created successfully.

I am very new to the process of up-streaming patch to yocto.

So, I would like to get a help on this from somebody to try this and update
the devtool.py in yocto package.

Thanks and Regards

Ntiish Jha

--001a113f72a49732c8054ba52da4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>Hel=
lo Leonardo,<br><br></div>I am working on Krogoth master branch, but I have=
 also checked Jethro and Morty master branch. This Issue persist in those b=
ranches too.<br><br></div>Issue detail: I have created a custom layer and I=
 successfully built my custom image. <br><br></div>command used : bitbake &=
lt;image_name&gt;<br></div>after that I wanted to create extendable_sdk<br>=
</div>command used : bitbake &lt;image_name&gt; -c populate_sdk_ext<br><br>=
</div>error description is in above mail, reason I found is, in devtool.py =
lib path there is no recipeutils.py. This file is in meta/lib/oe folder<br>=
</div>So I added this path in lib path of devtool, which solves the issue a=
nd extendable_sdk created successfully.<br><br></div>I am very new to the p=
rocess of up-streaming patch to yocto.<br><br></div>So, I would like to get=
 a help on this from somebody to try this and update the devtool.py in yoct=
o package.<br><br></div>Thanks and Regards<br><br></div>Ntiish Jha<br></div=
>

--001a113f72a49732c8054ba52da4--
