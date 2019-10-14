Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3FA5DE00D35; Mon, 14 Oct 2019 09:26:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.170 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com
	[209.85.221.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906CCE00C9B
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 09:25:37 -0700 (PDT)
Received: by mail-vk1-f170.google.com with SMTP id s21so3669611vkm.0
	for <poky@yoctoproject.org>; Mon, 14 Oct 2019 09:25:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=umWElJp37rsN6EQxMeTX6LoFQxxTOC21Lt0ihEPynbo=;
	b=WcNX3V66z/ajZ6l50ltLSDXxm/7LVqOVgp+vNURG+9/+cW1Kj3xMplZNiqaKHhl28D
	EZsLxaMmAbfd1lrRwapm27CuWadLzmK4S1G5fiZLFBjjPshJFpN67XACBs0hBQrWYd0X
	O3U5WJa3odwqsQIqomtRFgeheyPq68qx5xAYycqhLntq7MGEf2F286dRj6MQygwBpvHh
	qnlCnOpCL8Soo8PR/lhUn0krmzsoHjzyLOk9W9ZIIEkjIiDD/hz1s9vg0xHX2Pn2OOmR
	ODiEWU3z0Py9HyHMqMKYRNUM7GNoLKYJCYZeRFUK0xF56tRJ/nTkbjexeddeguTmfWxs
	+5UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=umWElJp37rsN6EQxMeTX6LoFQxxTOC21Lt0ihEPynbo=;
	b=mcCFs5+tnB5dM4G97N2q1YWBa3zkdfeJO8Bu17fopKcr8HXTJUcal4cxq1Un7fqqII
	PScBYaP9z8GOouykVUco5Fipj1Mp6FQ/jtAPrlSfI9pppqkOZalpV1ED4hNEzZu7kvSu
	qxAmYd7Nsg+RiR6t9pBeOoRJghpqsmr+G8WsJf0psEsMlk3PHlGO729BtCxiFLj33VL2
	ezsfXAMAGKHVA/zQB6wUrb0Kh8qNodujKUF9JCE5xQFWfetiuEu5ynTwYOvD2DJi1SGP
	kK0Nf9/1DLpjg0z39K3M2Y2o1juOJhhfUQrA93DUaXIj94LsUcQ+ugvbNPrJU6OaBd5Z
	1Ajg==
X-Gm-Message-State: APjAAAX5sLOfHAIVOcpMIFUk30bJUPtotJiFwSOtc0bgzJdo5s7SWHgh
	rHdryB6IK0gaPZnKY8AdJ+cgVBlOFViKaGfi0PM=
X-Google-Smtp-Source: APXvYqyexzUfPkII3hqg6MJfBBu2djOgs28nv9PDdiq/s3Nfw3BV7EwjEjpVLpKPAr2O6ZGsH/EbatKIvjZ11l5RCxc=
X-Received: by 2002:a05:6122:11b6:: with SMTP id
	y22mr9374523vkn.1.1571070336253; 
	Mon, 14 Oct 2019 09:25:36 -0700 (PDT)
MIME-Version: 1.0
References: <CAOe0dAW_-NRUPdVk-1Fb4v3PQpA3h0um-CwvjD2pkskQfd4G+w@mail.gmail.com>
	<CAOe0dAUCXc0zF---SitaCZkVr3i=mc6YZUWuT8tL0UdYopKy-A@mail.gmail.com>
	<CAOe0dAWMfbuS9=E2Vx5zrd+KuAs1-Wm7n3EWykC0ETjeFyT9dQ@mail.gmail.com>
	<CAOe0dAVhYOMbonHS_TMPAh3WtSXGvNaRjECU1faMm8N4gFbmNw@mail.gmail.com>
	<fb55cc695965290bf6767a8ab0aeb0a2aee396f0.camel@linuxfoundation.org>
	<CAOe0dAX_G6aV3=Mn9+KeMDTfXqogLj7R16pkmy7Bfhvh7KuFzg@mail.gmail.com>
	<eb81f66bdaa3604bb555d0416ae83b8df61d0f13.camel@linuxfoundation.org>
	<CAMKF1sqgLZ3Rfyiy1Qsv=Y1xEt7m4eKX4Brk8v_7AGET9Hv9zQ@mail.gmail.com>
	<CAOe0dAV0ou+XC7tNMf1Ufngp_5BeOy24OVcUa8_UG-dVCG5kjg@mail.gmail.com>
In-Reply-To: <CAOe0dAV0ou+XC7tNMf1Ufngp_5BeOy24OVcUa8_UG-dVCG5kjg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 14 Oct 2019 18:25:24 +0200
Message-ID: <CANNYZj87+UE1AOm=7u5EsnYwMp8JtJPLSo45J21w7XkJtKycgg@mail.gmail.com>
To: AshishKumar Mishra <ashish.emailaddress@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky build failure with "Could not invoke dnf" error message.
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
X-List-Received-Date: Mon, 14 Oct 2019 16:26:08 -0000
Content-Type: multipart/alternative; boundary="0000000000004f425a0594e151d8"

--0000000000004f425a0594e151d8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 14 Oct 2019 at 18:01, AshishKumar Mishra <
ashish.emailaddress@gmail.com> wrote:

>
> Would it be possible to share any link / pointers to help me understand
> the
> "packaging " aspect of recipe
>
> *Predominantly , how are the package being created from the files being
> copied to {D)<some-folder>*
> *and what are the essential rules i need to know .*
> (Like ALLOW_EMPTY_${PN} =3D =E2=80=9C1=E2=80=9D we are informing that the=
 package can be
> empty )
>
> But i am not able to understand :-
> a) Who & how are packages being created from files copied in
> {D)<some-folder>
> b) What are the rules (Like ALLOW_EMPTY_${PN} =3D =E2=80=9C1 ) for empty =
package ?
> c) When would we get an empty package.
>

