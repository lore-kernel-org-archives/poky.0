Return-Path: <ninette@thehoodiefirm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E84FC4345F
	for <webhook@archiver.kernel.org>; Mon, 15 Apr 2024 10:40:37 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web11.18008.1713177632435680763
 for <poky@lists.yoctoproject.org>;
 Mon, 15 Apr 2024 03:40:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@thehoodiefirm-com.20230601.gappssmtp.com header.s=20230601 header.b=IfaQSTwI;
 spf=neutral (domain: thehoodiefirm.com, ip: 209.85.167.53, mailfrom: ninette@thehoodiefirm.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5176f217b7bso5220495e87.0
        for <poky@lists.yoctoproject.org>; Mon, 15 Apr 2024 03:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=thehoodiefirm-com.20230601.gappssmtp.com; s=20230601; t=1713177630; x=1713782430; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GGffat6/ECGY3RMbs6W3U9Iiq8W+Cc7cHyE2VSJ/lVY=;
        b=IfaQSTwIh98c5gsSY/kirNg9vbxHPRQLjR+dwu8OJSfapSh7FzPUCQk1A55gOsA4So
         Jvnz9B6m64XVNo0HI5Xbw+1HwIobgBwbf/qSGvPPjtA/57m3mG194QCxWToui4kV7SJA
         eY3OxwzxCCXldVDYCAYpme7+gFszwzawe5t1P1O5RYjhBwnkjYVeD9ZPQXkCG51dCqUI
         HrKhm9bqm79kqbAHu5pTlxPpwy6zkHJ3grJ+ZIWzV/gMUalZPLoqEwmKUZe/yvQ2ST1T
         bnzL8KQU+JZczYHvUZ0/eSRbAo3exwGi/HZfCjEvj+gC27lcgIj5YMtgc1GoZwwt85Pa
         wqzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713177630; x=1713782430;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GGffat6/ECGY3RMbs6W3U9Iiq8W+Cc7cHyE2VSJ/lVY=;
        b=E30+5SqiL16hurNAVisfPx0fH/vkyQAY56KVgtZtCq8X9OvYI/xCMQiULG1lVSdI6u
         /quct9akZ5O7mHvVUAvIP//YxTF+9uCj6vvWaQ0b1sH1EsCJVeYikiihJwyHbdM3qgYZ
         6tYsORKr9i2HmtkNIdGYT+qBKK+kV1MjcJbK2DY7+PcAAXwssRjxg/zu6Xr5KzwsQTQe
         9KCxslvrXE574tL9ujpoUHa4Dp2UqGQ9nGEXfUoH6UtR/9NMhnYssTlkDH1RYL1SwWaS
         PMeQhOja3BXC8pUgI+tSgWW5iGOn8wSQWMfR3Nq4JtE1aI7fHdUYEl11mkQZALiOH9oL
         qILg==
X-Forwarded-Encrypted: i=1; AJvYcCWKtp4lIjgd10dWZoI22j/B57UWGu/hRs98+nCJfqv4cdK84tiarhe7scgetGcjwPdQM3HnqQspfIdNfltCcKtNtXMBnzcoT3xmx9c=
X-Gm-Message-State: AOJu0YxeGRlUJPBYQtFe0N6qBbq/wNz7RpkpKOssqugy9H6zyLjNXDF9
	BWK94nTBVCErsFfTrRJYg8BQ/QS+93nOjVXyS0GydeMdjEv++uGmdR6eh9qTtb5iigKSTKlp5/g
	kWJK1LS3XZU2+Y0u2T+65lbrQGLIjEVALwAiemw==
X-Google-Smtp-Source: AGHT+IF8hhvoxxN6H0fjhYQSwoom9TmrReIkPl40jNCEReJ4uuTW8UgYKjBbxKsy8llBQbfP5ziTpbjn2eRB16kGeSM=
X-Received: by 2002:a05:6512:48c8:b0:515:acda:77f0 with SMTP id
 er8-20020a05651248c800b00515acda77f0mr7276437lfb.29.1713177630190; Mon, 15
 Apr 2024 03:40:30 -0700 (PDT)
MIME-Version: 1.0
References: <20240412153301.87391-1-ninette@thehoodiefirm.com> <CANNYZj-hF8PvDsLhaPf+iHyHqjcm7HoQePnz3u_bDvAo=NeexQ@mail.gmail.com>
In-Reply-To: <CANNYZj-hF8PvDsLhaPf+iHyHqjcm7HoQePnz3u_bDvAo=NeexQ@mail.gmail.com>
From: Ninette Adhikari <ninette@neighbourhood.ie>
Date: Mon, 15 Apr 2024 12:40:19 +0200
Message-ID: <CAG1aeW31Dov+0DAw5NTWcr9Lgm7W+=sTz3C8jy7-CsZvP5ApbQ@mail.gmail.com>
Subject: Re: [poky] [PATCH 0/3] Improvements for performance test report view
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: engineering@neighbourhood.ie, poky@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000015d14006162040cb"
List-Id: <poky.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <poky@lists.yoctoproject.org>; Mon, 15 Apr 2024 10:40:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/poky/message/13325

--00000000000015d14006162040cb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

I had the impression that I would have to send poky related patches to the
poky mailing list. So sorry for blasting everyone unnecessarily! I will
send the patches to the openembedded-core list.
Thanks for your response.

Ninette


On Mon, Apr 15, 2024 at 12:00=E2=80=AFPM Alexander Kanavin <alex.kanavin@gm=
ail.com>
wrote:

> Thanks for the patchset, but it should be going to the openembedded-core
> list.
>
> Alex
>
> On Fri, 12 Apr 2024 at 17:33, Ninette Adhikari
> <ninette@thehoodiefirm.com> wrote:
> >
> > This work is done according to "Milestone 9: Build performance test
> report view" as stated in the Scope of Work with Sovereign Tech Fund (STF=
) (
> https://www.sovereigntechfund.de/).
> > The current report can be accessed here:
> > Performance test report HTML (
> https://autobuilder.yocto.io/pub/non-release/20240117-15/testresults/buil=
dperf-alma8/perf-alma8_master_20240117090048_663f180574.html
> )
> > The report is created using the `oe-build-perf-report` script in the
> poky repository. This script generates a performance test report in HTML
> format using the data from the yocto-buildstats (
> https://git.yoctoproject.org/yocto-buildstats/) repository.
> > The report displays the performance test results in line chart format.
> The chart x-axis represents the commit numbers, and the y-axis represents
> the test duration in minutes.
> > The report also includes a table that displays the measurement
> statistics data for each test. The report is interactive and allows users
> to zoom in on specific sections of the line chart.
> >
> > The current report format required some updates to make it more
> interactive and user-friendly. And this patch addresses such improvements=
:
> >
> > - Add [Apache echart](https://echarts.apache.org/en/index.html) library
> to create oe build performance report charts and make them interactive.
> > - Restructure data to time and value array format to be used by echarts=
.
> It also converts test duration to minutes and adds zoom to the line chart=
s.
> > - Update measurement statistics data to include `start_time` so that
> time can be displayed instead of commit numbers on the chart. It also
> updates default commit history length to 300.
> > - Add styling updates including page margin, labels for x and y axis,
> tooltip, and section descriptions.
> >
> > Updated report screenshots:
> >
> https://github.com/neighbourhoodie/poky/assets/13760198/65a1890c-fd2a-40d=
4-ac90-f13055735e53
> >
> https://github.com/neighbourhoodie/poky/assets/13760198/1ed43876-73a9-487=
e-aed3-ca0edf97514c
> >
> > For local setup, you can do the following:
> >
> > 1. Clone the yocto-buildstats (
> https://git.yoctoproject.org/yocto-buildstats/) and the poky repository (
> https://git.yoctoproject.org/poky/)
> >
> > 2. In the poky repository run the following to build the report HTML:
> > ```bash
> > ./scripts/oe-build-perf-report -r "LOCAL_PATH_TO_YOCTO_BUILDSTATS"
> --branch "master" --commit "663f1805742ff6fb6955719d0ab7846a425debcf"
> --branch2 "master" --html > test.html
> > ```
> > Note:
> > - Add your local path to the yocto-buildstats repo
> > - The above command builds the report in a file called `test.html`. You
> can access it in the root directory in poky.
> > - This exmaple report uses the commit
> `663f1805742ff6fb6955719d0ab7846a425debcf` from `master` branch.
> >
> >
> > Ninette Adhikari (3):
> >   oe-build-perf-report: Add apache echarts to make report interactive
> >   oe-build-perf-report: Display more than 300 commits and date instead
> >     of commit number
> >   oe-build-perf-report: Improve report styling and add descriptions
> >
> >  .../build_perf/html/measurement_chart.html    | 116 +++++++++++-------
> >  scripts/lib/build_perf/html/report.html       |  96 ++++++++++-----
> >  scripts/lib/build_perf/report.py              |   4 +-
> >  scripts/oe-build-perf-report                  |   6 +-
> >  4 files changed, 143 insertions(+), 79 deletions(-)
> >
> > --
> > 2.44.0
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#13320):
> https://lists.yoctoproject.org/g/poky/message/13320
> > Mute This Topic: https://lists.yoctoproject.org/mt/105484739/1686489
> > Group Owner: poky+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub [
> alex.kanavin@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--00000000000015d14006162040cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Alex,</div><div><br></div><div>I =
had the impression that I would have to send poky related patches to the po=
ky mailing list. So sorry for blasting everyone unnecessarily! I will send =
the patches to the openembedded-core list.</div><div>Thanks for your respon=
se.</div><div><br></div><div>Ninette<br>
</div><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Apr 15, 2024 at 12:00=E2=80=AFPM Alexander Kan=
avin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Thanks for the patchset, but it should be going to the open=
embedded-core list.<br>
<br>
Alex<br>
<br>
On Fri, 12 Apr 2024 at 17:33, Ninette Adhikari<br>
&lt;<a href=3D"mailto:ninette@thehoodiefirm.com" target=3D"_blank">ninette@=
thehoodiefirm.com</a>&gt; wrote:<br>
&gt;<br>
&gt; This work is done according to &quot;Milestone 9: Build performance te=
st report view&quot; as stated in the Scope of Work with Sovereign Tech Fun=
d (STF) (<a href=3D"https://www.sovereigntechfund.de/" rel=3D"noreferrer" t=
arget=3D"_blank">https://www.sovereigntechfund.de/</a>).<br>
&gt; The current report can be accessed here:<br>
&gt; Performance test report HTML (<a href=3D"https://autobuilder.yocto.io/=
pub/non-release/20240117-15/testresults/buildperf-alma8/perf-alma8_master_2=
0240117090048_663f180574.html" rel=3D"noreferrer" target=3D"_blank">https:/=
/autobuilder.yocto.io/pub/non-release/20240117-15/testresults/buildperf-alm=
a8/perf-alma8_master_20240117090048_663f180574.html</a>)<br>
&gt; The report is created using the `oe-build-perf-report` script in the p=
oky repository. This script generates a performance test report in HTML for=
mat using the data from the yocto-buildstats (<a href=3D"https://git.yoctop=
roject.org/yocto-buildstats/" rel=3D"noreferrer" target=3D"_blank">https://=
git.yoctoproject.org/yocto-buildstats/</a>) repository.<br>
&gt; The report displays the performance test results in line chart format.=
 The chart x-axis represents the commit numbers, and the y-axis represents =
the test duration in minutes.<br>
&gt; The report also includes a table that displays the measurement statist=
ics data for each test. The report is interactive and allows users to zoom =
in on specific sections of the line chart.<br>
&gt;<br>
&gt; The current report format required some updates to make it more intera=
ctive and user-friendly. And this patch addresses such improvements:<br>
&gt;<br>
&gt; - Add [Apache echart](<a href=3D"https://echarts.apache.org/en/index.h=
tml" rel=3D"noreferrer" target=3D"_blank">https://echarts.apache.org/en/ind=
ex.html</a>) library to create oe build performance report charts and make =
them interactive.<br>
&gt; - Restructure data to time and value array format to be used by echart=
s. It also converts test duration to minutes and adds zoom to the line char=
ts.<br>
&gt; - Update measurement statistics data to include `start_time` so that t=
ime can be displayed instead of commit numbers on the chart. It also update=
s default commit history length to 300.<br>
&gt; - Add styling updates including page margin, labels for x and y axis, =
tooltip, and section descriptions.<br>
&gt;<br>
&gt; Updated report screenshots:<br>
&gt; <a href=3D"https://github.com/neighbourhoodie/poky/assets/13760198/65a=
1890c-fd2a-40d4-ac90-f13055735e53" rel=3D"noreferrer" target=3D"_blank">htt=
ps://github.com/neighbourhoodie/poky/assets/13760198/65a1890c-fd2a-40d4-ac9=
0-f13055735e53</a><br>
&gt; <a href=3D"https://github.com/neighbourhoodie/poky/assets/13760198/1ed=
43876-73a9-487e-aed3-ca0edf97514c" rel=3D"noreferrer" target=3D"_blank">htt=
ps://github.com/neighbourhoodie/poky/assets/13760198/1ed43876-73a9-487e-aed=
3-ca0edf97514c</a><br>
&gt;<br>
&gt; For local setup, you can do the following:<br>
&gt;<br>
&gt; 1. Clone the yocto-buildstats (<a href=3D"https://git.yoctoproject.org=
/yocto-buildstats/" rel=3D"noreferrer" target=3D"_blank">https://git.yoctop=
roject.org/yocto-buildstats/</a>) and the poky repository (<a href=3D"https=
://git.yoctoproject.org/poky/" rel=3D"noreferrer" target=3D"_blank">https:/=
/git.yoctoproject.org/poky/</a>)<br>
&gt;<br>
&gt; 2. In the poky repository run the following to build the report HTML:<=
br>
&gt; ```bash<br>
&gt; ./scripts/oe-build-perf-report -r &quot;LOCAL_PATH_TO_YOCTO_BUILDSTATS=
&quot; --branch &quot;master&quot; --commit &quot;663f1805742ff6fb6955719d0=
ab7846a425debcf&quot; --branch2 &quot;master&quot; --html &gt; test.html<br=
>
&gt; ```<br>
&gt; Note:<br>
&gt; - Add your local path to the yocto-buildstats repo<br>
&gt; - The above command builds the report in a file called `test.html`. Yo=
u can access it in the root directory in poky.<br>
&gt; - This exmaple report uses the commit `663f1805742ff6fb6955719d0ab7846=
a425debcf` from `master` branch.<br>
&gt;<br>
&gt;<br>
&gt; Ninette Adhikari (3):<br>
&gt;=C2=A0 =C2=A0oe-build-perf-report: Add apache echarts to make report in=
teractive<br>
&gt;=C2=A0 =C2=A0oe-build-perf-report: Display more than 300 commits and da=
te instead<br>
&gt;=C2=A0 =C2=A0 =C2=A0of commit number<br>
&gt;=C2=A0 =C2=A0oe-build-perf-report: Improve report styling and add descr=
iptions<br>
&gt;<br>
&gt;=C2=A0 .../build_perf/html/measurement_chart.html=C2=A0 =C2=A0 | 116 ++=
+++++++++-------<br>
&gt;=C2=A0 scripts/lib/build_perf/html/report.html=C2=A0 =C2=A0 =C2=A0 =C2=
=A0|=C2=A0 96 ++++++++++-----<br>
&gt;=C2=A0 scripts/lib/build_perf/report.py=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A04 +-<br>
&gt;=C2=A0 scripts/oe-build-perf-report=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A06 +-<br>
&gt;=C2=A0 4 files changed, 143 insertions(+), 79 deletions(-)<br>
&gt;<br>
&gt; --<br>
&gt; 2.44.0<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#13320): <a href=3D"https://lists.yoctoproject.org/=
g/poky/message/13320" rel=3D"noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/g/poky/message/13320</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10548473=
9/1686489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/105484739/1686489</a><br>
&gt; Group Owner: <a href=3D"mailto:poky%2Bowner@lists.yoctoproject.org" ta=
rget=3D"_blank">poky+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsub" r=
el=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/poky/u=
nsub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.=
kanavin@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div></div>

--00000000000015d14006162040cb--

