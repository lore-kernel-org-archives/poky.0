Return-Path: <andrei@gherzan.ro>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69010E0044D
	for <poky@yoctoproject.org>; Fri, 27 Apr 2012 10:30:40 -0700 (PDT)
Received: by iagw33 with SMTP id w33so1741191iag.35
	for <poky@yoctoproject.org>; Fri, 27 Apr 2012 10:30:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=HONZuolpkIT2GDzAjMsfCN3USJOUqmd6QTW/UQrdzBs=;
	b=kTNZw1GU1YcP/rN8o49sJNvOpikKSHHOInMFuDZE4EtRGx8BTiG7Ypajr6JhjNAnku
	CpUignETGlPfbYf6gqAmSJt/3mdDap4swmPQUiC4JLowUVy2Pt3Y08ySbZ+31Os6Czbc
	vuJjOkhkftMJ5rTkbHGr0v2i5F240w3XP/E9wKGYgVu+mh/u5R1YQByiZN1Qs0A9Lg1F
	27bOaVFTH6q4qffCvo1h+0Qvv7w8H86UfFKvkskC/9QHb5oAcekLAIn2o04wZoyUr5QA
	rgoTAeSv8+jgj3y1L/bRCjyqMnOT95Dj75bfIIDuuHF4eMKfs+8irCK5Ncbze2MRzzIN
	KBDA==
MIME-Version: 1.0
Received: by 10.42.63.80 with SMTP id b16mr10858771ici.29.1335547840363; Fri,
	27 Apr 2012 10:30:40 -0700 (PDT)
Received: by 10.64.25.18 with HTTP; Fri, 27 Apr 2012 10:30:40 -0700 (PDT)
X-Originating-IP: [109.166.130.195]
Received: by 10.64.25.18 with HTTP; Fri, 27 Apr 2012 10:30:40 -0700 (PDT)
In-Reply-To: <4F9AB437.1040404@yahoo.fr>
References: <4F9AB437.1040404@yahoo.fr>
Date: Fri, 27 Apr 2012 20:30:40 +0300
Message-ID: <CAK18fxG6bKqmZyccLVshspCk==4Tzg0Lgcd47gueqBt+QU2=KA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Patrick <kpa_info@yahoo.fr>
X-Gm-Message-State: ALoCoQmdKSUW0GefSLu/yrey0MmpIOm/fHuRTJUgnZBNR3LHJfZsWAF3h1op6Zfy0HeVjgtXQmHl
Cc: poky@yoctoproject.org
Subject: Re: Compiling sp-rtrace
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 27 Apr 2012 17:30:41 -0000
Content-Type: multipart/alternative; boundary=90e6ba5bb94f9afb7d04beac76c8

--90e6ba5bb94f9afb7d04beac76c8
Content-Type: text/plain; charset=ISO-8859-1

On Apr 27, 2012 5:59 PM, "Patrick" <kpa_info@yahoo.fr> wrote:
>
> Dear mailing-list,
>

Nice. :)