I think you could start here, an overview of everything that happens when
you bitbake a recipe, and particularly where things are written and what
bitbake variables are involved:

https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#bitba=
ke-dev-environment

Alex

--0000000000004f425a0594e151d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 14 Oct 2019 at 18:01, AshishKumar=
 Mishra &lt;<a href=3D"mailto:ashish.emailaddress@gmail.com">ashish.emailad=
dress@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><br><div>Would i=
t be possible to share any link / pointers to help me understand the <br></=
div><div>&quot;packaging &quot; aspect of recipe <br></div><br><div><u><b>P=
redominantly , how are the package being created from the files being copie=
d to {D)&lt;some-folder&gt;</b></u></div><div><u><b>and what are the essent=
ial rules i need to know .</b></u></div><div>(Like ALLOW_EMPTY_${PN} =3D =
=E2=80=9C1=E2=80=9D we are informing that the package can be empty ) </div>=
<div><br></div><div>But i am not able to understand :-</div><div>a) Who &am=
p; how are packages being created from files copied in {D)&lt;some-folder&g=
t;</div><div>b) What are the rules (Like ALLOW_EMPTY_${PN} =3D =E2=80=9C1 )=
 for empty package ?</div><div>c) When would we get an empty package. </div=
></div></blockquote><div><br></div><div>I think you could start here, an ov=
erview of everything that happens when you bitbake a recipe, and particular=
ly where things are written and what bitbake variables are involved:</div><=
div><br></div><div><a href=3D"https://www.yoctoproject.org/docs/latest/mega=
-manual/mega-manual.html#bitbake-dev-environment">https://www.yoctoproject.=
org/docs/latest/mega-manual/mega-manual.html#bitbake-dev-environment</a></d=
iv><div><br></div><div>Alex<br></div><div><br></div><div><br> </div></div><=
/div>

--0000000000004f425a0594e151d8--
