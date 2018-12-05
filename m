Return-Path: <maxime.roussinbelanger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCFB8E00C75; Wed,  5 Dec 2018 06:20:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maxime.roussinbelanger[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E3EFE00C5F
	for <poky@yoctoproject.org>; Wed,  5 Dec 2018 06:20:27 -0800 (PST)
Received: by mail-it1-f170.google.com with SMTP id b5so20402378iti.2
	for <poky@yoctoproject.org>; Wed, 05 Dec 2018 06:20:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=C8Rs0g1i0FaIvcAoWDFOIJK2s6cwqyRkbaZbZLuu20s=;
	b=CbYs9O1TU642KBh89O9prLUES4/mKizTRCgDhYcO+9qEhja0Ix/eOyh8eOCp05qnMx
	YYKks5Nvp9E0TG/pWrmt/TbFiSI7MYYgC/Rf8JRI9rwJPTkG2zeatRIPW7fO2PO90daD
	sLKjxH5Kd2jBMe0RPOekK0jBin0xihUwYmaTFnXVa+i6zMKPa7mC7ghAh0rWDyyxT6vf
	pFXmnVPZa6f1/mipt4ftP56MMuzXavFyMpJFgRt1zqVUQIJIq+SxTafZNF0oVeXlwlnj
	1DsDm9A1UsfxOBt0LtSqwFVLxE+WGEO7kVaI0tCOXm3AOQeSFKOcOg0mafnB0Ct1TNsc
	VNTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=C8Rs0g1i0FaIvcAoWDFOIJK2s6cwqyRkbaZbZLuu20s=;
	b=Cw/7GvOLcJyO0/k0hkFF4M6pv4Wm6/FTHU4zlUSWpASkePqOSy01ooEQx8FKXQLCov
	TXVUUxbsiwFgIkiHSogsS/Sgt+LTggXlttCVOrlyhxWGUEntJ3zTWRvWb/fjA0jUuWsd
	Y2CpxKMjjFHe1xybTCkuvC7u1QXXQAZJbBWjlH6MomKlvwEphDqzWG3moXRBMJCPnI+8
	0JMgbLYM78FYp522RK6gqRKtBfzSvGI0biX7E3ZQu1rPTWeEABLf+CELDIf3UwWIe91b
	eRmrAa+bLYN6BErpkgNqJl7yyWaG7SEKyj5oPId1HB5KSVyzC4MPlHIUWQm7fO6lYZcY
	iAvg==
X-Gm-Message-State: AA+aEWbOqDGsSKxEv9wntgTjW0akBEGUi+51XTUBsU0Ahwc72glAmBH3
	IjT4F2mcJnmi4UAdIwI5+AYDwoML7hh9f/UzXqI=
X-Google-Smtp-Source: AFSGD/U8JNOMI+2bcFJ1UyOkm1YZWCQTtTKSwlSzYpmHmyDhSlRYVjGAQ6muwFGBVfjHmWMdxkjKnhi22yMLvLAmrfs=
X-Received: by 2002:a24:4a95:: with SMTP id k143mr15181171itb.77.1544019626775;
	Wed, 05 Dec 2018 06:20:26 -0800 (PST)
MIME-Version: 1.0
References: <cover.1543535225.git.roussinm@sonatest.com>
	<9d5112ef83d85dd155d5972241280ac31ba7ea71.1543535225.git.roussinm@sonatest.com>
	<CAJTo0LZRa_b0DbGVpuUa_Uksjho877bqjyAAYuOhD9_zRtPLKg@mail.gmail.com>
	<CAE=T-s7YKSYr77eiFQQ1cCTTjH5dEy=sm=BNuQ=PXSBra8AJBw@mail.gmail.com>
	<CAJTo0LaeGSjdvN=J-pQ_3JGuH-hjpaAtvMiEzvf3j8DkvMakuA@mail.gmail.com>
	<CAE=T-s77MdMm+A7eSdCi0+shSOyW6WO1fPwMzds2f9=zX9ZH2g@mail.gmail.com>
	<CAFNP8OsG7hD2EK7uWv+b4ciyCZJiNjXYb9tEDTwa6QOgvLffQA@mail.gmail.com>
In-Reply-To: <CAFNP8OsG7hD2EK7uWv+b4ciyCZJiNjXYb9tEDTwa6QOgvLffQA@mail.gmail.com>
From: =?UTF-8?Q?Maxime_Roussin=2DB=C3=A9langer?=
	<maxime.roussinbelanger@gmail.com>
Date: Wed, 5 Dec 2018 09:20:10 -0500
Message-ID: <CAE=T-s5jw09=rn=Ut9kX+9np7m3Ym=w-FWYFPtBbJZnxTsHtqg@mail.gmail.com>
To: ross.burton@intel.com
Cc: poky@yoctoproject.org
Subject: Re: [PULL][PATCH 1/1] cmake: remove version in directory structure
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
X-List-Received-Date: Wed, 05 Dec 2018 14:20:29 -0000
Content-Type: multipart/alternative; boundary="000000000000615d1e057c4715dc"

--000000000000615d1e057c4715dc
Content-Type: text/plain; charset="UTF-8"

On Fri, Nov 30, 2018 at 10:56 AM Scott Rifenbark <srifenbark@gmail.com>
wrote:
>
> Ross,
>
> Do these changes impact
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12760 at all?  I was
looking into that bug regarding potential doc changes.
>
> Scott
>

Should I send a v2 with a better commit description? Or you want to
verify that Bugzilla ticket with Scott first?

I have an additional change to add.

--000000000000615d1e057c4715dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>On Fri, Nov 30, 2018 at 10:56 AM Scott Rifenbark=
 &lt;<a href=3D"mailto:srifenbark@gmail.com">srifenbark@gmail.com</a>&gt; w=
rote:<br>&gt;<br>&gt; Ross,<br>&gt;<br>&gt; Do these changes impact <a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12760">https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D12760</a> at all?=C2=A0 I was looki=
ng into that bug regarding potential doc changes.<br>&gt;<br>&gt; Scott<br>=
&gt;<br><br></div></div><div>Should I send a v2 with a better commit descri=
ption? Or you want to<div>verify that Bugzilla=C2=A0ticket with Scott first=
?<br><div><br></div><div>I have an additional change=C2=A0to add.</div></di=
v></div></div>

--000000000000615d1e057c4715dc--
