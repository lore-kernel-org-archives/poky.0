Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFC99E00EDC; Thu, 21 Jun 2018 04:34:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f178.google.com (mail-wr0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C8FE00A6A
	for <poky@yoctoproject.org>; Thu, 21 Jun 2018 04:34:07 -0700 (PDT)
Received: by mail-wr0-f178.google.com with SMTP id a12-v6so2845688wro.1
	for <poky@yoctoproject.org>; Thu, 21 Jun 2018 04:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ndQwQ8b7F3CFB2iYqY/mth664lLgebVdb7Qv95x2FNs=;
	b=cwLjvR3AfZZquvtj15Gf9IIxJUOMrK6YUB3egTLm72YYebs4mQDti8CGxF/YIienmH
	TyNp4qoQRUCtmn7PKU1bdk2F75JTRWLBytW9V2cCd81LAcdPYdwEuf1tDCcNr42XLwJa
	y839pwrh4FEu3aaf3Pp7wiHELeAABna+y7QjVFSCfu4iaUHVjISIDJdBMCPOudq5Dwwn
	G/XJoeiOoBTySLlBciHE/vjqYFv8sdZbGAADCcgLsfzqnjHSqVfwqlsVq27R5cvQCY/n
	Go8Jkhd2nD68Pakknj+v4ho/UJ0/a49IhZM6fVhWayD2OzFZwgLr2FoV1z8bofjORxy3
	m1Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ndQwQ8b7F3CFB2iYqY/mth664lLgebVdb7Qv95x2FNs=;
	b=FHr6CGWek7UJXPnO43Du/jSoNte5+Z2JinTifE8GUdOmzYp8syy+weq9SJLsPOefJ2
	rYx+D8OPbNKIbyoM0/v9kSfHZ9j6BORiNjLxzlBq3sB2vFfuPAe7jwy+2IM8pe7ckwg4
	DwQ3edLPIThO/bq4/fptZJGFMCj0bSE1H3x+1YzM9cnEx7O9E92XEf8i7ywwW98kDzcV
	6BddPH6bu4Yp+V86v07iUhMBLgtc2oetlxYUPyEno/XV38bzzS72428RmQOE4LmOL9el
	KoFwdSmeID9rPrYOc56UcNTbdV8svSVQ4WwpX+fg9vaGPJg1VF9ngGgvZFigl6Vb2ccO
	uW4w==
X-Gm-Message-State: APt69E02TJVDQaC5rcSWOpn6/RihXxuxPKMNSuM1IzihgCRfcIP3+TJe
	CM0UsR+cZpjtfFCJOUDWc76cSvR4WHNSLenop3E=
X-Google-Smtp-Source: ADUXVKLLGCBcMn8qh61iLG1t1EoMTkTebC0kqB89e7SU4+hLcMIJSm7W5rZuREMHlWXOjZQLfUzQMxntfNlg4ZxIEv4=
X-Received: by 2002:adf:f546:: with SMTP id
	j6-v6mr20275954wrp.241.1529580846825; 
	Thu, 21 Jun 2018 04:34:06 -0700 (PDT)
MIME-Version: 1.0
References: <3432507f73cb4aa0af4f4e80464ac43a@eurmail1301.ATL.CW.LOCAL>
	<CA+chaQeZ1a5So5P6+P86xigca-o7SLNASi8ZBnoKsUtJ=DpZeQ@mail.gmail.com>
In-Reply-To: <CA+chaQeZ1a5So5P6+P86xigca-o7SLNASi8ZBnoKsUtJ=DpZeQ@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 21 Jun 2018 13:33:55 +0200
Message-ID: <CA+chaQe5r689SbaKhTVJOkFkGxLZaeFaQzk8a+V6QQd94B=2oA@mail.gmail.com>
To: tflorea@curtisswright.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: SRCREV_FORMAT does not work as expected
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
X-List-Received-Date: Thu, 21 Jun 2018 11:34:08 -0000
Content-Type: multipart/alternative; boundary="00000000000007c539056f254b09"

--00000000000007c539056f254b09
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I forgot to mention that this is needed only if your PV doesn't include
SRCPV.

On Thu, Jun 21, 2018 at 1:32 PM Martin Jansa <martin.jansa@gmail.com> wrote=
:

> do_fetch[vardeps] +=3D " SRCREV_glibc SRCREV_localedef=E2=80=9D
>
> Is what we're using in recipes with SRCREV_FORMAT for years.
>
> On Thu, Jun 21, 2018 at 12:18 PM Florea, Tudor <tflorea@curtisswright.com=
>
> wrote:
>
>> Hi
>>
>> It seems that there is a flaw in the way the recipe with more than one
>> SCM is fetched.
>>
>> I take the cross-localedef-native_2.26.bb recipe as an example.
>>
>>
>>
>> If I change in the recipe:
>>
>> SRCREV_glibc ?=3D "some-new-revision"
>>
>> and try to rebuild, instead of attempting to fetch the new revision (and
>> fail as =E2=80=9Csome-new-revision=E2=80=9D cannot be fetched) =E2=80=9C=
bitbake
>> cross-localedef-native=E2=80=9D command finishes  without re-running any=
 task.
>>
>> From bitbake -e the cross-localedef-native output I can see:
>>
>> SRCREV=3D"INVALID"
>>
>> SRCREV_FORMAT=3D"glibc_localedef"
>>
>> SRCREV_glibc=3D" some-new-revision"
>>
>> SRCREV_localedef=3D"dfb4afe551c6c6e94f9cc85417bd1f582168c843"
>>
>>
>>
>> One workaround for this is to add something like do_fetch[vardeps] +=3D
>> "SRCPV=E2=80=9D or  do_fetch[vardeps] +=3D " SRCREV_glibc SRCREV_localed=
ef=E2=80=9D  in each
>> recipe using multiple SCM but I think there might be a better fix for th=
is.
>>
>>
>>
>> Should we add
>>
>> do_fetch[vardeps] +=3D "SRCPV=E2=80=9D
>>
>> in base.bbclass?
>>
>>
>>
>>
>> *Tudor Florea *Software Development Engineer
>>
>> Industrial Division
>>
>> *Curtiss-Wright *15, Enterprise Way, Aviation Park West,
>>
>> Bournemouth Airport, CHRISTCHURCH, Dorset, BH23 6HH, United Kingdom
>> T: +441202034125
>> tflorea@curtisswright.com
>>
>>
>> ------------------------------
>> This e-mail and any files transmitted with it are proprietary and
>> intended solely for the use of the individual or entity to whom they are
>> addressed. If you have reason to believe that you have received this e-m=
ail
>> in error, please notify the sender and destroy this e-mail and any attac=
hed
>> files. Please note that any views or opinions presented in this e-mail a=
re
>> solely those of the author and do not necessarily represent those of the
>> Curtiss-Wright Corporation or any of its subsidiaries. Documents attache=
d
>> hereto may contain technology subject to the U.S. Export Regulations.
>> Recipient is solely responsible for ensuring that any re-export, transfe=
r
>> or disclosure of this information is in accordance with U.S. Export
>> Regulations. The recipient should check this e-mail and any attachments =
for
>> the presence of viruses. Curtiss-Wright Corporation and its subsidiaries
>> accept no liability for any damage caused by any virus transmitted by th=
is
>> e-mail.
>> --
>> _______________________________________________
>> poky mailing list
>> poky@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/poky
>>
>

--00000000000007c539056f254b09
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I forgot to mention that this is needed only if your PV do=
esn&#39;t include SRCPV.</div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r">On Thu, Jun 21, 2018 at 1:32 PM Martin Jansa &lt;<a href=3D"mailto:marti=
n.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">do_fetch[vardeps] +=3D &quot; SRCREV=
_glibc SRCREV_localedef=E2=80=9D<br><div><br></div><div>Is what we&#39;re u=
sing in recipes with SRCREV_FORMAT for years.</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr">On Thu, Jun 21, 2018 at 12:18 PM Florea, Tudo=
r &lt;<a href=3D"mailto:tflorea@curtisswright.com" target=3D"_blank">tflore=
a@curtisswright.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-GB" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-6147053073522377793m_-5190533203584444409WordSection1">
<p class=3D"MsoNormal">Hi<u></u><u></u></p>
<p class=3D"MsoNormal">It seems that there is a flaw in the way the recipe =
with more than one SCM is fetched.<u></u><u></u></p>
<p class=3D"MsoNormal">I take the <a href=3D"http://cross-localedef-native_=
2.26.bb" target=3D"_blank">cross-localedef-native_2.26.bb</a> recipe as an =
example.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If I change in the recipe:<u></u><u></u></p>
<p class=3D"MsoNormal">SRCREV_glibc ?=3D &quot;some-new-revision&quot;<u></=
u><u></u></p>
<p class=3D"MsoNormal">and try to rebuild, instead of attempting to fetch t=
he new revision (and fail as =E2=80=9Csome-new-revision=E2=80=9D cannot be =
fetched) =E2=80=9Cbitbake cross-localedef-native=E2=80=9D command finishes=
=C2=A0 without re-running any task.<u></u><u></u></p>
<p class=3D"MsoNormal">From bitbake -e the cross-localedef-native output I =
can see:<u></u><u></u></p>
<p class=3D"MsoNormal">SRCREV=3D&quot;INVALID&quot;<u></u><u></u></p>
<p class=3D"MsoNormal">SRCREV_FORMAT=3D&quot;glibc_localedef&quot;<u></u><u=
></u></p>
<p class=3D"MsoNormal">SRCREV_glibc=3D&quot; some-new-revision&quot;<u></u>=
<u></u></p>
<p class=3D"MsoNormal">SRCREV_localedef=3D&quot;dfb4afe551c6c6e94f9cc85417b=
d1f582168c843&quot;<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">One workaround for this is to add something like do_=
fetch[vardeps] +=3D &quot;SRCPV=E2=80=9D or =C2=A0do_fetch[vardeps] +=3D &q=
uot; SRCREV_glibc SRCREV_localedef=E2=80=9D =C2=A0in each recipe using mult=
iple SCM but I think there might be a better fix for this.<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Should we add <u></u><u></u></p>
<p class=3D"MsoNormal">do_fetch[vardeps] +=3D &quot;SRCPV=E2=80=9D <u></u><=
u></u></p>
<p class=3D"MsoNormal">in base.bbclass?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><b><s=
pan style=3D"font-family:&quot;Arial&quot;,sans-serif;color:black">Tudor Fl=
orea<br>
</span></b><span style=3D"font-size:10.0pt;line-height:106%;font-family:&qu=
ot;Arial&quot;,sans-serif;color:black">Software Development Engineer<br>
<br>
Industrial Division<br>
<b>Curtiss-Wright<br>
</b>15, Enterprise Way, Aviation Park West, <u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:8.0pt;line-height:106%"><span=
 style=3D"font-size:10.0pt;line-height:106%;font-family:&quot;Arial&quot;,s=
ans-serif;color:black">Bournemouth Airport, CHRISTCHURCH, Dorset, BH23 6HH,=
 United Kingdom<br>
T: +441202034125<br>
<a href=3D"mailto:tflorea@curtisswright.com" target=3D"_blank">tflorea@curt=
isswright.com</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>

<hr>This e-mail and any files transmitted with it are proprietary and inten=
ded solely for the use of the individual or entity to whom they are address=
ed. If you have reason to believe that you have received this e-mail in err=
or, please notify the sender and destroy this e-mail and any attached files=
. Please note that any views or opinions presented in this e-mail are solel=
y those of the author and do not necessarily represent those of the Curtiss=
-Wright Corporation or any of its subsidiaries. Documents attached hereto m=
ay contain technology subject to the U.S. Export Regulations. Recipient is =
solely responsible for ensuring that any re-export, transfer or disclosure =
of this information is in accordance with U.S. Export Regulations. The reci=
pient should check this e-mail and any attachments for the presence of viru=
ses. Curtiss-Wright Corporation and its subsidiaries accept no liability fo=
r any damage caused by any virus transmitted by this e-mail.<br>
</div>

-- <br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@yoctoprojec=
t.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
</blockquote></div>
</blockquote></div>

--00000000000007c539056f254b09--
