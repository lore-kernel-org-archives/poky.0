Return-Path: <flocirel@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0434E01396
	for <poky@yoctoproject.org>; Wed, 23 May 2012 04:07:22 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so6051924qcs.35
	for <poky@yoctoproject.org>; Wed, 23 May 2012 04:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=sYXSfdZikIryTULXfgUUa/C/iTuO/TOCLTDMV1zV1KU=;
	b=sq2XNdegelYLQeCc0AZctBe5rsOrE1SzA2LY18oKuR71PTVMd2lg0LXWFw9oZIslpe
	c0jo2OFfmpN/arpw6SbhvzkKJbSDRFxCdprZYVvzF5dBB+WTnZsE0YhIncHmH4GliaAB
	8oUDfTPo2qr0QwdIVDzdlf93lXz0EtarqdBct4Ck7WmXLRWwR8esa/xXyBWw0R11pEWF
	55ftXKp258Y3VRBA43idKBeG2uc83lf2yN5aEZAxD1sJVwwEaNrdj4ufRmJaNkKLGaXG
	KbVu/qPTsT32mtJh0k8GBnEyYBrbXmCAs6R1q0EegYeXc4uAUbc+K2vh8srM3PZXX4NX
	fdlA==
Received: by 10.229.137.6 with SMTP id u6mr14271195qct.43.1337771242238;
	Wed, 23 May 2012 04:07:22 -0700 (PDT)
Received: from [128.224.171.127] ([89.121.200.106])
	by mx.google.com with ESMTPS id gy5sm2383271qab.3.2012.05.23.04.07.20
	(version=SSLv3 cipher=OTHER); Wed, 23 May 2012 04:07:21 -0700 (PDT)
Message-ID: <4FBCC4E6.4040208@gmail.com>
Date: Wed, 23 May 2012 14:07:18 +0300
From: Florin <flocirel@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <CANdftmNDK3oR8m5_1kAW8eJTYYkaS2VvOY0wMf8QpuwWEjCZNg@mail.gmail.com>
	<CAK18fxHBCrv-Ts_4+rdjz9Twd-nBvtmLe0X+7PppEuMruYJeNA@mail.gmail.com>
In-Reply-To: <CAK18fxHBCrv-Ts_4+rdjz9Twd-nBvtmLe0X+7PppEuMruYJeNA@mail.gmail.com>
Subject: Re: question about yoctoproject mirrors
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
X-List-Received-Date: Wed, 23 May 2012 11:07:23 -0000
Content-Type: multipart/alternative;
	boundary="------------050803040904030009010008"

--------------050803040904030009010008
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Found the issue, seems like debian mirros have changed in the meanwhile.
The following commit fixes it:

commit c079993074e197f57065e1eee7764696d446df38
Author: Khem Raj <raj.khem@gmail.com>
Date:   Fri May 4 14:56:33 2012 -0700

     classes/mirrors.bbclass: Point snapshot.debian.org mirror to 
working location

     If you point to snapshot.debian.net/archive/pool then it will fetch
     you a html page which will end up in corrupt download. The locations
     have changed for archives and here we point the mirror to right
     location.

     (From OE-Core rev: 15e8aa4cd773022b36a66f70e4f6436289f3d1bc)

     Signed-off-by: Khem Raj <raj.khem@gmail.com>
     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>



Richard, do you think you can push it into the denzil branch?
Thanks


>
> On Wed, May 23, 2012 at 12:04 PM, Foinel <flocirel@gmail.com 
> <mailto:flocirel@gmail.com>> wrote:
>
>     Hello,
>     I'm trying to use the denzil branch and encounter some issues with a
>     package. netbase to be more precise. On upstream, netbase 4.47 does
>     not exist anymore. So it automatically tries a mirror to download
>     netbase 4.47. It ends up fetching the package from
>     http://snapshot.debian.net/archive/pool/n/netbase/netbase_4.47.tar.gz
>     . The package from this mirror seems broken though and do_unpack fails
>     with "gzip: stdin: not in gzip format"
>     Now my question is: why doesn't it uses
>     http://downloads.yoctoproject.org/mirror/sources/ ? Which is the
>     scenario when it fetches from the yoctoproject mirror?
>
>     Thanks.
>     _______________________________________________
>     poky mailing list
>     poky@yoctoproject.org <mailto:poky@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/poky
>
>


