Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 045E84C804FF
	for <poky@yoctoproject.org>; Tue, 26 Apr 2011 00:39:51 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3Q5dp7e024510
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 25 Apr 2011 22:39:51 -0700 (PDT)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Mon, 25 Apr 2011 22:39:50 -0700
Message-ID: <4DB65AB6.4040208@windriver.com>
Date: Tue, 26 Apr 2011 13:40:06 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Hatle, Mark" <mark.hatle@windriver.com>
References: <4DB0F192.6020809@windriver.com> <4DB620F5.3010709@windriver.com>
In-Reply-To: <4DB620F5.3010709@windriver.com>
X-Originating-IP: [128.224.163.157]
Cc: poky@yoctoproject.org
Subject: Re: About minimal image
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
X-List-Received-Date: Tue, 26 Apr 2011 05:39:52 -0000
Content-Type: multipart/alternative;
	boundary="------------060505090105050102030403"

--------------060505090105050102030403
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Mark,

> I have read your mail about minimal image posted on Feb 19 on this 
> mail list.  We try to reduce image size by what your said:
>
>    1. eglic configurability
>    2. using mklibs
>
>
> Right now after migrate eglic configurability to my local yocto 
> branch, and I only enable 4 options ("locale-code nsswitch rtld-debug 
> posix-clang-wchar ", pls. check in attachment) of eglibc just to make 
> compile pass.
>
> When after create minimal image, the rootfs (tar.bz2) is still about 
> 3.4M, same size as without adding  configurability to eglibc.
>
> Could you give me some directions what should we do in next step? We 
> also hope some information about how to use mklibs to reduce packages 
> and image size?
After open MKLIBS_OPTIMIZED_IMAGES ?= "core-image-minimal" in 
local.conf, the minimal image decrease from 3.4M to 3.1M, after 
extraction is 8.1M( vs. 8.4M before using mklibs). It looks like not so 
efficient as we expected.

Should I try to reduce busybox size at same time?Such as remove some not 
so usually used commands by configurations?

Any suggestion or guild will be appreciate!

Thanks and Regards,
Kai
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--------------060505090105050102030403
Content-Type: text/html; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    Hi Mark,<br>
    <br>
    <blockquote cite="mid:4DB620F5.3010709@windriver.com" type="cite"> I
      have read your mail about minimal image posted on Feb 19 on this
      mail list.&nbsp; We try to reduce image size by what your said:<br>
      <br>
      <ol>
        <li>eglic configurability</li>
        <li>using mklibs<br>
        </li>
      </ol>
      <br>
      Right now after migrate eglic configurability to my local yocto
      branch, and I only enable 4 options ("locale-code nsswitch
      rtld-debug posix-clang-wchar ", pls. check in attachment) of
      eglibc just to make compile pass.<br>
      <br>
      When after create minimal image, the rootfs (tar.bz2) is still
      about 3.4M, same size as without adding&nbsp; configurability to
      eglibc. <br>
      <br>
      Could you give me some directions what should we do in next step?
      We also hope some information about how to use mklibs to reduce
      packages and image size?<br>
    </blockquote>
    After open MKLIBS_OPTIMIZED_IMAGES ?= "core-image-minimal" in
    local.conf, the minimal image decrease from 3.4M to 3.1M, after
    extraction is 8.1M( vs. 8.4M before using mklibs). It looks like not
    so efficient as we expected. <br>
    <br>
    Should I try to reduce busybox size at same time?Such as remove some
    not so usually used commands by configurations?<br>
    <br>
    Any suggestion or guild will be appreciate!<br>
    <br>
    Thanks and Regards,<br>
    Kai<br>
    <blockquote cite="mid:4DB620F5.3010709@windriver.com" type="cite"> <br>
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

--------------060505090105050102030403--
