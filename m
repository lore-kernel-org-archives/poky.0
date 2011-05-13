Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews02.kpnxchange.com (cpsmtpb-ews02.kpnxchange.com
	[213.75.39.5])
	by mx1.pokylinux.org (Postfix) with ESMTP id 590344C811B7
	for <poky@yoctoproject.org>; Fri, 13 May 2011 06:20:51 -0500 (CDT)
Received: from cpbrm-ews24.kpnxchange.com ([10.94.84.155]) by
	cpsmtpb-ews02.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 13 May 2011 13:20:50 +0200
Received: from CPSMTPM-CMT108.kpnxchange.com ([195.121.3.24]) by
	cpbrm-ews24.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Fri, 13 May 2011 13:20:50 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT108.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Fri, 13 May 2011 13:20:50 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits));
	Fri, 13 May 2011 13:20:49 +0200
Message-ID: <4DCD1414.2020806@de-haardt.com>
Date: Fri, 13 May 2011 13:20:52 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: "embedded.yogesh" <embedded.yogesh@gmail.com>
References: <4DCD107E.5010306@gmail.com>
In-Reply-To: <4DCD107E.5010306@gmail.com>
X-OriginalArrivalTime: 13 May 2011 11:20:50.0056 (UTC)
	FILETIME=[D043A080:01CC115F]
X-RcptDomain: yoctoproject.org
Cc: poky@yoctoproject.org
Subject: Re: Issue while building for zoom board
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
X-List-Received-Date: Fri, 13 May 2011 11:20:52 -0000
Content-Type: multipart/alternative;
	boundary="------------050409000303090200080803"

--------------050409000303090200080803
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/13/2011 01:05 PM, embedded.yogesh wrote:
> Hi,
>
> I am using bernard branch with meta-extras ( 
> git://git.pokylinux.org/meta-extras ).
> I made changes in conf/bblayers.conf as follows to make use of 
> meta-extras recipes:
>
> # LAYER_CONF_VERSION is increased each time build/conf/bblayers.conf
>
> # changes incompatibly
>
> LCONF_VERSION = "4"
>
>
> BBFILES ?= ""
>
> BBLAYERS = " \
>
>   /home/ylal/poky/meta \
>
>   /home/ylal/poky/meta-extras \
>
>   "
>
> While building I got following errors :-
>
> 1.  Error in createrepo-native_0.9.8.bb
>
> ERROR: This recipe does not have the LICENSE field set (createrepo-native)
> Error parsing 
> /home/ylal/poky/meta-extras/recipes/yum/createrepo-native_0.9.8.bb: 
> (SystemExit(1,), 
> '/home/ylal/poky/meta-extras/recipes/yum/createrepo-native_0.9.8.bb')
> ERROR: Command execution failed: Exited with 1
>
Hi,

The recipe doesn't have a LIC_FILES_CHKSUM variable yet and that is required.
By adding the following line to the recipe it should work:
LIC_FILES_CHKSUM = "file://COPYING;md5=18810669f13b87348459e611d31ab760"

This is the md5sum of the COPYING file that is located inside the package you are trying to install.
More information about this can be found here:
http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#usingpoky-specifying-LIC_FILES_CHKSUM

Regards,
Gerard

>
> 2.  Bitbake used to ignore these but no longer does so, please fix 
> your metadata as errors are likely as a result of this change.
> ERROR: Error parsing 
> /home/ylal/pds/poky/meta-extras/recipes/xorg-lib/libfs_1.0.1.bb: Could 
> not include required file xorg-lib-common.inc
>
>
> Can any one guide me ?
>
>
> ---
> Yogesh
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--------------050409000303090200080803
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    On 05/13/2011 01:05 PM, embedded.yogesh wrote:
    <blockquote cite="mid:4DCD107E.5010306@gmail.com" type="cite">
      <meta http-equiv="content-type" content="text/html;
        charset=ISO-8859-1">
      Hi,<br>
      <br>
      I am using bernard branch with meta-extras ( <a
        moz-do-not-send="true"
        href="git://git.pokylinux.org/meta-extras">git://git.pokylinux.org/meta-extras</a>
      ).<br>
      I made changes in conf/bblayers.conf as follows to make use of
      meta-extras recipes:<br>
      <br>
      <address># LAYER_CONF_VERSION is increased each time
        build/conf/bblayers.conf</address>
      <address># changes incompatibly</address>
      <address>LCONF_VERSION = "4" </address>
      <address><br>
        BBFILES ?= ""</address>
      <address>BBLAYERS = " \ </address>
      <address>&nbsp; /home/ylal/poky/meta \</address>
      <address>&nbsp; /home/ylal/poky/meta-extras \</address>
      <address>&nbsp; "</address>
      While building I got following errors :-<br>
      <br>
      1.&nbsp; Error in createrepo-native_0.9.8.bb<br>
      <br>
      ERROR: This recipe does not have the LICENSE field set
      (createrepo-native)<br>
      Error parsing
      /home/ylal/poky/meta-extras/recipes/yum/createrepo-native_0.9.8.bb:
      (SystemExit(1,),
      '/home/ylal/poky/meta-extras/recipes/yum/createrepo-native_0.9.8.bb')<br>
      ERROR: Command execution failed: Exited with 1<br>
      <br>
    </blockquote>
    <pre>Hi,

The recipe doesn't have a LIC_FILES_CHKSUM variable yet and that is required.
By adding the following line to the recipe it should work:
LIC_FILES_CHKSUM = "file://COPYING;md5=18810669f13b87348459e611d31ab760"

This is the md5sum of the COPYING file that is located inside the package you are trying to install.
More information about this can be found here:
http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html#usingpoky-specifying-LIC_FILES_CHKSUM

Regards,
Gerard
</pre>
    <blockquote cite="mid:4DCD107E.5010306@gmail.com" type="cite"> <br>
      2.&nbsp; Bitbake used to ignore these but no longer does so, please fix
      your metadata as errors are likely as a result of this change.<br>
      ERROR: Error parsing
      /home/ylal/pds/poky/meta-extras/recipes/xorg-lib/libfs_1.0.1.bb:
      Could not include required file xorg-lib-common.inc<br>
      <br>
      <br>
      Can any one guide me ?<br>
      <br>
      <br>
      ---<br>
      Yogesh<br>
      <pre wrap="">
<fieldset class="mimeAttachmentHeader"></fieldset>
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------050409000303090200080803--
