Return-Path: <gerard@de-haardt.com>
Received: from cpsmtpb-ews07.kpnxchange.com (cpsmtpb-ews07.kpnxchange.com
	[213.75.39.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD08F4C8009D
	for <poky@yoctoproject.org>; Wed, 15 Jun 2011 09:39:52 -0500 (CDT)
Received: from cpbrm-ews30.kpnxchange.com ([10.94.84.161]) by
	cpsmtpb-ews07.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Wed, 15 Jun 2011 16:39:52 +0200
Received: from CPSMTPM-CMT104.kpnxchange.com ([195.121.3.20]) by
	cpbrm-ews30.kpnxchange.com with Microsoft SMTPSVC(6.0.3790.4675); 
	Wed, 15 Jun 2011 16:39:51 +0200
Received: from mail.de-haardt.com ([86.81.67.223]) by
	CPSMTPM-CMT104.kpnxchange.com with Microsoft
	SMTPSVC(7.0.6002.18264); Wed, 15 Jun 2011 16:39:51 +0200
Received: from [192.168.1.160] ([192.168.1.160])
	(authenticated user gerard@de-haardt.com) by mail.de-haardt.com
	(using TLSv1/SSLv3 with cipher AES256-SHA (256 bits))
	for poky@yoctoproject.org; Wed, 15 Jun 2011 16:40:05 +0200
Message-ID: <4DF8C435.6080800@de-haardt.com>
Date: Wed, 15 Jun 2011 16:39:49 +0200
From: Gerard van den Bosch <gerard@de-haardt.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: poky <poky@yoctoproject.org>
X-OriginalArrivalTime: 15 Jun 2011 14:39:51.0208 (UTC)
	FILETIME=[15609280:01CC2B6A]
X-RcptDomain: yoctoproject.org
Subject: problem booting sdcard
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
X-List-Received-Date: Wed, 15 Jun 2011 14:39:53 -0000
Content-Type: multipart/alternative;
	boundary="------------080402060908040102020100"

--------------080402060908040102020100
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I have a demonstration next week so I wanted to switch from nfs back to 
sdcard.
I successfully ran on sdcard at the beginning of the project but then 
changed to nfs for development.

Now I am having a strange problem when booting, the kernel boots fine 
and the the rootfs gets loaded and it hangs at:

Running postinst /etc/rpm-postinsts/gnome-vfs.sh...


Eventually I am getting a gconf XML error, that is different every time.

When I interrupt using ctrl+c it continues booting and then gives a prompt.
Looking with free and df there don't seem to be space issues.

My bootargs are:
mmc init; fatload mmc 0 0x80000000 uImage; bootm 0x80000000'
root=/dev/mmcblk0p2 rw rootdelay=1

The rootfs is ~500MB

Does anyone have any thoughts on what might be going wrong here?

Regards,
Gerard

--------------080402060908040102020100
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
      I have a demonstration next week so I wanted to switch from nfs
      back to sdcard.<br>
      I successfully ran on sdcard at the beginning of the project but
      then changed to nfs for development.<br>
      <br>
      Now I am having a strange problem when booting, the kernel boots
      fine and the the rootfs gets loaded and it hangs at:<br>
    </small>
    <style type="text/css">p, li { white-space: pre-wrap; }</style>
    <p style="margin: 0px; text-indent: 0px;"><small>Running postinst
        /etc/rpm-postinsts/gnome-vfs.sh...</small></p>
    <small><br>
      Eventually I am getting a gconf XML error, that is different every
      time.<br>
      <br>
      When I interrupt using ctrl+c it continues booting and then gives
      a prompt.<br>
      Looking with free and df there don't seem to be space issues.<br>
      <br>
      My bootargs are:<br>
      mmc init; fatload mmc 0 0x80000000 uImage; bootm 0x80000000'<br>
      root=/dev/mmcblk0p2 rw rootdelay=1 <br>
      <br>
      The rootfs is ~500MB<br>
      <br>
      Does anyone have any thoughts on what might be going wrong here?<br>
      <br>
      Regards,<br>
      Gerard</small><br>
  </body>
</html>

--------------080402060908040102020100--
