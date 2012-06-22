Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B202E01437
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 01:53:50 -0700 (PDT)
Received: from [192.168.0.46] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 13CB4600CD
	for <poky@yoctoproject.org>; Fri, 22 Jun 2012 08:39:22 +0100 (BST)
Message-ID: <4FE432CE.9020407@communistcode.co.uk>
Date: Fri, 22 Jun 2012 09:54:38 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120616 Thunderbird/13.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <9F69795E29C890408AC2DAF646C89BB379D8AB96AC@MAILBOX.arc.local>
In-Reply-To: <9F69795E29C890408AC2DAF646C89BB379D8AB96AC@MAILBOX.arc.local>
Subject: Re: Installing shared libraries for custom application
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
X-List-Received-Date: Fri, 22 Jun 2012 08:53:51 -0000
Content-Type: multipart/alternative;
	boundary="------------050108080007040801010102"

--------------050108080007040801010102
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 22/06/12 09:38, Fletzer Martin wrote:
>
> Hello everybody,
>
> I'm already working with Poky for serveral months. Nice tool.
>
> But now I'm not able to install shared libraries of ncurses for a 
> custom image. Namely libform, libmenu, and libpanel.
>
> I always get a "Error: Nothing PROVIDES ..."
>
> I tried to extend my image recipie with IMAGE_INSTALL += "libform".
>
> I also tried libform5 and ncurses-libform.
>
> But libtinfo5 is already installed, because bash depends on it.
>
> If I try to install libtinfo manually with IMAGE_INSTALL, I get the 
> same error as with libform.
>
> How can I install this  shared libraries to a custom image?
>
> Thanks,
>
> Martin
>
> *MARTIN FLETZER
> *Engineer
>
> Safety & Security Department
> Video and Security Technology
>
> *AIT Austrian Institute of Technology GmbH
> *M +43 664 8251090 |  F +43 50550-4150
>
> Donau-City-Straße 1  |  1220 Vienna  | Austria
> _martin.fletzer@ait.ac.at <mailto:martin.fletzer@ait.ac.at>_ | 
> _http://www.ait.ac.at <http://www.ait.ac.at/>__
> _
> FN: 115980 i HG Wien  |  UID: ATU14703506
> This email and any attachments thereto, is intended only for use by 
> the addressee(s) named herein and may contain legally privileged 
> and/or confidential information. If you are not the intended 
> recipient, please notify the sender by return e-mail or by telephone 
> and delete this message from your system and any printout thereof. Any 
> unauthorized use, reproduction, or dissemination of this message is 
> strictly prohibited. Please note that e-mails are susceptible to 
> change. AIT Austrian Institute of Technology GmbH shall not be liable 
> for the improper or incomplete transmission of the information 
> contained in this communication, nor shall it be liable for any delay 
> in its receipt.
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

Hi Martin,

 From a quick grep of my recipes directory it seems as though these 
libraries need to be pre-fixed with ncurses. For example:

ncurses-libform

See how that treats you!

Regards,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


--------------050108080007040801010102
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 22/06/12 09:38, Fletzer Martin
      wrote:<br>
    </div>
    <blockquote
      cite="mid:9F69795E29C890408AC2DAF646C89BB379D8AB96AC@MAILBOX.arc.local"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hello everybody,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">I&#8217;m already working with Poky for serveral
          months. Nice tool.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">But now I&#8217;m not able to install shared
          libraries of ncurses for a custom image. Namely libform,
          libmenu, and libpanel.<o:p></o:p></p>
        <p class="MsoNormal">I always get a &#8222;Error: Nothing PROVIDES &#8230;&#8220;<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">I tried to extend my image recipie with
          IMAGE_INSTALL += "libform".<o:p></o:p></p>
        <p class="MsoNormal">I also tried libform5 and ncurses-libform.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">But libtinfo5 is already installed, because
          bash depends on it.<o:p></o:p></p>
        <p class="MsoNormal">If I try to install libtinfo manually with
          IMAGE_INSTALL, I get the same error as with libform.<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">How can I install this &nbsp;shared libraries to
          a custom image?<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Thanks,<o:p></o:p></p>
        <p class="MsoNormal">Martin<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-language:DE-AT"
              lang="EN-US">MARTIN FLETZER<br>
            </span></b><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#7B8287;mso-fareast-language:DE-AT"
            lang="EN-US">Engineer<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#7B8287;mso-fareast-language:DE-AT"
            lang="EN-US">Safety &amp; Security Department<br>
            Video and&nbsp;Security Technology<br>
          </span><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-language:DE-AT"
            lang="EN-US"><br>
            <b><span style="color:#7B8287">AIT Austrian Institute of
                Technology GmbH<br>
              </span></b><span style="color:#7B8287">M +43 664 8251090&nbsp;
              |&nbsp; F +43 50550-4150<o:p></o:p></span></span></p>
        <p class="MsoNormal"><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#7B8287;mso-fareast-language:DE-AT"
            lang="EN-US">Donau-City-Stra&szlig;e 1 &nbsp;| &nbsp;1220 Vienna &nbsp;| Austria<br>
          </span><u><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0000FE;mso-fareast-language:DE-AT"
              lang="EN-US"><a moz-do-not-send="true"
                href="mailto:martin.fletzer@ait.ac.at"><span
                  style="color:blue">martin.fletzer@ait.ac.at</span></a></span></u><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#7E7E7E;mso-fareast-language:DE-AT"
            lang="EN-US"> &nbsp;| &nbsp;</span><u><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0000FE;mso-fareast-language:DE-AT"><a
                moz-do-not-send="true" href="http://www.ait.ac.at/"><span
                  style="color:blue" lang="EN-US">http://www.ait.ac.at</span></a></span></u><u><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#0000FE;mso-fareast-language:DE-AT"
              lang="EN-US"><br>
            </span></u><span
style="font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#7F7F7F;mso-fareast-language:DE-AT"
            lang="EN-US"><br>
          </span><span
style="font-size:9.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;color:#BDBDBD;mso-fareast-language:DE-AT"
            lang="EN-US">FN: 115980 i HG Wien &nbsp;| &nbsp;UID: ATU14703506<br>
            This email and any attachments thereto, is intended only for
            use by the addressee(s) named herein and may contain legally
            privileged and/or confidential information. If you are not
            the intended recipient, please notify the sender by return
            e-mail or by telephone and delete this message from your
            system and any printout thereof. Any unauthorized use,
            reproduction, or dissemination of this message is strictly
            prohibited. Please note that e-mails are susceptible to
            change. AIT Austrian Institute of Technology GmbH shall not
            be liable for the improper or incomplete transmission of the
            information contained in this communication, nor shall it be
            liable for any delay in its receipt.</span><span
            style="mso-fareast-language:DE-AT"><o:p></o:p></span></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
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
      Hi Martin,<br>
      <br>
      From a quick grep of my recipes directory it seems as though these
      libraries need to be pre-fixed with ncurses. For example:<br>
      <br>
      ncurses-libform<br>
      <br>
      See how that treats you!<br>
      <br>
      Regards,</tt><br>
    <pre class="moz-signature" cols="72">-- 

  Jack Mitchell (<a class="moz-txt-link-abbreviated" href="mailto:jack@embed.me.uk">jack@embed.me.uk</a>)             
  Embedded Systems Engineer
  <a class="moz-txt-link-freetext" href="http://www.embed.me.uk">http://www.embed.me.uk</a>

--
</pre>
  </body>
</html>

--------------050108080007040801010102--
