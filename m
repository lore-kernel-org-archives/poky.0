Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF5D8E0099A; Tue, 28 Jul 2015 08:22:25 -0700 (PDT)
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
	*      [209.85.192.54 listed in list.dnswl.org]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C62C9E00985
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 08:22:22 -0700 (PDT)
Received: by qgeu79 with SMTP id u79so77382542qge.1
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 08:22:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=g66ngviL8HkVNnqWGHoCiRwRy0MGtYJ777wyuwJKqEY=;
	b=k1cT+xBsE6vnsPRw4cnq+rVN6DRL9WAqCg88mZ0WSMTATIG9fZNZcGFJRePM2kb8Ma
	Wmx5pWOg0z98YCW+HRm9zikof/AsWGaMR6eHnZZ6ZDKKNXMi178kdy+2gVgXwaAy0ue7
	YhFzX4+XqxyUKDDuqNEvTJxgUbxe8KnwcbxNJo4cHyWObfUeWOc987x9ooyughJ8t1a8
	aqqVW0ILbf61xV4XIaxzz2t9N9N//UNbW/LSPs0KgT9il4Wwk+0R8+79kY44utgV9Ou9
	fmu8t6tLVq94Q8TB+8NOUm1NpkaYumkiV8J5ncciq35JUpa9ApXQUbS6sNqCducl9BeN
	svGQ==
X-Gm-Message-State: ALoCoQlz2v4WEol9zUmkosWJ2aGLpbfw3hbDV1W3mXZ0oDbV3yC4KHWFk+O4UEYAknd5gZKQBrWF
X-Received: by 10.140.89.100 with SMTP id u91mr49360681qgd.15.1438096942361;
	Tue, 28 Jul 2015 08:22:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Tue, 28 Jul 2015 08:22:03 -0700 (PDT)
In-Reply-To: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E54E@AUSX7MCPS305.AMER.DELL.COM>
References: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E54E@AUSX7MCPS305.AMER.DELL.COM>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Jul 2015 16:22:03 +0100
Message-ID: <CAJTo0LZmK0XBUX6NGaut5boub7s7tGPVCVLwtuy6bcvNYfvx3w@mail.gmail.com>
To: Jack_Fewx@dell.com
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Missing dependencies after setscene, postinst fails
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
X-List-Received-Date: Tue, 28 Jul 2015 15:22:25 -0000
Content-Type: multipart/alternative; boundary=001a11c1334e671547051bf109ae

--001a11c1334e671547051bf109ae
Content-Type: text/plain; charset=UTF-8

On 28 July 2015 at 15:12, <Jack_Fewx@dell.com> wrote:

> The problem packages are: ca-certificates, nss, and gdk-pixbuf-native.
> ca-certificates and nss both depend on their own native-class builds, so
> ca-certificates-native and nss-native respectively, and they fail after
> doing do_package_write_ipk_setscene.  gdk-pixbuf-native needs jpeg-native
> in order to complete do_populate_sysroot_setscene, but fails due to its
> absence.


So I can't replicate any problem with ca-certificates, can you provide a
log of what fails for you?

Ross

--001a11c1334e671547051bf109ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 28 July 2015 at 15:12,  <span dir=3D"ltr">&lt;<a href=3D"mailto:Jack_Few=
x@dell.com" target=3D"_blank">Jack_Fewx@dell.com</a>&gt;</span> wrote:<br><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">The problem packages are: ca-certificates, ns=
s, and gdk-pixbuf-native.=C2=A0 ca-certificates and nss both depend on thei=
r own native-class builds, so ca-certificates-native and nss-native respect=
ively, and they fail after doing do_package_write_ipk_setscene.=C2=A0 gdk-p=
ixbuf-native needs jpeg-native in order to complete do_populate_sysroot_set=
scene, but fails due to its absence.</blockquote></div><br>So I can&#39;t r=
eplicate any problem with ca-certificates, can you provide a log of what fa=
ils for you?</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">Ross</div></div>

--001a11c1334e671547051bf109ae--
