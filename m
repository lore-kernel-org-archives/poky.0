Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3036E00746
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 02:28:06 -0700 (PDT)
Received: from [192.168.0.57] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id B12232A701
	for <poky@yoctoproject.org>; Thu, 22 Mar 2012 08:43:37 +0000 (GMT)
Message-ID: <4F6AF0AD.4060000@communistcode.co.uk>
Date: Thu, 22 Mar 2012 09:28:13 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120314 Thunderbird/11.0
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <7E29EF69110C17499E6B3A9844CD4FD91341F783@szxeml526-mbs.china.huawei.com>
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD91341F783@szxeml526-mbs.china.huawei.com>
Subject: Re: [question]how to defined my own distro
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
X-List-Received-Date: Thu, 22 Mar 2012 09:28:07 -0000
X-Groupsio-MsgNum: 7560
Content-Type: multipart/alternative;
	boundary="------------090402050606090405040303"

--------------090402050606090405040303
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 22/03/12 07:27, Wangdawei (Sivan) wrote:
>
> Hi guys,
>
> I want to build a rootfs , that I can decide which package I will 
> build into the image . is there some config file to do this ?I can't 
> find the config file in poky . Is there any way to complete this ?for 
> example I just want to build busybox and glibc for my image ,how can I 
> config this ?
>
> Best Regards
>
> *kyle sivan*
>
> Huawei Technologies Co., Ltd.**
>
> cell phone: +86-18665326540
>
> (Office) 755-28384495
>
> /sivan.wang@huawei.com/ <mailto:sivan.wang@huawei.com>
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Hi Kyle,

There are reams of documentation that people have worked very hard on, 
which are be located here: http://www.yoctoproject.org/documentation. 
One of them covers adding packages to your build.

Regards,
Jack.

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


--------------090402050606090405040303
Content-Type: multipart/related;
 boundary="------------040005030804040001080605"

--------------040005030804040001080605
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    On 22/03/12 07:27, Wangdawei (Sivan) wrote:
    <blockquote
cite="mid:7E29EF69110C17499E6B3A9844CD4FD91341F783@szxeml526-mbs.china.huawei.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <!--[if !mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]-->
      <style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe Script";
	panose-1:2 11 5 4 2 0 0 0 0 3;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"\6279\6CE8\6846\6587\672C Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:9.0pt;
	font-family:"Calibri","sans-serif";}
span.Char
	{mso-style-name:"\6279\6CE8\6846\6587\672C Char";
	mso-style-priority:99;
	mso-style-link:\6279\6CE8\6846\6587\672C;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal" style="text-align:left" align="left"><span
            lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Hi guys,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
              style="color:#1F497D">I want to build a rootfs , that I
              can decide which package I will build into the image . is
              there some config file to do this ?I can&#8217;t find the config
              file in poky . Is there any way to complete this ?for
              example I just want to build busybox and glibc for my
              image ,how can I config this ?</span><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal" style="text-align:left;text-autospace:none"
          align="left"><span style="font-size:11.0pt;color:#004080"
            lang="EN-US">Best Regards<o:p></o:p></span></p>
        <p class="MsoNormal" style="text-align:left;text-autospace:none"
          align="left"><span style="font-size:11.0pt;color:#004080"
            lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal" style="text-align:left;text-autospace:none"
          align="left"><b><span
              style="font-size:11.0pt;font-family:&quot;Segoe
              Script&quot;,&quot;sans-serif&quot;;color:black"
              lang="EN-US">kyle sivan<o:p></o:p></span></b></p>
        <p class="MsoNormal" style="text-align:left;text-autospace:none"
          align="left"><span
            style="font-size:10.0pt;font-family:&quot;Comic Sans
            MS&quot;;color:#333333" lang="EN-US">Huawei Technologies
            Co., Ltd.</span><b><span
              style="font-size:10.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:black" lang="EN-US"><o:p></o:p></span></b></p>
        <p class="MsoNormal" style="text-align:left;text-autospace:none"
          align="left"><span
            style="font-size:10.0pt;font-family:&quot;Comic Sans
            MS&quot;;color:#004080" lang="EN-US">cell phone:
            +86-18665326540<o:p></o:p></span></p>
        <p class="MsoNormal" style="text-align:left;text-autospace:none"
          align="left"><span
            style="font-size:10.0pt;font-family:&quot;Comic Sans
            MS&quot;;color:#004080" lang="EN-US">(Office) 755-28384495<o:p></o:p></span></p>
        <p class="MsoNormal" style="text-align:left;text-autospace:none"
          align="left"><span
            style="font-size:10.0pt;font-family:&quot;Comic Sans
            MS&quot;;color:#004080" lang="EN-US"><a
              moz-do-not-send="true" href="mailto:sivan.wang@huawei.com"><i><span
                  style="text-shadow:auto">sivan.wang@huawei.com</span></i></a></span><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,&quot;serif&quot;;color:black;text-shadow:auto"
            lang="EN-US">
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,&quot;serif&quot;;color:black;text-shadow:auto"
            lang="EN-US"><img id="_x56fe__x7247__x0020_1"
              src="cid:part2.08010005.06020201@communistcode.co.uk"
              height="79" width="87" border="0"></span><span
            lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
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
    <tt><br>
      Hi Kyle,<br>
      <br>
      There are reams of documentation that people have worked very hard
      on, which are be located here:
      <a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/documentation">http://www.yoctoproject.org/documentation</a>. One of them covers
      adding packages to your build.<br>
      <br>
      Regards,<br>
      Jack.<br>
    </tt><br>
    <pre class="moz-signature" cols="72">-- 

  Jack Mitchell (<a class="moz-txt-link-abbreviated" href="mailto:jack@embed.me.uk">jack@embed.me.uk</a>)             
  Embedded Systems Engineer
  <a class="moz-txt-link-freetext" href="http://www.embed.me.uk">http://www.embed.me.uk</a>

--
</pre>
  </body>
</html>

--------------040005030804040001080605
Content-Type: image/png
Content-Transfer-Encoding: base64
Content-ID: <part2.08010005.06020201@communistcode.co.uk>

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
d3/ofdQ/AHIkg9bc73HOAAAAAElFTkSuQmCC

--------------040005030804040001080605--

--------------090402050606090405040303--
