Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF158E006B3
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 07:32:56 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so2466125lbo.35
	for <poky@yoctoproject.org>; Fri, 16 Nov 2012 07:32:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=2Z3BG220MFltQEy6gje5bsOn8jyezml2KtxLgetyAQ8=;
	b=YAOhm52abwnh26LMru5v/g9vjhUcZyedoMHFQNrXE1oW2jp5hDGBPqXnwRv1FsJE8l
	bKc41VcEanz17lWPN0tkvdBVEFeUnFnKNifwzlbXE/N8o2eUX6ovkMg0FoLbq1OT8nXT
	63HiDtFN45Ijc8sVrhoK2Ir1dGDZa0UI4kTB1k29IoIeWMb2v+1iRh+N06RB1hiyINcH
	j071fU6rmR3ejKVOJcyymTnVJedGavOslXcQmsbiONhVizNmMeQg5uYMhn3OtfUXdRhG
	K82YQ9Aaw8SpYfNxanEvJAJ04duRLJkEuoLJc6dQ81hWwGV7bFUn7zYImf0G5ntIB0r0
	HEJg==
Received: by 10.112.26.233 with SMTP id o9mr2148339lbg.101.1353079975219; Fri,
	16 Nov 2012 07:32:55 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.18.239 with HTTP; Fri, 16 Nov 2012 07:32:34 -0800 (PST)
In-Reply-To: <50A64DBE.3020106@mlbassoc.com>
References: <50A649D6.9030301@mlbassoc.com> <7871104.EdYNj4Ce18@helios>
	<50A64DBE.3020106@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 16 Nov 2012 08:32:34 -0700
X-Google-Sender-Auth: 6Pnpkgi4qtGDaUsVOxd94fvqPJo
Message-ID: <CABcZANmsH1z3zZWSq6_LnVd4=CrEt5Gwtp4=UmRoZGoskzCuOA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Wacky dependencies
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
X-List-Received-Date: Fri, 16 Nov 2012 15:32:57 -0000
Content-Type: multipart/alternative; boundary=bcaec554dbca4692fc04ce9e7bc5

--bcaec554dbca4692fc04ce9e7bc5
Content-Type: text/plain; charset=UTF-8

On Fri, Nov 16, 2012 at 7:29 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> I'd like to fix this but given that we check if DISTRO_FEATURES and other
>> list
>> variables like it contain values using inline python code i.e.
>> ${@base_contains(...)} this seems like it would be tricky to implement in
>> a
>> reliable way.
>
>
I think you'd probably have to add the appropriate vardepsexclude on a
case-by-case basis, unless you wanted to play with the ast module and try
to determine what's being passed to base_contains :)
-- 
Christopher Larson

--bcaec554dbca4692fc04ce9e7bc5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra">On Fri, Nov 16, 2012 at 7:29 AM, Gary Thomas <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">g=
ary@mlbassoc.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">I&#39;d like to fix this but given that we c=
heck if DISTRO_FEATURES and other list<br>
variables like it contain values using inline python code i.e.<br>
${@base_contains(...)} this seems like it would be tricky to implement in a=
<br>
reliable way.</blockquote></blockquote></div><br>I think you&#39;d probably=
 have to add the appropriate vardepsexclude on a case-by-case basis, unless=
 you wanted to play with the ast module and try to determine what&#39;s bei=
ng passed to base_contains :)<br>

-- <br>Christopher Larson<br>
</div>

--bcaec554dbca4692fc04ce9e7bc5--
