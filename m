Return-Path: <kpa_info@yahoo.fr>
Received: from nm8-vm0.bullet.mail.ukl.yahoo.com
	(nm8-vm0.bullet.mail.ukl.yahoo.com [217.146.183.238])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 3D9ABE0044A
	for <poky@yoctoproject.org>; Mon, 21 May 2012 23:49:02 -0700 (PDT)
Received: from [217.146.183.210] by nm8.bullet.mail.ukl.yahoo.com with NNFMP;
	22 May 2012 06:49:00 -0000
Received: from [77.238.184.51] by tm3.bullet.mail.ukl.yahoo.com with NNFMP;
	22 May 2012 06:49:00 -0000
Received: from [127.0.0.1] by smtp120.mail.ukl.yahoo.com with NNFMP;
	22 May 2012 06:49:00 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1337669340; bh=//aoSdHC+WjgOaLJc0Mlenb4mJpB+ZM+MswvPtM2Sxc=;
	h=X-Yahoo-Newman-Id:X-Yahoo-Newman-Property:X-YMail-OSG:X-Yahoo-SMTP:Received:Message-ID:Date:From:User-Agent:MIME-Version:To:Subject:Content-Type;
	b=rX8z7+3GyH//xIkciL5Q/rMGk6icFph/85WOObDStLgGmsxERxi36XdGsGHapAYChgeqQ1JzCdyliVbZ/ZDmjTF5slMw8ZaXjRG5QZ2pczJ8PFuGuGviDMYPI7Th+ebUaR060sGCj+qRC3Q4v+KL0p68c5NXSsR/GPcXQilmyUE=
X-Yahoo-Newman-Id: 505351.63042.bm@smtp120.mail.ukl.yahoo.com
X-Yahoo-Newman-Property: ymail-3
X-YMail-OSG: tkPxDDIVM1lGbIgCw8E.usFossM84HsLtgdMNwMCN2ZhT9w
	Lb1cZyfd3j7WWt_VNCpuQJ8.REWfgHxlfAKVHweCvmwle8BN8vh4l_Xr3qLn
	LrF0oZePZ_akFw7TezGb7qkMDIqfQcp4hSFN2IaEuNqRsHcr_WhD5dFT29MX
	mP0JveBmjNDE01843P7EAj7iDQv3kyDUEpY_jMZ6YGfNC.cqNJ3EajH7NGT1
	cu9GaEfU6ArHwX5Ye3wUeAGHx5fGGXB3f6zhKf6Pfcj8NOpNlXBGIH6PFxs3
	sMdcfo1QmkU20P52PGvtay37p7.Wi8gIdHj06YT049PhL6.ZyWKrtZoXcL5j
	ls_gxDFSTcjsfQ7mk.ZDhiwz3MUSw2ZCMrh_Nls7bDc3kQDgq8yOjtb7s9Wh
	ki4C6j_URuZci6mlbj2.YoeCNkJcOaVuqBhFP2MrF_m9utCIe0P7BuJWUpQd
	0TG3RUg.YCBvG2tfgIzvhg0sQoUttn_iN1s.uDv5N6ZM3A934hIapFCHhAi5
	SHSITEBkfGoqn7kyMjhUkN2ELIOQn
X-Yahoo-SMTP: gXxkLaeswBDA9gtBSIbQ8XWSflp0
Received: from [10.22.2.63] (kpa_info@213.193.97.58 with plain)
	by smtp120.mail.ukl.yahoo.com with SMTP; 22 May 2012 06:49:00 +0000 GMT
Message-ID: <4FBB36D9.8000504@yahoo.fr>
Date: Tue, 22 May 2012 08:48:57 +0200
From: Patrick <kpa_info@yahoo.fr>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
Subject: Error when building libdbi-sqlite-perl
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
X-List-Received-Date: Tue, 22 May 2012 06:49:02 -0000
X-Groupsio-MsgNum: 7786
Content-Type: multipart/mixed; boundary="------------090500050202020406010903"

--------------090500050202020406010903
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Dear all,

I am using Yocto/Poky to build my own ARM based embedded system. In this 
system we use Perl and SQLite and DBI is used to interface Perl to SQLite.
I was using poky 6.0.1 and everything was building nicely.

Now I have moved my own layer to poky 7.0 and I have a strange error 
when building libdbi-sqlite-perl:

