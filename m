Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6812E00769; Mon, 16 Feb 2015 07:57:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HK_RANDOM_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	*  1.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (priyaiitmandi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A84EE00754;
	Mon, 16 Feb 2015 07:57:40 -0800 (PST)
Received: by mail-ig0-f182.google.com with SMTP id h15so24336496igd.3;
	Mon, 16 Feb 2015 07:57:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=FfSzl4muy1aPiDPHWvnmfxvtYrEmOyq+h1L03SuUxL4=;
	b=rKWi7guiby3d34ULfAarhVoZFecKSzFnx7c0mr0MvTHbjHNPXsZhFiUTbkfdsFYSAq
	bXytWp16lZFU1H7TmveGlGKDWc1ZULLHnA019Sevq1dbrXTvuK7UqolhyCNlPs8aHcxB
	1tjPuIp/YVtaAd9WwfF0A3yKd69G5gVl4Gtb+iHMCoqKzfBRb4cUtawxemYdki5izi3k
	t2oIfGpaqhxohpWrDILKCGqo8jh9twBGpfkr87XC9PE6y63PBT3CT87dxkDVzcGOHkLD
	sL28/muWFKze1OSdp/2KvYv/Lx39mq5aKBbm6BR20tZrJAnIaIGtncgGVzV0k0mz8yj/
	TVyw==
MIME-Version: 1.0
X-Received: by 10.43.74.201 with SMTP id yx9mr29717037icb.96.1424102259553;
	Mon, 16 Feb 2015 07:57:39 -0800 (PST)
Received: by 10.107.134.207 with HTTP; Mon, 16 Feb 2015 07:57:39 -0800 (PST)
In-Reply-To: <CAP9ODKr3=Kv7_Gertf4SyHa4ZNB3NniJExdpF4=6w=58zz_Ndg@mail.gmail.com>
References: <CALTPfpHDYT3_O6TDCtmZCH432h9-xaX6fhm4W0mEgErshNqCuA@mail.gmail.com>
	<CAP9ODKpsd-dpQa-q6GZANbJc9cw12ZQivCR1VQvBfqqd2aW89A@mail.gmail.com>
	<CALTPfpESr6dqq4GHZ7+RzPn28cwgE7RXT43RgcmxcM0QO49t5Q@mail.gmail.com>
	<CAP9ODKr3=Kv7_Gertf4SyHa4ZNB3NniJExdpF4=6w=58zz_Ndg@mail.gmail.com>
Date: Mon, 16 Feb 2015 21:27:39 +0530
Message-ID: <CALTPfpE+TQrK2pKDMGU9D+Jee1G=VqtOG3JwGyWK9vHe1bVU4Q@mail.gmail.com>
From: Priya Agarwal <priyaiitmandi@gmail.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: [meta-freescale] How to remove: WARNING: No bb files matched BBFILE_PATTERN_mylayer '^/media/NewVolume/yocto/meta-mylayer/'
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
X-List-Received-Date: Mon, 16 Feb 2015 15:57:43 -0000
Content-Type: multipart/alternative; boundary=001a11c396ce4dfca0050f36a511

--001a11c396ce4dfca0050f36a511
Content-Type: text/plain; charset=UTF-8

No Problem. Thank You.



On Mon, Feb 16, 2015 at 9:18 PM, Otavio Salvador <otavio@ossystems.com.br>
wrote:

> On Mon, Feb 16, 2015 at 1:31 PM, Priya Agarwal <priyaiitmandi@gmail.com>
> wrote:
> > I wanted to ask one thing. What do I write in LICENSE AND
> LIC_FILES_CHKSUM
> > for my c++ file. Its not some source code I took online which has a
> license
> > or corresponding COPYING/README etc. files.
>
> This is very off-topic on this forum.
>
> In any case the LICENSE depends a lot on what you/company/customer wish to
> do.
>
> Take a look on the official documentation:
>
> http://www.yoctoproject.org/docs/1.7.1/ref-manual/ref-manual.html#licenses
>
> This should give some guidance.
>
> --
> Otavio Salvador                             O.S. Systems
> http://www.ossystems.com.br        http://code.ossystems.com.br
> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750
>

--001a11c396ce4dfca0050f36a511
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No Problem. Thank You.<br><br><br></div><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">On Mon, Feb 16, 2015 at 9:18 PM, Ot=
avio Salvador <span dir=3D"ltr">&lt;<a href=3D"mailto:otavio@ossystems.com.=
br" target=3D"_blank">otavio@ossystems.com.br</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><span class=3D"">On Mon, Feb 16, 2015 at 1:31 PM=
, Priya Agarwal &lt;<a href=3D"mailto:priyaiitmandi@gmail.com">priyaiitmand=
i@gmail.com</a>&gt; wrote:<br>
&gt; I wanted to ask one thing. What do I write in LICENSE AND LIC_FILES_CH=
KSUM<br>
&gt; for my c++ file. Its not some source code I took online which has a li=
cense<br>
&gt; or corresponding COPYING/README etc. files.<br>
<br>
</span>This is very off-topic on this forum.<br>
<br>
In any case the LICENSE depends a lot on what you/company/customer wish to =
do.<br>
<br>
Take a look on the official documentation:<br>
<br>
<a href=3D"http://www.yoctoproject.org/docs/1.7.1/ref-manual/ref-manual.htm=
l#licenses" target=3D"_blank">http://www.yoctoproject.org/docs/1.7.1/ref-ma=
nual/ref-manual.html#licenses</a><br>
<br>
This should give some guidance.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
--<br>
Otavio Salvador=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0O.S. Systems<br>
<a href=3D"http://www.ossystems.com.br" target=3D"_blank">http://www.ossyst=
ems.com.br</a>=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"http://code.ossystems.=
com.br" target=3D"_blank">http://code.ossystems.com.br</a><br>
Mobile: +55 (53) 9981-7854=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Mobile:=
 +1 (347) 903-9750<br>
</div></div></blockquote></div><br></div>

--001a11c396ce4dfca0050f36a511--
