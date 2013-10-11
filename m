Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37BE8E01653
	for <poky@yoctoproject.org>; Thu, 10 Oct 2013 20:06:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9B36pim022869
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Thu, 10 Oct 2013 20:06:51 -0700 (PDT)
Received: from [128.224.162.213] (128.224.162.213) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.347.0;
	Thu, 10 Oct 2013 20:06:51 -0700
Message-ID: <52576B65.3080704@windriver.com>
Date: Fri, 11 Oct 2013 11:07:17 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <7BDD69127112414F90CF3FED4711BF150D15A47EB5@IAD2MBX05.mex02.mlsrvr.com>
In-Reply-To: <7BDD69127112414F90CF3FED4711BF150D15A47EB5@IAD2MBX05.mex02.mlsrvr.com>
X-Originating-IP: [128.224.162.213]
Subject: Re: Add single user
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
X-List-Received-Date: Fri, 11 Oct 2013 03:06:53 -0000
Content-Type: multipart/alternative;
	boundary="------------040103070801010304050107"

--------------040103070801010304050107
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/11/2013 06:06 AM, Michael Davis wrote:
>
> I am attempting to add a single user to my poky build.  I am trying to 
> follow the useradd-example.bb layout but I cannot get bitbake to like 
> it.  My bb file looks like so:
>
> SUMMARY = "Add a user"
>
> DESCRIPTION = "This recipe will add a new user"
>
> PR = "r0"
>
> LICENSE = "MIT"
>
> LIC_FILES_CHKSUM = 
> "file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"
>
> S = "${WORKDIR}"
>
> inherit useradd
>
> USERADD_PACKAGES = "${PN}"
>
> USERADD_PARAM_${PN} = "--disabled-password hal"
>
> do_install () {
>
>            chown -R hal ${D}${datadir}/hal
>
> }
>
> FILES_${PN} = "${datadir}/hal/*"
>
> I have the useradd package specified as a dependency for a package 
> group which I am installing for my image.  When I bake, it attempts 
> do_rootfs but fails and spits out a huge log after which it simple 
> states that it couldn't satisfy dependencies for my package group and 
> and points the the useradd package.  Is there any obvious reason why 
> such a simple recipe like this would not work?  Thanks
>

Are you sure your package is not empty?
Maybe you want this in your recipe.
ALLOW_EMPTY_${PN} = "1"

Also, if you're only trying to add a user, use EXTRA_USERS_PARAMS in 
your conf file (assume you're using poky/master, i'm not sure whether 
dylan has this feature).

Best Regards,
Chen Qi

> -Mike
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--------------040103070801010304050107
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 10/11/2013 06:06 AM, Michael Davis
      wrote:<br>
    </div>
    <blockquote
cite="mid:7BDD69127112414F90CF3FED4711BF150D15A47EB5@IAD2MBX05.mex02.mlsrvr.com"
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
        <p class="MsoNormal">I am attempting to add a single user to my
          poky build.&nbsp; I am trying to follow the useradd-example.bb
          layout but I cannot get bitbake to like it.&nbsp; My bb file looks
          like so:<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">SUMMARY = "Add a user"<o:p></o:p></p>
        <p class="MsoNormal">DESCRIPTION = "This recipe will add a new
          user"<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">PR = "r0"<o:p></o:p></p>
        <p class="MsoNormal">LICENSE = "MIT"<o:p></o:p></p>
        <p class="MsoNormal">LIC_FILES_CHKSUM =
          <a class="moz-txt-link-rfc2396E" href="file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58">"file://${COREBASE}/LICENSE;md5=3f40d7994397109285ec7b81fdeb3b58"</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">S = "${WORKDIR}"<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">inherit useradd<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">USERADD_PACKAGES = "${PN}"<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">USERADD_PARAM_${PN} = "--disabled-password
          hal"<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">do_install () {<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chown -R hal ${D}${datadir}/hal<o:p></o:p></p>
        <p class="MsoNormal"> }<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">FILES_${PN} = "${datadir}/hal/*"<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">I have the useradd package specified as a
          dependency for a package group which I am installing for my
          image.&nbsp; When I bake, it attempts do_rootfs but fails and spits
          out a huge log after which it simple states that it couldn&#8217;t
          satisfy dependencies for my package group and and points the
          the useradd package.&nbsp; Is there any obvious reason why such a
          simple recipe like this would not work?&nbsp; Thanks<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
      </div>
    </blockquote>
    <br>
    Are you sure your package is not empty?<br>
    Maybe you want this in your recipe.<br>
    ALLOW_EMPTY_${PN} = "1"<br>
    <br>
    Also, if you're only trying to add a user, use EXTRA_USERS_PARAMS in
    your conf file (assume you're using poky/master, i'm not sure
    whether dylan has this feature).<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
    <blockquote
cite="mid:7BDD69127112414F90CF3FED4711BF150D15A47EB5@IAD2MBX05.mex02.mlsrvr.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal">-Mike<o:p></o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
poky mailing list
<a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------040103070801010304050107--