> NOTE: Running task 500 of 721 (ID: 6, poky-denzil-7.0/meta-s/recipes-devtools/libdbi-sqlite-perl/libdbi-sqlite-perl_1.36.bb, do_configure)
> NOTE: package libdbi-sqlite-perl-1.36-r1: task do_configure: Started
> ERROR: Function failed: do_configure (see build-sb-dev-7.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libdbi-sqlite-perl-1.36-r1/temp/log.do_configure.27922 for further information)
> ERROR: Logfile of failure stored in: build-sb-dev-7.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libdbi-sqlite-perl-1.36-r1/temp/log.do_configure.27922
> Log data follows:
> | ERROR: Function failed: do_configure (see build-sb-dev-7.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libdbi-sqlite-perl-1.36-r1/temp/log.do_configure.27922 for further information)
> | *** Module name IN: build-sb-dev-7.0/tmp/sysroots/sb/usr/lib/perl/5.14.2/Cwd.pm
> | *** p1: build-sb-dev-7.0/tmp/sysroots/sb/usr/lib/  p3: perl/5.14.2/  p5: Cwd.pm
> | *** Module name OUT: build-sb-dev-7.0/tmp/sysroots/i686-linux/usr/lib/perl-native/perl/5.14.2/Cwd.pm
> | build-sb-dev-7.0/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/libdbi-sqlite-perl-1.36-r1/temp/run.do_configure.27922: line 85: 27924 Broken pipe             yes ''
> |      27925 Segmentation fault      | perl Makefile.PL
> NOTE: package libdbi-sqlite-perl-1.36-r1: task do_configure: Failed
> ERROR: Task 6 (poky-denzil-7.0/meta-s/recipes-devtools/libdbi-sqlite-perl/libdbi-sqlite-perl_1.36.bb, do_configure) failed with exit code '1'

The recipes is from OE and is attached to this mail.

Any help/idea is welcome !

Patrick

--------------090500050202020406010903
Content-Type: application/x-extension-bb;
 name="libdbi-sqlite-perl_1.36.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="libdbi-sqlite-perl_1.36.bb"

REVTQ1JJUFRJT04gPSAiUEVSTCBkYXRhYmFzZSBpbnRlcmZhY2UgZHJpdmVyIGZvciB0aGUgU1FM
aXRlIGRhdGFiYXNlLiIKU0VDVElPTiA9ICJsaWJzIgpMSUNFTlNFID0gIkNsQXJ0aXN0aWMiCkxJ
Q19GSUxFU19DSEtTVU0gPSAiZmlsZTovLyR7Q09NTU9OX0xJQ0VOU0VfRElSfS9DbEFydGlzdGlj
O21kNT1mNjMzYmJmMDY5N2VjMzMwNjZiODNhZGZhOWViZTUxZCIKUEFUQ0hfTEVWRUwgPSAiXzA0
IgoKREVQRU5EUyArPSAibGliZGJpLXBlcmwtbmF0aXZlIgpSREVQRU5EU18ke1BOfSArPSAibGli
ZGJpLXBlcmwgXAogICAgICAgICBwZXJsLW1vZHVsZS1maWxlLXNwZWMgXAogICAgICAgICBwZXJs
LW1vZHVsZS1maWxlLXBhdGggXAogICAgICAgICBwZXJsLW1vZHVsZS1zY2FsYXItdXRpbCBcCiAg
ICAgICAgIHBlcmwtbW9kdWxlLWxpc3QtdXRpbCBcCiAgICAgICAgIHBlcmwtbW9kdWxlLXRlc3Qg
XAogICAgICAgICBwZXJsLW1vZHVsZS10ZXN0LW1vcmUgXAogICAgICAgICBwZXJsLW1vZHVsZS10
ZXN0LWhhcm5lc3MgXAogICAgICAgICBwZXJsLW1vZHVsZS1maWxlLWJhc2VuYW1lIFwKICAgICAg
ICAgcGVybC1tb2R1bGUtc3RvcmFibGUgXAogICAgICAgICBwZXJsLW1vZHVsZS1leHR1dGlscy1t
YWtlbWFrZXIgXAogICAgICAgICBwZXJsLW1vZHVsZS1sb2NhbGUgXAogICAgICAgICBwZXJsLW1v
ZHVsZS10aWUtaGFzaCBcCiAgICAgICAgICIKUFIgPSAicjEiCgpTUkNfVVJJID0gImh0dHA6Ly9z
ZWFyY2guY3Bhbi5vcmcvQ1BBTi9hdXRob3JzL2lkL0EvQUQvQURBTUsvREJELVNRTGl0ZS0ke1BW
fSR7UEFUQ0hfTEVWRUx9LnRhci5neiIKClNSQ19VUklbbWQ1c3VtXSA9ICI3MzRlOTY3ZmE2NDE4
Zjc0ZjU1NmYzNzNjYzViNzE5MSIKU1JDX1VSSVtzaGEyNTZzdW1dID0gIjIyN2JjMmYzNDk4Mjdk
NmY3NWM5ZGMyNzQyYjdiNWIwNjI4ZGYyODVjZjFiMTY0MjljMDE4MmE4ZmFjZWJhZjkiCgpTID0g
IiR7V09SS0RJUn0vREJELVNRTGl0ZS0ke1BWfSR7UEFUQ0hfTEVWRUx9IgoKaW5oZXJpdCBjcGFu
Cg==

--------------090500050202020406010903--
