Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.8290.1574591463598571297
 for <poky@lists.yoctoproject.org>;
 Sun, 24 Nov 2019 02:31:04 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: axis.com, ip: 140.211.169.56, mailfrom: peter.kjellerstedt@axis.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7193BE00D88; Sun, 24 Nov 2019 02:31:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [195.60.68.17 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www; Sun, 24 Nov 2019 02:31:01 PST
Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D929E00C4F
	for <poky@yoctoproject.org>; Sun, 24 Nov 2019 02:31:01 -0800 (PST)
IronPort-SDR: aiXAzFHLSBNLeY/q440dC5xXF1J/uoZFB4zIpjI1TPZ9VRPt6KxFRpKwsCVxh66dq2tdbKYEOn
 2ORLOLtTkX9behL22HTvFAhcA6aMbc/+2rkeKA86V0AdH4toF+U8F9ue4M79rIcSHdb3EqtEgc
 0HdZXMSdns0BJfZmSu+mw2Vsrv/G4zPWrTdyTv0CVgU1fGwHkTVmP52ORhwLgcn6y2H0sf1ldd
 WzmQqkuEBKluKx2Oa5/7SK2a2dmQpvWKbhdwT+xQJRlpwX4jeVyI5P/S8zGh7sC0WV8lBZLn5s
 SVs=
X-IronPort-AV: E=Sophos;i="5.69,237,1571695200"; 
   d="scan'208,217";a="2857186"
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Mark Hatle <mark.hatle@kernel.crashing.org>, Khem Raj
	<raj.khem@gmail.com>, Richard Purdie <richard.purdie@linuxfoundation.org>
CC: Peter Kjellerstedt <peter.kjellerstedt@axis.com>, Alexander Kanavin
	<alex.kanavin@gmail.com>, Junling Zheng <zhengjunling@huawei.com>, "Poky
 Project" <poky@yoctoproject.org>, Wang Nan <wangnan0@huawei.com>
Subject: Re: [poky] Python2 maintenance will expired
Thread-Topic: [poky] Python2 maintenance will expired
Thread-Index: AQHVoEcw2Bdb+712tUO+4mDlZOxl5KeVZlYAgAIJOQCAAAEzgIAABAwAgAKu3jE=
Date: Sun, 24 Nov 2019 10:29:55 +0000
Message-ID: <4253d01e54d64e018693cd878f7ea730@XBOX03.axis.com>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
 <CANNYZj8-bTua-Tq2k+qRt7GcX=S_U8zOxS47x+LL6g0CsYMt7A@mail.gmail.com>
 <1c708581fdcbcc81e3fab40ef6d88175860eba0d.camel@linuxfoundation.org>
 <CAMKF1spJ1YhhKLxBE3ZvJXOQRVzNHJ_9SgwEyKfW2FktKx4S8A@mail.gmail.com>,<dcc537c3-0723-8cda-adf8-36144b280b4e@kernel.crashing.org>
In-Reply-To: <dcc537c3-0723-8cda-adf8-36144b280b4e@kernel.crashing.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_4253d01e54d64e018693cd878f7ea730XBOX03axiscom_"

--_000_4253d01e54d64e018693cd878f7ea730XBOX03axiscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

It should be trivial to poison python, at least for scripts that use #!/usr=
/bin/env python. Just add a python wrapper in the scripts directory. (We ha=
ve done this for pkg-config to find recipes that lack inherit pkg-config.) =
What to do about scripts that use #!/usr/bin/python, I do not know...

//Peter


-------- Originalmeddelande --------
Fr=E5n: Mark Hatle <mark.hatle@kernel.crashing.org>
Datum: 2019-11-22 19:37 (GMT+01:00)
Till: Khem Raj <raj.khem@gmail.com>, Richard Purdie <richard.purdie@linuxfo=
undation.org>
Kopia: Alexander Kanavin <alex.kanavin@gmail.com>, Junling Zheng <zhengjunl=
ing@huawei.com>, Poky Project <poky@yoctoproject.org>, Wang Nan <wangnan0@h=
uawei.com>
=C4mne: Re: [poky] Python2 maintenance will expired



On 11/22/19 12:17 PM, Khem Raj wrote:
> On Fri, Nov 22, 2019 at 10:12 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
>>
>> On Thu, 2019-11-21 at 12:07 +0100, Alexander Kanavin wrote:
>>> On Thu, 21 Nov 2019 at 09:39, Richard Purdie <
>>> richard.purdie@linuxfoundation.org> wrote:
>>>> The project has been working hard to remove python2 dependencies
>>>> where
>>>> we can and in OE-Core, on target usage has been removed and at
>>>> build
>>>> time, u-boot is one of the main remaining pieces that still needs
>>>> it.
>>>> Their next release should address that issue.
>>>>
>>>> There is still a need for python2 in HOSTTOOLS but that is also
>>>> being
>>>> looked at.
>>>
>>> I can confirm (from local testing) that as far as oe-core is
>>> concerned, u-boot is actually the last piece, and after it's been
>>> moved to use py3, py2 can be removed entirely, including a link in
>>> HOSTTOOLS, and native and target recipes.
>>
>> FWIW I'm tempted to suggest we take a pre-release u-boot into OE-Core
>> for now until it does come out, letting us proceed with the rest of the
>> py2 rearrangement...
>>
>
> this should be fine, I think, downside is we might have to ship it if
> u-boot upstream does not release in time for spring release but
> chances of that happening are low

I think that is a good idea.. When I looked back in August there were still
support scripts that appeared to be python2.  Also I think other layers
(meta-openembedded) had a bunch of python2 uses in them.

I'm wondering if there needs to be a way to poison 'python' and 'python2'
executables to find these.

--Mark

>> Cheers,
>>
>> Richard
>>
>>
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#11824): https://lists.yoctoproject.org/g/poky/messag=
e/11824
>> Mute This Topic: https://lists.yoctoproject.org/mt/61302503/1997914
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [raj.khem@gmai=
l.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>>
>> View/Reply Online (#11825): https://lists.yoctoproject.org/g/poky/messag=
e/11825
>> Mute This Topic: https://lists.yoctoproject.org/mt/61302503/3616948
>> Group Owner: poky+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/poky/unsub  [mark.hatle@ke=
rnel.crashing.org]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-

--_000_4253d01e54d64e018693cd878f7ea730XBOX03axiscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div dir=3D"auto">It should be trivial to poison python, at least for scrip=
ts that use #!/usr/bin/env python. Just add a python wrapper in the scripts=
 directory. (We have done this for pkg-config to find recipes that lack inh=
erit pkg-config.) What to do about
 scripts that use #!/usr/bin/python, I do not know...
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">//Peter</div>
<div><br>
</div>
<div><br>
</div>
<div>-------- Originalmeddelande --------</div>
<div>Fr=E5n: Mark Hatle &lt;mark.hatle@kernel.crashing.org&gt; </div>
<div>Datum: 2019-11-22 19:37 (GMT&#43;01:00) </div>
<div>Till: Khem Raj &lt;raj.khem@gmail.com&gt;, Richard Purdie &lt;richard.=
purdie@linuxfoundation.org&gt;
</div>
<div>Kopia: Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;, Junling Zheng=
 &lt;zhengjunling@huawei.com&gt;, Poky Project &lt;poky@yoctoproject.org&gt=
;, Wang Nan &lt;wangnan0@huawei.com&gt;
</div>
<div>=C4mne: Re: [poky] Python2 maintenance will expired </div>
<div><br>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
<br>
On 11/22/19 12:17 PM, Khem Raj wrote:<br>
&gt; On Fri, Nov 22, 2019 at 10:12 AM Richard Purdie<br>
&gt; &lt;richard.purdie@linuxfoundation.org&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, 2019-11-21 at 12:07 &#43;0100, Alexander Kanavin wrote:<br=
>
&gt;&gt;&gt; On Thu, 21 Nov 2019 at 09:39, Richard Purdie &lt;<br>
&gt;&gt;&gt; richard.purdie@linuxfoundation.org&gt; wrote:<br>
&gt;&gt;&gt;&gt; The project has been working hard to remove python2 depend=
encies<br>
&gt;&gt;&gt;&gt; where<br>
&gt;&gt;&gt;&gt; we can and in OE-Core, on target usage has been removed an=
d at<br>
&gt;&gt;&gt;&gt; build<br>
&gt;&gt;&gt;&gt; time, u-boot is one of the main remaining pieces that stil=
l needs<br>
&gt;&gt;&gt;&gt; it.<br>
&gt;&gt;&gt;&gt; Their next release should address that issue.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; There is still a need for python2 in HOSTTOOLS but that is=
 also<br>
&gt;&gt;&gt;&gt; being<br>
&gt;&gt;&gt;&gt; looked at.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; I can confirm (from local testing) that as far as oe-core is<b=
r>
&gt;&gt;&gt; concerned, u-boot is actually the last piece, and after it's b=
een<br>
&gt;&gt;&gt; moved to use py3, py2 can be removed entirely, including a lin=
k in<br>
&gt;&gt;&gt; HOSTTOOLS, and native and target recipes.<br>
&gt;&gt;<br>
&gt;&gt; FWIW I'm tempted to suggest we take a pre-release u-boot into OE-C=
ore<br>
&gt;&gt; for now until it does come out, letting us proceed with the rest o=
f the<br>
&gt;&gt; py2 rearrangement...<br>
&gt;&gt;<br>
&gt; <br>
&gt; this should be fine, I think, downside is we might have to ship it if<=
br>
&gt; u-boot upstream does not release in time for spring release but<br>
&gt; chances of that happening are low<br>
<br>
I think that is a good idea.. When I looked back in August there were still=
<br>
support scripts that appeared to be python2.&nbsp; Also I think other layer=
s<br>
(meta-openembedded) had a bunch of python2 uses in them.<br>
<br>
I'm wondering if there needs to be a way to poison 'python' and 'python2'<b=
r>
executables to find these.<br>
<br>
--Mark<br>
<br>
&gt;&gt; Cheers,<br>
&gt;&gt;<br>
&gt;&gt; Richard<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt;<br>
&gt;&gt; View/Reply Online (#11824): <a href=3D"https://lists.yoctoproject.=
org/g/poky/message/11824">
https://lists.yoctoproject.org/g/poky/message/11824</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/6130=
2503/1997914">
https://lists.yoctoproject.org/mt/61302503/1997914</a><br>
&gt;&gt; Group Owner: poky&#43;owner@lists.yoctoproject.org<br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsu=
b">https://lists.yoctoproject.org/g/poky/unsub</a>&nbsp; [raj.khem@gmail.co=
m]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt;<br>
&gt;&gt; View/Reply Online (#11825): <a href=3D"https://lists.yoctoproject.=
org/g/poky/message/11825">
https://lists.yoctoproject.org/g/poky/message/11825</a><br>
&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/6130=
2503/3616948">
https://lists.yoctoproject.org/mt/61302503/3616948</a><br>
&gt;&gt; Group Owner: poky&#43;owner@lists.yoctoproject.org<br>
&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/poky/unsu=
b">https://lists.yoctoproject.org/g/poky/unsub</a>&nbsp; [mark.hatle@kernel=
.crashing.org]<br>
&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</div>
</span></font>
</body>
</html>

--_000_4253d01e54d64e018693cd878f7ea730XBOX03axiscom_--
