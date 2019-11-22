Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2121.1574446259157467329
 for <poky@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 10:10:59 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=jAoOxEeV;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5879E00E45; Fri, 22 Nov 2019 10:10:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A697E00A9A
	for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:10:57 -0800 (PST)
Received: by mail-pf1-f182.google.com with SMTP id s5so3828451pfh.9
        for <poky@yoctoproject.org>; Fri, 22 Nov 2019 10:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=9N3lxoxhbXXlGWsWBRGqSohBUk7U7JwLhFWyJ/1dkp4=;
        b=jAoOxEeV2tGJEP6kI5NeWxPT/6oM1PzZDrtRbTFO1adzAbPQNLadNJmEMQ94YP/HUk
         AN4qiC4rOfIE/IV7t9U51P23jG6Gahaq8xBAgq0BrFBGOZ93BIT8CfpknnSfhTrdQkiI
         1xaneCbiUsvglVQaygq5UfNSdqIVWHGsOzrIq4xuob/nCsDygm5JVM9d4nCMjGW7mBz7
         MR8wNwOmI+RkUEAzcpNHaltAbPVKpZtASlg1WUI41TVBiOeX3Fk0Vx7qsGxXFRGhTdPG
         E5ctg9efGDiZiEbENeliBVro7q0FIcmVMJIqAj5JoQn8w7D+IxVUK++pzhqKHFLle71V
         xe6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=9N3lxoxhbXXlGWsWBRGqSohBUk7U7JwLhFWyJ/1dkp4=;
        b=XsbiPcH/YkgeeqjSAQ7x8KNaaY8VuveAOeRtW1MvCycte5ICCGPxdEMGoeWbBkgDhy
         sqd4tqnuoAn6nLbPfNQ8BMGpZctJjGlQQCMJ2grr658uwI3kpYtIzS3/4SN59F1i7773
         mYZdQqWbF8RJD5UBnn/ji161k8/qV5pNAJ4q+5NcokybP5ok0snhHdJ1wHMwhH+Rk4c9
         NFlzQRWUG29Cphzg2DdXQjBU/Y+F1yNgDbUAfZzHPlKto12PBirKJXskvXDhqyWcgwxj
         bel9HrmULdKwIJ4tgHW8OEFtdEOWGSQGVY3GenIf0GFJ+TVlgqfgVtExkVlDpNUSnMVe
         s2Zg==
X-Gm-Message-State: APjAAAUVJ3a0HZQy568ZjjyRHohzveyaJXBq9MrnWMI75cBzX7Vi8zH2
	+tc1ldKGdQgJAjjYfHYryWg=
X-Google-Smtp-Source: APXvYqz4n6GnMl9kEPI9RXyuZitiO5HkqU9Il8i8pHYumnIEy1RmBwHQL4+HRxNTcUu0fyyOdzBo9Q==
X-Received: by 2002:a63:fb03:: with SMTP id o3mr17299396pgh.378.1574446256603;
        Fri, 22 Nov 2019 10:10:56 -0800 (PST)
Received: from ?IPv6:2601:202:4180:a5c0:d5a1:4623:137e:d439? ([2601:202:4180:a5c0:d5a1:4623:137e:d439])
        by smtp.gmail.com with ESMTPSA id u20sm7610499pgo.50.2019.11.22.10.10.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Nov 2019 10:10:56 -0800 (PST)
Subject: Re: [poky] Python2 maintenance will expired
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
 Junling Zheng <zhengjunling@huawei.com>, poky@yoctoproject.org
Cc: Wang Nan <wangnan0@huawei.com>
References: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
 <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <b276c80f-16ac-e84a-906d-ba1576d09117@gmail.com>
Date: Fri, 22 Nov 2019 10:10:54 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundation.org>
Content-Type: multipart/alternative;
 boundary="------------3621F1DC86678A77DC5B384A"
Content-Language: en-US

