Return-Path: <sreejith.naarakathil@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37952E00B66; Fri,  9 May 2014 01:00:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sreejith.naarakathil[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1229 seconds by postgrey-1.32 at yocto-www;
	Fri, 09 May 2014 01:00:33 PDT
Received: from mail-qc0-f171.google.com (unknown [209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05FBAE00B60
	for <poky@yoctoproject.org>; Fri,  9 May 2014 01:00:33 -0700 (PDT)
Received: by mail-qc0-f171.google.com with SMTP id x13so4140472qcv.16
	for <poky@yoctoproject.org>; Fri, 09 May 2014 01:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pEX+sGOCWPGNgN4cTx4Qj2WVcMZ789F5/rfbI3+CHZU=;
	b=cqAuM6h1+e7Z7jH5t7NAoY5kvGm2VPY20uIneY6JZN7dHMMviC/2ZRhOp51TEiCMrS
	b8Pt0rICAv/rvEIbBR5ylQX70a6MCh6h4h1LdezA7hSNU3B8kyCz/T0lvazx61ILdqcq
	Ww+cZBEKZYtZnvaMzTvTP/8lAsuiFOKdWA8ORLI2LNYBOCE1XSSESHiEluwFOLqbdUsq
	eIj+4hwsTOrWFrd9ekTljFJpHT2Hha9kOACH7Bo83YENVSM9rCY43TIhEVS6PBTEugQo
	Ry3tSsIWL0rkOkZUzinhLNVFJX2xOOQmbRF/ACnSDj0unFlBgV9BYmZrLOHBTht08Ubu
	IGkg==
MIME-Version: 1.0
X-Received: by 10.140.27.45 with SMTP id 42mr1067185qgw.94.1399620703999; Fri,
	09 May 2014 00:31:43 -0700 (PDT)
Received: by 10.96.206.136 with HTTP; Fri, 9 May 2014 00:31:43 -0700 (PDT)
Date: Fri, 9 May 2014 13:01:43 +0530
Message-ID: <CADFtRykSnQSPZ0rQqhpr8ehEWe19iCra1K03zYGTZiYn=u1nqw@mail.gmail.com>
From: Sreejith N <sreejith.naarakathil@gmail.com>
To: poky@yoctoproject.org
Subject: Build error when building image for core-image-sato
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
X-List-Received-Date: Fri, 09 May 2014 08:00:39 -0000
Content-Type: multipart/alternative; boundary=001a11c152f4e1d9f304f8f296b7

--001a11c152f4e1d9f304f8f296b7
Content-Type: text/plain; charset=UTF-8

Hi,
         I am new to yocto and trying to build my first image using the
instructions in the quick start guide,

https://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html

My build environment is Ubuntu 12.04.4 LTS. Build fails with the following
errors,

| i686-linux-libtool: link: (cd ".libs" && rm -f "libgettextsrc.so" && ln
-s "libgettextsrc-0.18.3.so" "libgettextsrc.so")
| ../gnulib-lib/.libs/libgettextlib.so: undefined reference to `libiconv'
| ../gnulib-lib/.libs/libgettextlib.so: undefined reference to
`libiconv_open'
| ../gnulib-lib/.libs/libgettextlib.so: undefined reference to
`libiconv_close'
| collect2: ld returned 1 exit status

Any help in this regard is greatly appreciated.

Thanks
Sreejith

--001a11c152f4e1d9f304f8f296b7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 I am new to yocto and trying to build my first image using the in=
structions in the quick start guide,<br><div><div><br><a href=3D"https://ww=
w.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.html">htt=
ps://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.ht=
ml</a><br>
<br></div><div>My build environment is Ubuntu 12.04.4 LTS. Build fails with=
 the following errors,<br><br>| i686-linux-libtool: link: (cd &quot;.libs&q=
uot; &amp;&amp; rm -f &quot;libgettextsrc.so&quot; &amp;&amp; ln -s &quot;<=
a href=3D"http://libgettextsrc-0.18.3.so">libgettextsrc-0.18.3.so</a>&quot;=
 &quot;libgettextsrc.so&quot;)<br>
| ../gnulib-lib/.libs/libgettextlib.so: undefined reference to `libiconv&#3=
9;<br>| ../gnulib-lib/.libs/libgettextlib.so: undefined reference to `libic=
onv_open&#39;<br>| ../gnulib-lib/.libs/libgettextlib.so: undefined referenc=
e to `libiconv_close&#39;<br>
| collect2: ld returned 1 exit status<br><br></div><div>Any help in this re=
gard is greatly appreciated.<br><br></div><div>Thanks<br>Sreejith<br></div>=
<div><br></div></div></div>

--001a11c152f4e1d9f304f8f296b7--
