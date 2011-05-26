Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews04.kpnxchange.com (cpsmtpb-ews04.kpnxchange.com
	[213.75.39.7])
	by mx1.pokylinux.org (Postfix) with ESMTP id E79794C800B6
	for <poky@yoctoproject.org>; Thu, 26 May 2011 02:31:07 -0500 (CDT)
Received: from cpbrm-ews14.kpnxchange.com ([10.94.84.145]) by
	cpsmtpb-ews04.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 26 May 2011 09:31:07 +0200
Received: from CPSMTPM-CMT106.kpnxchange.com ([195.121.3.22]) by
	cpbrm-ews14.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 26 May 2011 09:31:07 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT106.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Thu, 26 May 2011 09:31:06 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Thu, 26 May 2011 09:31:04 +0200
Message-ID: <4DDE01BB.3000109@de-haardt.com>
Date: Thu, 26 May 2011 09:31:07 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
X-OriginalArrivalTime: 26 May 2011 07:31:06.0268 (UTC)
	FILETIME=[DFDB3DC0:01CC1B76]
X-RcptDomain: yoctoproject.org
Subject: wrong rpm name qt package
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
X-List-Received-Date: Thu, 26 May 2011 07:31:08 -0000
Content-Type: multipart/alternative;
	boundary="------------070305030605090407020705"

--------------070305030605090407020705
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have developed a shared library using Qt, it compiles without any 
problems but it goes wrong with rpm packaging.
When it packages it should create a rpm package with the name 
"libxmlpcpqt" but it creates a package with "libxmlpcpqt1".
My question is where does the '1' come from?

The install part from the recipe is as follows:
do_install() {
      install -d ${D}${libdir}
      install -m 0755 ${S}/${PN}.so ${D}${libdir}
}

In the 
/tmp/work/armv7a-poky-linux-gnueabi/libxmlpcpqt-0.1-r1/image/usr/lib the 
libxmlpcpqt.so file correctly exists.

Regards,
Gerard


--------------070305030605090407020705
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
  </head>
  <body bgcolor="#ffffff" text="#000000">
    <small>Hello,<br>
      <br>
      I have developed a shared library using Qt, it compiles without
      any problems but it goes wrong with rpm packaging.<br>
      When it packages it should create a rpm package with the name
      "libxmlpcpqt" but it creates a package with "libxmlpcpqt1".<br>
      My question is where does the '1' come from?<br>
      <br>
      The install part from the recipe is as follows:<br>
      do_install() {<br>
      &nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${libdir}<br>
      &nbsp;&nbsp;&nbsp;&nbsp; install -m 0755 ${S}/${PN}.so ${D}${libdir}<br>
      }<br>
      <br>
      In the
      /tmp/work/armv7a-poky-linux-gnueabi/libxmlpcpqt-0.1-r1/image/usr/lib
      the libxmlpcpqt.so file correctly exists.<br>
      <br>
      Regards,<br>
      Gerard<br>
      <br>
    </small>
  </body>
</html>

--------------070305030605090407020705--