--------------3621F1DC86678A77DC5B384A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 11/21/19 12:35 AM, Richard Purdie wrote:
> Hi,
>
> On Thu, 2019-11-21 at 15:18 +0800, Junling Zheng wrote:
>> Python 2.7 will not be maintained past January 1, 2020 :(
>>
>> Some codes in yocto/poky are not compatible with Python 3.
>>
>> Does yocto/poky have any measures for this?
> The project has been working hard to remove python2 dependencies where
> we can and in OE-Core, on target usage has been removed and at build
> time, u-boot is one of the main remaining pieces that still needs it.
> Their next release should address that issue.
>
> There is still a need for python2 in HOSTTOOLS but that is also being
> looked at.
>
> People with time to work on issues like this are in short supply so any=

> help in fixing the remaining issues would be much appreciated.

We have several defects open to track the Python2 issue within core.=C2=A0=
 We
could use help so please add yourself to a bug you are interested in
getting it resolved. Since this issue seems to be of interest to many
folks, now is your time to shine.

Remove python2 recipe from core:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13640

Remove python2 from HOSTTOOLS:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13641

python-native needs python2 on host:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13645

u-boot uses python2 :
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13439

Get rid of python2 runtime dependencies for all recipes in oe-core: Fixed=

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13549

- Armin

>
> Cheers,
>
> Richard
>


--------------3621F1DC86678A77DC5B384A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <br>
    <br>
    <div class=3D"moz-cite-prefix">On 11/21/19 12:35 AM, Richard Purdie
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundatio=
n.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">Hi,

On Thu, 2019-11-21 at 15:18 +0800, Junling Zheng wrote:
</pre>
      <blockquote type=3D"cite">
        <pre class=3D"moz-quote-pre" wrap=3D"">Python 2.7 will not be mai=
ntained past January 1, 2020 :(

Some codes in yocto/poky are not compatible with Python 3.

Does yocto/poky have any measures for this?
</pre>
      </blockquote>
      <pre class=3D"moz-quote-pre" wrap=3D"">
The project has been working hard to remove python2 dependencies where
we can and in OE-Core, on target usage has been removed and at build
time, u-boot is one of the main remaining pieces that still needs it.
Their next release should address that issue.

There is still a need for python2 in HOSTTOOLS but that is also being
looked at.

People with time to work on issues like this are in short supply so any
help in fixing the remaining issues would be much appreciated.</pre>
    </blockquote>
    <br>
    We have several defects open to track the Python2 issue within
    core.=C2=A0 We could use help so please add yourself to a bug you are
    interested in getting it resolved. Since this issue seems to be of
    interest to many folks, now is your time to shine.<br>
    <br>
    <span id=3D"summary_alias_container"><span
        id=3D"short_desc_nonedit_display">Remove python2 recipe from core=
:<br>
        <a class=3D"moz-txt-link-freetext" href=3D"https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D13640">https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D13640</a><br>
        <br>
      </span></span><span id=3D"summary_alias_container"> <span
        id=3D"short_desc_nonedit_display">Remove python2 from HOSTTOOLS:<=
br>
        <a class=3D"moz-txt-link-freetext" href=3D"https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D13641">https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D13641</a><br>
      </span></span><br>
    <span id=3D"summary_alias_container"> <span
        id=3D"short_desc_nonedit_display">python-native needs python2 on
        host:</span></span><br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D13645">https://bugzilla.yoctoproject.org/show_b=
ug.cgi?id=3D13645</a><br>
    <br>
    <span id=3D"summary_alias_container"><span
        id=3D"short_desc_nonedit_display">u-boot uses python2</span> :<br=
>
      <a class=3D"moz-txt-link-freetext" href=3D"https://bugzilla.yoctopr=
oject.org/show_bug.cgi?id=3D13439">https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D13439</a><br>
    </span><br>
    <span id=3D"summary_alias_container"><span
        id=3D"short_desc_nonedit_display">Get rid of python2 runtime
        dependencies for all recipes in oe-core: Fixed<br>
        <a class=3D"moz-txt-link-freetext" href=3D"https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D13549">https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D13549</a><br>
        <br>
      </span></span>- Armin<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:d5aac15a1c87981785f589046a6e8ead05c09e70.camel@linuxfoundatio=
n.org">
      <pre class=3D"moz-quote-pre" wrap=3D"">

Cheers,

Richard

</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------3621F1DC86678A77DC5B384A--
