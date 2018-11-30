Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F9BAE00C72; Fri, 30 Nov 2018 07:56:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.51 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
	[209.85.208.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 142A3E00C49
	for <poky@yoctoproject.org>; Fri, 30 Nov 2018 07:56:29 -0800 (PST)
Received: by mail-ed1-f51.google.com with SMTP id y56so5214012edd.11
	for <poky@yoctoproject.org>; Fri, 30 Nov 2018 07:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yidzYU7G+s185wLhHY9ZLb91jCoJCosEsrRf/wDGol4=;
	b=o1G7DPbz4GQuf+olShH8J+e/IIzLzk4X1ntcGcUw04XsgjMQC4z4r8kt/eexHF47Ki
	biJfPthPUdJNLhjMM5YqZS10iqaNX8eLiW0FEUZ7c3jp3fBzNDOe6dSvVgJmGhtFfzJp
	86zGi+GMLTOQoGdNdxjD2qB+QE4r3DCYBACPbtFhNRQ5izy3Aiy+EzuLLCUvZrzfAaro
	Yf7AVv4JswsTJDvYeL83Q0VMtx+87r1F2YypbfpN38ptwYTRDIxG00t34CC22CUCvolA
	0KjfU6xFbkjySl3dcnPw3CZ7CDqQZP4CcNy4zku1BzNRgsbOkCScs2dezfAcMUZ3vo0g
	u91A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yidzYU7G+s185wLhHY9ZLb91jCoJCosEsrRf/wDGol4=;
	b=eNr02AnY3rq62a4Y8KMa1cY4vde20Gn/MlQtrm7DNZLedBBVEPhm19k4ZhJY8q4HP+
	7FNzbB7HlVjPp2C8eyihTjr0cbtY8boOrcrH1OMKPrO2jI9Gs6lUC8gX3/hVt+4hUSOo
	tJY3SJcQdPa9nUkUkEX/ReaJ1ellkXS9xtgOstKiFHfoyfwzrb7TfJ3IlgGzMT2BzcVC
	Q3XWgonB6FY+OIFtGK4kry08xZITBMGdYtGBraDiNfSNqSRPsgRsQ1TpTsnnzOYkxOSM
	13IE1Pq/xBWfgc+SRffy7LEo4+ye3qhlT892n+0opQUVHhy6fv2x7KhSpVeIDwn9ExKH
	KiWA==
X-Gm-Message-State: AA+aEWZqq/ohYMy2POwFCXC9PIJRLd4TJHi+DiK1VeVUh8Hzj8lh4v6z
	2vc/KGtJWhtLgLxEGgFKXDbbHVYSwSNgjnX3LSk=
X-Google-Smtp-Source: AFSGD/XYGNtY63z5Wnj2oOuEZr2ofm4v9vpkk32JCYrK6iUzJO5ni9RaLhwEkNXltC8kyV/D8mMW2kQb4ttHqbGIU9U=
X-Received: by 2002:a17:906:f84:: with SMTP id
	q4-v6mr5193652ejj.52.1543593389049; 
	Fri, 30 Nov 2018 07:56:29 -0800 (PST)
MIME-Version: 1.0
References: <cover.1543535225.git.roussinm@sonatest.com>
	<9d5112ef83d85dd155d5972241280ac31ba7ea71.1543535225.git.roussinm@sonatest.com>
	<CAJTo0LZRa_b0DbGVpuUa_Uksjho877bqjyAAYuOhD9_zRtPLKg@mail.gmail.com>
	<CAE=T-s7YKSYr77eiFQQ1cCTTjH5dEy=sm=BNuQ=PXSBra8AJBw@mail.gmail.com>
	<CAJTo0LaeGSjdvN=J-pQ_3JGuH-hjpaAtvMiEzvf3j8DkvMakuA@mail.gmail.com>
	<CAE=T-s77MdMm+A7eSdCi0+shSOyW6WO1fPwMzds2f9=zX9ZH2g@mail.gmail.com>
In-Reply-To: <CAE=T-s77MdMm+A7eSdCi0+shSOyW6WO1fPwMzds2f9=zX9ZH2g@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Fri, 30 Nov 2018 07:56:16 -0800
Message-ID: <CAFNP8OsG7hD2EK7uWv+b4ciyCZJiNjXYb9tEDTwa6QOgvLffQA@mail.gmail.com>
To: maxime.roussinbelanger@gmail.com
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
X-List-Received-Date: Fri, 30 Nov 2018 15:56:31 -0000
Content-Type: multipart/alternative; boundary="000000000000a1ce9e057be3d7d5"

--000000000000a1ce9e057be3d7d5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ross,

Do these changes impact
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12760 at all?  I was
looking into that bug regarding potential doc changes.

Scott

On Fri, Nov 30, 2018 at 7:49 AM Maxime Roussin-B=C3=A9langer <
maxime.roussinbelanger@gmail.com> wrote:

>
>
> On Fri, Nov 30, 2018 at 5:29 AM Burton, Ross <ross.burton@intel.com>
> wrote:
> >
> > On Fri, 30 Nov 2018 at 01:30, Maxime Roussin-B=C3=A9langer
> > <maxime.roussinbelanger@gmail.com> wrote:
> >
> > The context is useful, thanks.  Note that Debian does exactly the
> > same: cmake installs to /usr/lib/cmake-[version] and eigen installs to
> > /usr/lib/cmake/, and that works.  Is this a problem in general builds
> > or just the SDK?  Possibly our toolchain file is breaking the usual
> > lookup.
>
> Yes it works (in general builds) because inside cmake.bbclass there is
> that line
>
> `list(APPEND CMAKE_MODULE_PATH "${STAGING_DATADIR}/cmake/Modules/")`
>
> But when you are using the SDK that path is not added. That means that al=
l
> library that
> are installed inside that directory can't be found.
>
> >
> > Ross
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

--000000000000a1ce9e057be3d7d5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Ross, <br></div><div><br></div><div>=
Do these changes impact <a href=3D"https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D12760">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1276=
0</a> at all?=C2=A0 I was looking into that bug regarding potential doc cha=
nges.</div><div><br></div><div>Scott<br></div></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Fri, Nov 30, 2018 at 7:49 AM Maxime Rouss=
in-B=C3=A9langer &lt;<a href=3D"mailto:maxime.roussinbelanger@gmail.com">ma=
xime.roussinbelanger@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br><br>On Fri, Nov 30, 2018 a=
t 5:29 AM Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=
=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br>&gt;<br>&gt; On Fri, 30=
 Nov 2018 at 01:30, Maxime Roussin-B=C3=A9langer<br>&gt; &lt;<a href=3D"mai=
lto:maxime.roussinbelanger@gmail.com" target=3D"_blank">maxime.roussinbelan=
ger@gmail.com</a>&gt; wrote:<br>&gt;<br>&gt; The context is useful, thanks.=
=C2=A0 Note that Debian does exactly the<br>&gt; same: cmake installs to /u=
sr/lib/cmake-[version] and eigen installs to<br>&gt; /usr/lib/cmake/, and t=
hat works.=C2=A0 Is this a problem in general builds<br>&gt; or just the SD=
K?=C2=A0 Possibly our toolchain file is breaking the usual<br>&gt; lookup.<=
div><br></div><div>Yes it works (in general builds) because inside cmake.bb=
class=C2=A0there is that line</div><div><br></div><div>`list(APPEND CMAKE_M=
ODULE_PATH &quot;${STAGING_DATADIR}/cmake/Modules/&quot;)`</div><div><br></=
div><div>But when you are using the SDK that path is not added. That means =
that all library that</div><div>are installed inside that directory can&#39=
;t be found.</div><div><br></div><div>&gt;<br>&gt; Ross</div></div></div>
-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>

--000000000000a1ce9e057be3d7d5--