--------------050803040904030009010008
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Found the issue, seems like debian mirros have changed in the
    meanwhile.<br>
    The following commit fixes it:<br>
    <br>
    commit c079993074e197f57065e1eee7764696d446df38<br>
    Author: Khem Raj <a class="moz-txt-link-rfc2396E" href="mailto:raj.khem@gmail.com">&lt;raj.khem@gmail.com&gt;</a><br>
    Date:&nbsp;&nbsp; Fri May 4 14:56:33 2012 -0700<br>
    <br>
    &nbsp;&nbsp;&nbsp; classes/mirrors.bbclass: Point snapshot.debian.org mirror to
    working location<br>
    &nbsp;&nbsp;&nbsp; <br>
    &nbsp;&nbsp;&nbsp; If you point to snapshot.debian.net/archive/pool then it will
    fetch<br>
    &nbsp;&nbsp;&nbsp; you a html page which will end up in corrupt download. The
    locations<br>
    &nbsp;&nbsp;&nbsp; have changed for archives and here we point the mirror to right<br>
    &nbsp;&nbsp;&nbsp; location.<br>
    &nbsp;&nbsp;&nbsp; <br>
    &nbsp;&nbsp;&nbsp; (From OE-Core rev: 15e8aa4cd773022b36a66f70e4f6436289f3d1bc)<br>
    &nbsp;&nbsp;&nbsp; <br>
    &nbsp;&nbsp;&nbsp; Signed-off-by: Khem Raj <a class="moz-txt-link-rfc2396E" href="mailto:raj.khem@gmail.com">&lt;raj.khem@gmail.com&gt;</a><br>
    &nbsp;&nbsp;&nbsp; Signed-off-by: Richard Purdie
    <a class="moz-txt-link-rfc2396E" href="mailto:richard.purdie@linuxfoundation.org">&lt;richard.purdie@linuxfoundation.org&gt;</a><br>
    <br>
    <br>
    <br>
    Richard, do you think you can push it into the denzil branch?<br>
    Thanks<br>
    <br>
    <br>
    <blockquote
cite="mid:CAK18fxHBCrv-Ts_4+rdjz9Twd-nBvtmLe0X+7PppEuMruYJeNA@mail.gmail.com"
      type="cite">
      <div><br>
        <div class="gmail_quote">On Wed, May 23, 2012 at 12:04 PM,
          Foinel <span dir="ltr">&lt;<a moz-do-not-send="true"
              href="mailto:flocirel@gmail.com" target="_blank">flocirel@gmail.com</a>&gt;</span>
          wrote:<br>
          <blockquote class="gmail_quote" style="margin:0 0 0
            .8ex;border-left:1px #ccc solid;padding-left:1ex">
            Hello,<br>
            I'm trying to use the denzil branch and encounter some
            issues with a<br>
            package. netbase to be more precise. On upstream, netbase
            4.47 does<br>
            not exist anymore. So it automatically tries a mirror to
            download<br>
            netbase 4.47. It ends up fetching the package from<br>
            <a moz-do-not-send="true"
href="http://snapshot.debian.net/archive/pool/n/netbase/netbase_4.47.tar.gz"
              target="_blank">http://snapshot.debian.net/archive/pool/n/netbase/netbase_4.47.tar.gz</a><br>
            . The package from this mirror seems broken though and
            do_unpack fails<br>
            with "gzip: stdin: not in gzip format"<br>
            Now my question is: why doesn't it uses<br>
            <a moz-do-not-send="true"
              href="http://downloads.yoctoproject.org/mirror/sources/"
              target="_blank">http://downloads.yoctoproject.org/mirror/sources/</a>
            ? Which is the<br>
            scenario when it fetches from the yoctoproject mirror?<br>
            <br>
            Thanks.<br>
            _______________________________________________<br>
            poky mailing list<br>
            <a moz-do-not-send="true"
              href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
            <a moz-do-not-send="true"
              href="https://lists.yoctoproject.org/listinfo/poky"
              target="_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
          </blockquote>
        </div>
        <br>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------050803040904030009010008--
