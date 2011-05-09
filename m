Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2C43D4C8026D
	for <poky@yoctoproject.org>; Mon,  9 May 2011 03:19:04 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p498J005005016
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 May 2011 01:19:00 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 9 May 2011 01:19:00 -0700
Message-ID: <4DC7A359.6070907@windriver.com>
Date: Mon, 9 May 2011 16:18:33 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: Marc <mbalcells@gmail.com>
References: <BANLkTi=rUWJxJrcP8L5HBOo7+MwXMkPRew@mail.gmail.com>
In-Reply-To: <BANLkTi=rUWJxJrcP8L5HBOo7+MwXMkPRew@mail.gmail.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: help adding perl module
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
X-List-Received-Date: Mon, 09 May 2011 08:19:04 -0000
Content-Type: multipart/alternative;
	boundary="------------070106040600000107090305"

--------------070106040600000107090305
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Marc,

> Hello, I would like to add a perl module which is not included in 
> poky, which is the best aproach? should I create a recipe or modify 
> perl recipe?
> anybody has an example?
Please check whether http://git.openembedded.net/ has it already, 
otherwise maybe need to create a new recipe.

>
> Thank's
>
> -- 
> Marc.

Regards,
Kai
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--------------070106040600000107090305
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    Hi Marc, <br>
    <br>
    <blockquote
      cite="mid:BANLkTi=rUWJxJrcP8L5HBOo7+MwXMkPRew@mail.gmail.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      Hello, I would like to add a perl module which is not included in
      poky, which is the best aproach? should I create a recipe or
      modify perl recipe?
      <div>anybody has an example?</div>
    </blockquote>
    Please check whether <a class="moz-txt-link-freetext" href="http://git.openembedded.net/">http://git.openembedded.net/</a> has it already,
    otherwise maybe need to create a new recipe.<br>
    <br>
    <blockquote
      cite="mid:BANLkTi=rUWJxJrcP8L5HBOo7+MwXMkPRew@mail.gmail.com"
      type="cite">
      <div><br>
      </div>
      <div>Thank's<br clear="all">
        <br>
        -- <br>
        Marc.<br>
      </div>
    </blockquote>
    <br>
    Regards,<br>
    Kai<br>
    <blockquote
      cite="mid:BANLkTi=rUWJxJrcP8L5HBOo7+MwXMkPRew@mail.gmail.com"
      type="cite">
      <div>
      </div>
      <pre wrap="">
<fieldset class="mimeAttachmentHeader"></fieldset>
_______________________________________________
poky mailing list
<a class="moz-txt-link-abbreviated" href="mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/poky">https://lists.yoctoproject.org/listinfo/poky</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------070106040600000107090305--