> I am trying to include the sp-rtrace tool (
http://maemo.gitorious.org/maemo-tools/sp-rtrace) in my Poky image.
> I have made the beginning of a receipe but I am facing some problems.
>
> Does any one have already tried to build this tool ?
>
> Below is the receipes that I have made. He is not working and compilation
crash with a strange conflict when linking.
> This tool need the demangle.h file that is not included in this project.
I have found that gdb have a similar file, this is why I have made the
dirty hack of the last line...
>

You should start by showing us your error.

As i recall... demangle.h is from binutils. And should be in sysroot. But i
have to check as i don't have a build right now at my disposal.

> Thanks in advance for your help
>
> Patrick
>
> --------------------------------------------
>
> DESCRIPTION = "sp-rtrace provides function tracing for different resource
types and the traced data post-processing and visualization tools. "
> HOMEPAGE = "http://maemo.gitorious.org/maemo-tools/sp-rtrace"
> LICENSE = "GPLv2 & GPLv2+"
> LIC_FILES_CHKSUM =
"file://COPYING.GPL;md5=4325afd396febcb659c36b49533135d4 \
>
 file://COPYING.LGPL;md5=3214f080875748938ba060314b4f727d"
>
> PR = "r0"
> DEPENDS = "binutils gdb"
>
> SRC_URI = "git://gitorious.org/maemo-tools/sp-rtrace.git"
> SRCREV = "4d2870b43a9ae45b47be8701622b9baf7a534d6e"
>
> S = "${WORKDIR}/git"
>
> inherit autotools gettext
>
> EXTRA_OECONF = "--build=arm"
> CFLAGS_prepend = "-fPIC -I../../../gdb-7.3a-r4.0/gdb-7.3/include/"
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

--90e6ba5bb94f9afb7d04beac76c8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p><br>
On Apr 27, 2012 5:59 PM, &quot;Patrick&quot; &lt;<a href=3D"mailto:kpa_info=
@yahoo.fr">kpa_info@yahoo.fr</a>&gt; wrote:<br>
&gt;<br>
&gt; Dear mailing-list,<br>
&gt;</p>
<p>Nice. :)</p>
<p>&gt; I am trying to include the sp-rtrace tool (<a href=3D"http://maemo.=
gitorious.org/maemo-tools/sp-rtrace">http://maemo.gitorious.org/maemo-tools=
/sp-rtrace</a>) in my Poky image.<br>
&gt; I have made the beginning of a receipe but I am facing some problems.<=
br>
&gt;<br>
&gt; Does any one have already tried to build this tool ?<br>
&gt;<br>
&gt; Below is the receipes that I have made. He is not working and compilat=
ion crash with a strange conflict when linking.<br>
&gt; This tool need the demangle.h file that is not included in this projec=
t. I have found that gdb have a similar file, this is why I have made the d=
irty hack of the last line...<br>
&gt;</p>
<p>You should start by showing us your error.</p>
<p>As i recall... demangle.h is from binutils. And should be in sysroot. Bu=
t i have to check as i don&#39;t have a build right now at my disposal. </p=
>
<p>&gt; Thanks in advance for your help<br>
&gt;<br>
&gt; Patrick<br>
&gt;<br>
&gt; --------------------------------------------<br>
&gt;<br>
&gt; DESCRIPTION =3D &quot;sp-rtrace provides function tracing for differen=
t resource types and the traced data post-processing and visualization tool=
s. &quot;<br>
&gt; HOMEPAGE =3D &quot;<a href=3D"http://maemo.gitorious.org/maemo-tools/s=
p-rtrace">http://maemo.gitorious.org/maemo-tools/sp-rtrace</a>&quot;<br>
&gt; LICENSE =3D &quot;GPLv2 &amp; GPLv2+&quot;<br>
&gt; LIC_FILES_CHKSUM =3D &quot;file://COPYING.GPL;md5=3D4325afd396febcb659=
c36b49533135d4 \<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file://COPYING.LGPL;md5=3D3214f=
080875748938ba060314b4f727d&quot;<br>
&gt;<br>
&gt; PR =3D &quot;r0&quot;<br>
&gt; DEPENDS =3D &quot;binutils gdb&quot;<br>
&gt;<br>
&gt; SRC_URI =3D &quot;git://<a href=3D"http://gitorious.org/maemo-tools/sp=
-rtrace.git">gitorious.org/maemo-tools/sp-rtrace.git</a>&quot;<br>
&gt; SRCREV =3D &quot;4d2870b43a9ae45b47be8701622b9baf7a534d6e&quot;<br>
&gt;<br>
&gt; S =3D &quot;${WORKDIR}/git&quot;<br>
&gt;<br>
&gt; inherit autotools gettext<br>
&gt;<br>
&gt; EXTRA_OECONF =3D &quot;--build=3Darm&quot;<br>
&gt; CFLAGS_prepend =3D &quot;-fPIC -I../../../gdb-7.3a-r4.0/gdb-7.3/includ=
e/&quot;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; poky mailing list<br>
&gt; <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/poky">https://lists=
.yoctoproject.org/listinfo/poky</a><br>
</p>

--90e6ba5bb94f9afb7d04beac76c8--
