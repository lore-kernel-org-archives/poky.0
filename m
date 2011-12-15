Return-Path: <andrei@gherzan.ro>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16E12E00748
	for <poky@yoctoproject.org>; Thu, 15 Dec 2011 09:49:39 -0800 (PST)
Received: by ghbz10 with SMTP id z10so2184831ghb.35
	for <poky@yoctoproject.org>; Thu, 15 Dec 2011 09:49:38 -0800 (PST)
Received: by 10.101.137.11 with SMTP id p11mr1709236ann.27.1323971378253;
	Thu, 15 Dec 2011 09:49:38 -0800 (PST)
Received: from [128.224.170.203] ([89.121.200.106])
	by mx.google.com with ESMTPS id i50sm9885781yhk.11.2011.12.15.09.49.36
	(version=SSLv3 cipher=OTHER); Thu, 15 Dec 2011 09:49:37 -0800 (PST)
Message-ID: <4EEA332F.7020400@gherzan.ro>
Date: Thu, 15 Dec 2011 19:49:35 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:8.0) Gecko/20111124 Thunderbird/8.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <2CAE6214820FEA4A9FEB26C2710C44F43EA05076@exchange.ewl.local>
In-Reply-To: <2CAE6214820FEA4A9FEB26C2710C44F43EA05076@exchange.ewl.local>
Subject: Re: build issue with pthread
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
X-List-Received-Date: Thu, 15 Dec 2011 17:49:41 -0000
Content-Type: multipart/alternative;
	boundary="------------010808050104010002010603"

--------------010808050104010002010603
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/15/2011 03:46 AM, Rajkumar Arjunan wrote:
>
> Hi,
>
> I am very new to Yacto project.
>
> I am getting compilation error as "*undefined reference to 
> `pthread_create'" *during build.**
>
> I have added -*lpthread* libraray in my makefile to build. Still I 
> have issue.
>
> Please explain how to add library in poky build environment.
>
> I have added 3G.bb file and the build output for reference below.
>
> *Note:-*No error  If I compile the same source by my desktop Ubuntu 
> native compiler *"/usr/bin/gcc"*
>
> *MY 3G.bb file:-*
>
> SUMMARY = "3G API library and Application"
>
> DESCRIPTION = " "
>
> DEPENDS = ""
>
> RDEPENDS_${PN}-dev = ""
>
> LICENSE = "GPLv2+"
>
> LIC_FILES_CHKSUM = "file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"
>
> SRCREV = "e9078f6e99dde4a90828fa16978ef76897e721a1"
>
> SRC_URI = "file://3G-1.1.tar.gz"
>
> S = "${WORKDIR}/3G-1.1/"
>
> EXTRA_OEMAKE = "'CC=${CC}' 'CFLAGS=${CFLAGS} -I${S}/include 
> -DWITHOUT_XATTR' 'BUILDDIR=${S}'"
>
> do_compile() {
>
>                 oe_runmake -f pkgs.mak
>
> }
>
> do_install () {
>
>                 oe_runmake install DESTDIR=${D} SBINDIR=${sbindir}
>
> }
>
>

Just fix your makefile with -pthread.

--------------010808050104010002010603
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 12/15/2011 03:46 AM, Rajkumar Arjunan wrote:
    <blockquote
      cite="mid:2CAE6214820FEA4A9FEB26C2710C44F43EA05076@exchange.ewl.local"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">I am very new to Yacto project.<o:p></o:p></p>
        <p class="MsoNormal">I am getting compilation error as &#8220;<b>undefined
            reference to `pthread_create'&#8221; &nbsp;</b>during build.<b><o:p></o:p></b></p>
        <p class="MsoNormal">I have added -<b>lpthread</b> libraray in
          my makefile to build. Still I have issue.<o:p></o:p></p>
        <p class="MsoNormal">Please explain how to add library in poky
          build environment.
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">I have added 3G.bb file and the build
          output for reference below.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><b>Note:-</b>No error &nbsp;If I compile the
          same source by my desktop Ubuntu native compiler
          <b>&#8221;/usr/bin/gcc&#8221;</b><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><b>MY 3G.bb file:-<o:p></o:p></b></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">SUMMARY = "3G API library and Application"<o:p></o:p></p>
        <p class="MsoNormal">DESCRIPTION = " "<o:p></o:p></p>
        <p class="MsoNormal">DEPENDS = ""<o:p></o:p></p>
        <p class="MsoNormal">RDEPENDS_${PN}-dev = ""<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">LICENSE = "GPLv2+"<o:p></o:p></p>
        <p class="MsoNormal">LIC_FILES_CHKSUM =
          <a class="moz-txt-link-rfc2396E" href="file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1">"file://LICENSE;md5=2d5025d4aa3495befef8f17206a5b0a1"</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">SRCREV =
          "e9078f6e99dde4a90828fa16978ef76897e721a1"<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">SRC_URI = <a class="moz-txt-link-rfc2396E" href="file://3G-1.1.tar.gz">"file://3G-1.1.tar.gz"</a><o:p></o:p></p>
        <p class="MsoNormal">S = "${WORKDIR}/3G-1.1/"<o:p></o:p></p>
        <p class="MsoNormal">EXTRA_OEMAKE = "'CC=${CC}'
          'CFLAGS=${CFLAGS} -I${S}/include -DWITHOUT_XATTR'
          'BUILDDIR=${S}'"<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">do_compile() {<o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runmake -f pkgs.mak <o:p></o:p></p>
        <p class="MsoNormal">}<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">do_install () {<o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; oe_runmake install
          DESTDIR=${D} SBINDIR=${sbindir}
          <o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">}<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
    Just fix your makefile with -pthread.
  </body>
</html>

--------------010808050104010002010603--
