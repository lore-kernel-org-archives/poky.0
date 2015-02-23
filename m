Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 040C4E00871; Mon, 23 Feb 2015 05:46:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B13BE006B5
	for <poky@yoctoproject.org>; Mon, 23 Feb 2015 05:46:14 -0800 (PST)
Received: by mail-qg0-f49.google.com with SMTP id q107so24242908qgd.8
	for <poky@yoctoproject.org>; Mon, 23 Feb 2015 05:46:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mf0Q5XD9L0SQ0mfY2KPc0H6Ta6rOEWLxyur22C/Podc=;
	b=bUCjkmM/a4f47cXB+AdcwclKJNG457YiV6wQTB5R/b0aZvQKmYeW4mreBHiwY5RMg/
	QkC40EPCjaNXLYGIOIJ+lnWZd8rcnCMs4XKrCUhELoneMci1/AgTOidUEhaIFu/yTpsm
	7SRjeza5iVx8WchSfAigHWZ1BcQXEFeJO5XvOO9yqW1T2dNB/YIlfPO5w/ap51T5PWh1
	E8Chcv0OW9BpgqDWgUhDw3ZYzJi3oEUrmLsatD+idgq9x8kPbaJMwpTz01GmC+rjvlHa
	pfCF/QE6djKH+OwtmZoFbigv3kePP+IRRw2t7UClq1rRtmY8UYcZT1gV8TaVeRM6mIRv
	EZiQ==
X-Gm-Message-State: ALoCoQkXleRUdWCxJGvTsBHGS1UgSrOpbIDacga1c8JlGJgbcULw8J67loACHvwS0rDX0YJTmJzS
X-Received: by 10.140.29.138 with SMTP id b10mr24157681qgb.78.1424699173641;
	Mon, 23 Feb 2015 05:46:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.102.203 with HTTP; Mon, 23 Feb 2015 05:45:52 -0800 (PST)
In-Reply-To: <CF59A3B2-C7DB-46CA-BC6C-C552A43296FD@jtang.org>
References: <CF59A3B2-C7DB-46CA-BC6C-C552A43296FD@jtang.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Feb 2015 13:45:52 +0000
Message-ID: <CAJTo0LYyLC=yo9633hedUPbDZPkUjNdgfP=osQpmDnws1334SA@mail.gmail.com>
To: "J. Tang" <tang@jtang.org>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] base-files: Let user set hostname
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
X-List-Received-Date: Mon, 23 Feb 2015 13:46:15 -0000
Content-Type: multipart/alternative; boundary=001a113a75a22839e5050fc1a0ff

--001a113a75a22839e5050fc1a0ff
Content-Type: text/plain; charset=UTF-8

On 22 February 2015 at 01:58, J. Tang <tang@jtang.org> wrote:

> +       if [ -n "${MACHINE_HOSTNAME}" ]; then
> +               echo "${MACHINE_HOSTNAME}" > ${D}${sysconfdir}/hostname
> +       fi
>

This patch appears every year or so.  A user can set the hostname already
by using the standard syntax to override a variable:

hostname_pn-base-files = "cuteembeddedhack"

I'll send a patch to add this to the documentation and base-files recipe...

Ross

--001a113a75a22839e5050fc1a0ff
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 2=
2 February 2015 at 01:58, J. Tang <span dir=3D"ltr">&lt;<a href=3D"mailto:t=
ang@jtang.org" target=3D"_blank">tang@jtang.org</a>&gt;</span> wrote:<br><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;pad=
ding-left:1ex"><div style=3D"overflow:hidden">+=C2=A0 =C2=A0 =C2=A0 =C2=A0i=
f [ -n &quot;${MACHINE_HOSTNAME}&quot; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;${MACHIN=
E_HOSTNAME}&quot; &gt; ${D}${sysconfdir}/hostname<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0fi</div></blockquote></div><br>This patch appea=
rs every year or so.=C2=A0 A user can set the hostname already by using the=
 standard syntax to override a variable:</div><div class=3D"gmail_extra"><b=
r></div><div class=3D"gmail_extra"><span style=3D"font-size:12.800000190734=
9px">hostname_pn-</span><span class=3D"" style=3D"font-size:12.800000190734=
9px;background-color:rgb(255,255,255)">base</span><span style=3D"font-size:=
12.8000001907349px">-</span><span class=3D"" style=3D"font-size:12.80000019=
07349px;background-color:rgb(255,255,255)">files</span><span style=3D"font-=
size:12.8000001907349px">=C2=A0=3D &quot;cuteembeddedhack&quot;</span><br s=
tyle=3D"font-size:12.8000001907349px"></div><div class=3D"gmail_extra"><spa=
n style=3D"font-size:12.8000001907349px"><br></span></div><div class=3D"gma=
il_extra"><span style=3D"font-size:12.8000001907349px">I&#39;ll send a patc=
h to add this to the documentation and base-files recipe...</span></div><di=
v class=3D"gmail_extra"><span style=3D"font-size:12.8000001907349px"><br></=
span></div><div class=3D"gmail_extra"><span style=3D"font-size:12.800000190=
7349px">Ross</span></div></div>

--001a113a75a22839e5050fc1a0ff--
