Return-Path: <kevin.tian@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6092A4C800B1
	for <poky@yoctoproject.org>; Sun, 27 Feb 2011 21:21:41 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Feb 2011 19:21:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.62,237,1297065600"; 
	d="scan'208,217";a="713947507"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 27 Feb 2011 19:21:39 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Mon, 28 Feb 2011 11:20:47 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Mon, 28 Feb 2011 11:20:35 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: v sailaja <vsailub4u@gmail.com>, "poky@yoctoproject.org"
	<poky@yoctoproject.org>
Date: Mon, 28 Feb 2011 11:20:34 +0800
Thread-Topic: [poky] problems while building an image uasing poky
Thread-Index: AcvU5+SeJb9cg+SVTZSl9q0JJeLRvQCDcZaQ
Message-ID: <625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0@shsmsx502.ccr.corp.intel.com>
References: <AANLkTin31iKNweKt-KET12gm6Fw4v4FJay+p1aE-ZkV_@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F15052FC80F00B@shsmsx502.ccr.corp.intel.com>
	<AANLkTin+4oP4eTeG120dceTMcNeYF4JF+RXQBxc6JD1u@mail.gmail.com>
	<AANLkTi=Sr0=P2--sYZZs6g2YD+KSJi4qfJK7A19PsJOO@mail.gmail.com>
In-Reply-To: <AANLkTi=Sr0=P2--sYZZs6g2YD+KSJi4qfJK7A19PsJOO@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: problems while building an image uasing poky
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
X-List-Received-Date: Mon, 28 Feb 2011 03:21:42 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0shsmsx502ccrc_"

--_000_625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0shsmsx502ccrc_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi, SAI,

Poky is kept compatible with OpenEmbedded, and generally a recipe from Open=
Embedded is reusable in Poky. However as you said there do have some differ=
ence between them, e.g. regarding to the bbclass files which we're trying t=
o minimize.

back to your case:
| mv: cannot stat `/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linu=
x/krb5-1.6.3-r6/image/usr/bin/ftp': No such file or directory

this could the starting point you can work with to figure out the reason. :=
) whether does it exist? how it works in your OE env? ...

Thanks
Kevin

From: v sailaja [mailto:vsailub4u@gmail.com]
Sent: Friday, February 25, 2011 8:31 PM
To: Tian, Kevin; poky@yoctoproject.org
Subject: Re: [poky] problems while building an image uasing poky



Hi Kevin,

This is the error about do_install.
    I think the way of writing recipes and packages and some for Poky platf=
orm and openembedded are different. Openembedded supports some built-in fun=
ctions. Poky,As being a derivative of Openembedded, it cant inherit all its=
 feeatures.
    It might be the problem.
   If its wrong. Please let me know.
If its possible, could you please explain clearly why its so happening.



NOTE: Running task 2528 of 3845 (ID: 1077, /home/sailaja/poky-chrome/meta/r=
ecipes-support/krb/krb5_1.6.3.bb<http://krb5_1.6.3.bb>, do_install)
NOTE: package krb5-1.6.3-r6: task do_install: Started
ERROR: Task failed: ('function do_install failed', '/home/sailaja/poky-chro=
me/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702'=
)
ERROR: Logfile of failure stored in: /home/sailaja/poky-chrome/build/tmp/wo=
rk/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702
Log data follows:
| oe_libinstall: cd util/support
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb5support.so /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb5support.so.0 /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkrb5support.so.0.1 /home/sailaja/poky-c=
hrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/bui=
ld/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so.0
| oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/bui=
ld/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd util/et
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| readelf: Error: 'libkrb5support.so.0.1': No such file
| oe_libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/bui=
ld/tmp/sysroots/core2-poky-linux/usr/lib/libkrb5support.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/crypto
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libk5crypto.so /home/sailaja/poky-chrome/build/tmp/s=
ysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libk5crypto.so.3 /home/sailaja/poky-chrome/build/tmp=
/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libk5crypto.so.3.1 /home/sailaja/poky-chro=
me/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libk5crypto.so.3.1 /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/libk5crypto.so.3
| oe_libinstall: ln -sf libk5crypto.so.3.1 /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/libk5crypto.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/krb5
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb5.so /home/sailaja/poky-chrome/build/tmp/sysro=
ots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb5.so.3 /home/sailaja/poky-chrome/build/tmp/sys=
roots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkrb5.so.3.3 /home/sailaja/poky-chrome/b=
uild/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkrb5.so.3.3 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkrb5.so.3
| oe_libinstall: ln -sf libkrb5.so.3.3 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkrb5.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/des425
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libdes425.so /home/sailaja/poky-chrome/build/tmp/sys=
roots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libdes425.so.3 /home/sailaja/poky-chrome/build/tmp/s=
ysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libdes425.so.3.0 /home/sailaja/poky-chrome=
/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libdes425.so.3.0 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/libdes425.so.3
| oe_libinstall: ln -sf libdes425.so.3.0 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/libdes425.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/krb4
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb4.so /home/sailaja/poky-chrome/build/tmp/sysro=
ots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkrb4.so.2 /home/sailaja/poky-chrome/build/tmp/sys=
roots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkrb4.so.2.0 /home/sailaja/poky-chrome/b=
uild/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkrb4.so.2.0 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkrb4.so.2
| oe_libinstall: ln -sf libkrb4.so.2.0 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkrb4.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/gssapi
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libgssapi_krb5.so /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libgssapi_krb5.so.2 /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libgssapi_krb5.so.2.2 /home/sailaja/poky-c=
hrome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libgssapi_krb5.so.2.2 /home/sailaja/poky-chrome/bui=
ld/tmp/sysroots/core2-poky-linux/usr/lib/libgssapi_krb5.so.2
| oe_libinstall: ln -sf libgssapi_krb5.so.2.2 /home/sailaja/poky-chrome/bui=
ld/tmp/sysroots/core2-poky-linux/usr/lib/libgssapi_krb5.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/rpc
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libgssrpc.so /home/sailaja/poky-chrome/build/tmp/sys=
roots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libgssrpc.so.4 /home/sailaja/poky-chrome/build/tmp/s=
ysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libgssrpc.so.4.0 /home/sailaja/poky-chrome=
/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libgssrpc.so.4.0 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/libgssrpc.so.4
| oe_libinstall: ln -sf libgssrpc.so.4.0 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/libgssrpc.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/kdb
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkdb5.so /home/sailaja/poky-chrome/build/tmp/sysro=
ots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkdb5.so.4 /home/sailaja/poky-chrome/build/tmp/sys=
roots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkdb5.so.4.0 /home/sailaja/poky-chrome/b=
uild/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkdb5.so.4.0 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkdb5.so.4
| oe_libinstall: ln -sf libkdb5.so.4.0 /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/libkdb5.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/kadm5/clnt
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkadm5clnt.so /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkadm5clnt.so.5 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkadm5clnt.so.5.1 /home/sailaja/poky-chr=
ome/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkadm5clnt.so.5.1 /home/sailaja/poky-chrome/build=
/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5clnt.so.5
| oe_libinstall: ln -sf libkadm5clnt.so.5.1 /home/sailaja/poky-chrome/build=
/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5clnt.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| oe_libinstall: cd lib/kadm5/srv
| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkadm5srv.so /home/sailaja/poky-chrome/build/tmp/s=
ysroots/core2-poky-linux/usr/lib/
| oe_libinstall: cp -P libkadm5srv.so.5 /home/sailaja/poky-chrome/build/tmp=
/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: install -m 0755 libkadm5srv.so.5.1 /home/sailaja/poky-chro=
me/build/tmp/sysroots/core2-poky-linux/usr/lib/
| oe_libinstall: ln -sf libkadm5srv.so.5.1 /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.so.5
| oe_libinstall: ln -sf libkadm5srv.so.5.1 /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.so
| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-lin=
ux/krb5-1.6.3-r6/krb5-1.6.3/src
| mv: cannot stat `/home/sailaja/poky-chrome/build/tmp/work/core2-poky-linu=
x/krb5-1.6.3-r6/image/usr/bin/ftp': No such file or directory
| ERROR: Task failed: ('function do_install failed', '/home/sailaja/poky-ch=
rome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.2270=
2')
NOTE: package krb5-1.6.3-r6: task do_install: Failed
ERROR: Task 1077 (/home/sailaja/poky-chrome/meta/recipes-support/krb/krb5_1=
.6.3.bb<http://krb5_1.6.3.bb>, do_install) failed with 1
ERROR: '/home/sailaja/poky-chrome/meta/recipes-support/krb/krb5_1.6.3.bb<ht=
tp://krb5_1.6.3.bb>' failed


appreciated if anyone helps me.


Thanks & Regards
SAI







On Fri, Feb 25, 2011 at 12:28 PM, Tian, Kevin <kevin.tian@intel.com<mailto:=
kevin.tian@intel.com>> wrote:
Hi, SAI,

could you post further error log about do_install?

Thanks
Kevin

From: poky-bounces@yoctoproject.org<mailto:poky-bounces@yoctoproject.org> [=
mailto:poky-bounces@yoctoproject.org<mailto:poky-bounces@yoctoproject.org>]=
 On Behalf Of v sailaja
Sent: Friday, February 25, 2011 2:56 PM
To: poky@yoctoproject.org<mailto:poky@yoctoproject.org>
Subject: [poky] problems while building an image uasing poky

Hi,


I am trying to build an image on poky platform. I didn't find some packages=
 like krb and directfb, so I copied those packages from open-embedded. but =
I am getting an error like
 package krb5-1.6.3-r6: task do_install: Failed

Can anyone help me to fix this problem.

Thanks & Regards,
SAI







--_000_625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0shsmsx502ccrc_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:p=3D"urn:schemas-m=
icrosoft-com:office:powerpoint" xmlns:a=3D"urn:schemas-microsoft-com:office=
:access" xmlns:dt=3D"uuid:C2F41010-65B3-11d1-A29F-00AA00C14882" xmlns:s=3D"=
uuid:BDC6E3F0-6DA3-11d1-A2A3-00AA00C14882" xmlns:rs=3D"urn:schemas-microsof=
t-com:rowset" xmlns:z=3D"#RowsetSchema" xmlns:b=3D"urn:schemas-microsoft-co=
m:office:publisher" xmlns:ss=3D"urn:schemas-microsoft-com:office:spreadshee=
t" xmlns:c=3D"urn:schemas-microsoft-com:office:component:spreadsheet" xmlns=
:odc=3D"urn:schemas-microsoft-com:office:odc" xmlns:oa=3D"urn:schemas-micro=
soft-com:office:activation" xmlns:html=3D"http://www.w3.org/TR/REC-html40" =
xmlns:q=3D"http://schemas.xmlsoap.org/soap/envelope/" xmlns:rtc=3D"http://m=
icrosoft.com/officenet/conferencing" xmlns:D=3D"DAV:" xmlns:Repl=3D"http://=
schemas.microsoft.com/repl/" xmlns:mt=3D"http://schemas.microsoft.com/share=
point/soap/meetings/" xmlns:x2=3D"http://schemas.microsoft.com/office/excel=
/2003/xml" xmlns:ppda=3D"http://www.passport.com/NameSpace.xsd" xmlns:ois=
=3D"http://schemas.microsoft.com/sharepoint/soap/ois/" xmlns:dir=3D"http://=
schemas.microsoft.com/sharepoint/soap/directory/" xmlns:ds=3D"http://www.w3=
.org/2000/09/xmldsig#" xmlns:dsp=3D"http://schemas.microsoft.com/sharepoint=
/dsp" xmlns:udc=3D"http://schemas.microsoft.com/data/udc" xmlns:xsd=3D"http=
://www.w3.org/2001/XMLSchema" xmlns:sub=3D"http://schemas.microsoft.com/sha=
repoint/soap/2002/1/alerts/" xmlns:ec=3D"http://www.w3.org/2001/04/xmlenc#"=
 xmlns:sp=3D"http://schemas.microsoft.com/sharepoint/" xmlns:sps=3D"http://=
schemas.microsoft.com/sharepoint/soap/" xmlns:xsi=3D"http://www.w3.org/2001=
/XMLSchema-instance" xmlns:udcs=3D"http://schemas.microsoft.com/data/udc/so=
ap" xmlns:udcxf=3D"http://schemas.microsoft.com/data/udc/xmlfile" xmlns:udc=
p2p=3D"http://schemas.microsoft.com/data/udc/parttopart" xmlns:wf=3D"http:/=
/schemas.microsoft.com/sharepoint/soap/workflow/" xmlns:dsss=3D"http://sche=
mas.microsoft.com/office/2006/digsig-setup" xmlns:dssi=3D"http://schemas.mi=
crosoft.com/office/2006/digsig" xmlns:mdssi=3D"http://schemas.openxmlformat=
s.org/package/2006/digital-signature" xmlns:mver=3D"http://schemas.openxmlf=
ormats.org/markup-compatibility/2006" xmlns:m=3D"http://schemas.microsoft.c=
om/office/2004/12/omml" xmlns:mrels=3D"http://schemas.openxmlformats.org/pa=
ckage/2006/relationships" xmlns:spwp=3D"http://microsoft.com/sharepoint/web=
partpages" xmlns:ex12t=3D"http://schemas.microsoft.com/exchange/services/20=
06/types" xmlns:ex12m=3D"http://schemas.microsoft.com/exchange/services/200=
6/messages" xmlns:pptsl=3D"http://schemas.microsoft.com/sharepoint/soap/Sli=
deLibrary/" xmlns:spsl=3D"http://microsoft.com/webservices/SharePointPortal=
Server/PublishedLinksService" xmlns:Z=3D"urn:schemas-microsoft-com:" xmlns:=
st=3D"&#1;" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta http-equi=
v=3DContent-Type content=3D"text/html; charset=3Dus-ascii"><meta name=3DGen=
erator content=3D"Microsoft Word 12 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F49=
7D'>Hi, SAI,<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US s=
tyle=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'>Poky=
 is kept compatible with OpenEmbedded, and generally a recipe from OpenEmbe=
dded is reusable in Poky. However as you said there do have some difference=
 between them, e.g. regarding to the bbclass files which we&#8217;re trying=
 to minimize.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'=
><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'>back=
 to your case:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'font-size:13.5pt'>| mv: cannot stat `/home/sailaja/poky-chrome/bu=
ild/tmp/work/core2-poky-linux/krb5-1.6.3-r6/image/usr/bin/ftp': No such fil=
e or directory</span><span lang=3DEN-US style=3D'font-size:10.5pt;font-fami=
ly:"Calibri","sans-serif";color:#1F497D'><o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri"=
,"sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans=
-serif";color:#1F497D'>this could the starting point you can work with to f=
igure out the reason. </span><span lang=3DEN-US style=3D'font-size:10.5pt;f=
ont-family:Wingdings;color:#1F497D'>J</span><span lang=3DEN-US style=3D'fon=
t-size:10.5pt;font-family:"Calibri","sans-serif";color:#1F497D'> whether do=
es it exist? how it works in your OE env? &#8230;<o:p></o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"=
Calibri","sans-serif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Cali=
bri","sans-serif";color:#1F497D'>Thanks<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","=
sans-serif";color:#1F497D'>Kevin<o:p></o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'font-size:10.5pt;font-family:"Calibri","sans-se=
rif";color:#1F497D'><o:p>&nbsp;</o:p></span></p><div style=3D'border:none;b=
order-left:solid blue 1.5pt;padding:0cm 0cm 0cm 4.0pt'><div><div style=3D'b=
order:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0cm 0cm 0cm'><p cla=
ss=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Tahoma","sans-serif"'>From:</span></b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Tahoma","sans-serif"'> v sailaja [mailto:vsailub4u@gm=
ail.com] <br><b>Sent:</b> Friday, February 25, 2011 8:31 PM<br><b>To:</b> T=
ian, Kevin; poky@yoctoproject.org<br><b>Subject:</b> Re: [poky] problems wh=
ile building an image uasing poky<o:p></o:p></span></p></div></div><p class=
=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><div><blockquote style=
=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm 6.0pt;m=
argin-left:4.8pt;margin-right:0cm'><p class=3DMsoNormal><span lang=3DEN-US>=
<o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:13.5pt'>Hi Kevin,<br><br>This is the error about do_install.<=
/span><span lang=3DEN-US><o:p></o:p></span></p></blockquote><div><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:13.5pt'>&nbsp;&nbsp;&nbs=
p; I think the way of writing recipes and packages and some for Poky platfo=
rm and openembedded are different. Openembedded supports some built-in func=
tions. Poky,As being a derivative of Openembedded, it cant inherit all its =
feeatures.<br>&nbsp; &nbsp; It might be the problem. <br>&nbsp;&nbsp; If it=
s wrong. <b>Please let me know</b>.</span><span lang=3DEN-US><o:p></o:p></s=
pan></p></div><blockquote style=3D'border:none;border-left:solid #CCCCCC 1.=
0pt;padding:0cm 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm'><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:13.5pt'>If its possible,=
 could you please explain clearly why its so happening.<br><br><br><br>NOTE=
: Running task 2528 of 3845 (ID: 1077, /home/sailaja/poky-chrome/meta/recip=
es-support/krb/<a href=3D"http://krb5_1.6.3.bb" target=3D"_blank">krb5_1.6.=
3.bb</a>, do_install)<br>NOTE: package krb5-1.6.3-r6: task do_install: Star=
ted<br>ERROR: Task failed: ('function do_install failed', '/home/sailaja/po=
ky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install=
.22702')<br>ERROR: Logfile of failure stored in: /home/sailaja/poky-chrome/=
build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do_install.22702<br>=
Log data follows:<br>| oe_libinstall: cd util/support<br>| oe_libinstall: i=
nstall -d /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr=
/lib/<br>| oe_libinstall: cp -P libkrb5support.so /home/sailaja/poky-chrome=
/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P lib=
krb5support.so.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-li=
nux/usr/lib/<br>| oe_libinstall: install -m 0755 libkrb5support.so.0.1 /hom=
e/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_=
libinstall: ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/libkrb5support.so.0<br>| oe_libinstall:=
 ln -sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/build/tmp/sysroots/=
core2-poky-linux/usr/lib/libkrb5support.so<br>| oe_libinstall: cd /home/sai=
laja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/s=
rc<br>| oe_libinstall: cd util/et<br>| oe_libinstall: install -d /home/sail=
aja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>|<b> readel=
f: Error: 'libkrb5support.so.0.1': No such file</b><br>| oe_libinstall: ln =
-sf libkrb5support.so.0.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core=
2-poky-linux/usr/lib/libkrb5support.so<br>| oe_libinstall: cd /home/sailaja=
/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src<b=
r>| oe_libinstall: cd lib/crypto<br>| oe_libinstall: install -d /home/saila=
ja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinst=
all: cp -P libk5crypto.so /home/sailaja/poky-chrome/build/tmp/sysroots/core=
2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libk5crypto.so.3 /home/sail=
aja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libins=
tall: install -m 0755 libk5crypto.so.3.1 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ln -sf libk5crypto=
.so.3.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/l=
ib/libk5crypto.so.3<br>| oe_libinstall: ln -sf libk5crypto.so.3.1 /home/sai=
laja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libk5crypto.so=
<br>| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky=
-linux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall: cd lib/krb5<br>| oe=
_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroots/core2-=
poky-linux/usr/lib/<br>| oe_libinstall: cp -P libkrb5.so /home/sailaja/poky=
-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp=
 -P libkrb5.so.3 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-li=
nux/usr/lib/<br>| oe_libinstall: install -m 0755 libkrb5.so.3.3 /home/saila=
ja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinst=
all: ln -sf libkrb5.so.3.3 /home/sailaja/poky-chrome/build/tmp/sysroots/cor=
e2-poky-linux/usr/lib/libkrb5.so.3<br>| oe_libinstall: ln -sf libkrb5.so.3.=
3 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/lib=
krb5.so<br>| oe_libinstall: cd /home/sailaja/poky-chrome/build/tmp/work/cor=
e2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall: cd lib/des42=
5<br>| oe_libinstall: install -d /home/sailaja/poky-chrome/build/tmp/sysroo=
ts/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libdes425.so /home/s=
ailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_lib=
install: cp -P libdes425.so.3 /home/sailaja/poky-chrome/build/tmp/sysroots/=
core2-poky-linux/usr/lib/<br>| oe_libinstall: install -m 0755 libdes425.so.=
3.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<=
br>| oe_libinstall: ln -sf libdes425.so.3.0 /home/sailaja/poky-chrome/build=
/tmp/sysroots/core2-poky-linux/usr/lib/libdes425.so.3<br>| oe_libinstall: l=
n -sf libdes425.so.3.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-p=
oky-linux/usr/lib/libdes425.so<br>| oe_libinstall: cd /home/sailaja/poky-ch=
rome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_l=
ibinstall: cd lib/krb4<br>| oe_libinstall: install -d /home/sailaja/poky-ch=
rome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P=
 libkrb4.so /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/u=
sr/lib/<br>| oe_libinstall: cp -P libkrb4.so.2 /home/sailaja/poky-chrome/bu=
ild/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: install -m 0=
755 libkrb4.so.2.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-=
linux/usr/lib/<br>| oe_libinstall: ln -sf libkrb4.so.2.0 /home/sailaja/poky=
-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkrb4.so.2<br>| oe_li=
binstall: ln -sf libkrb4.so.2.0 /home/sailaja/poky-chrome/build/tmp/sysroot=
s/core2-poky-linux/usr/lib/libkrb4.so<br>| oe_libinstall: cd /home/sailaja/=
poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src<br=
>| oe_libinstall: cd lib/gssapi<br>| oe_libinstall: install -d /home/sailaj=
a/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinsta=
ll: cp -P libgssapi_krb5.so /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libgssapi_krb5.so.2 /home=
/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_l=
ibinstall: install -m 0755 libgssapi_krb5.so.2.2 /home/sailaja/poky-chrome/=
build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ln -sf lib=
gssapi_krb5.so.2.2 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-=
linux/usr/lib/libgssapi_krb5.so.2<br>| oe_libinstall: ln -sf libgssapi_krb5=
.so.2.2 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/l=
ib/libgssapi_krb5.so<br>| oe_libinstall: cd /home/sailaja/poky-chrome/build=
/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall:=
 cd lib/rpc<br>| oe_libinstall: install -d /home/sailaja/poky-chrome/build/=
tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libgssrpc.=
so /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<b=
r>| oe_libinstall: cp -P libgssrpc.so.4 /home/sailaja/poky-chrome/build/tmp=
/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: install -m 0755 lib=
gssrpc.so.4.0 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux=
/usr/lib/<br>| oe_libinstall: ln -sf libgssrpc.so.4.0 /home/sailaja/poky-ch=
rome/build/tmp/sysroots/core2-poky-linux/usr/lib/libgssrpc.so.4<br>| oe_lib=
install: ln -sf libgssrpc.so.4.0 /home/sailaja/poky-chrome/build/tmp/sysroo=
ts/core2-poky-linux/usr/lib/libgssrpc.so<br>| oe_libinstall: cd /home/saila=
ja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src=
<br>| oe_libinstall: cd lib/kdb<br>| oe_libinstall: install -d /home/sailaj=
a/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinsta=
ll: cp -P libkdb5.so /home/sailaja/poky-chrome/build/tmp/sysroots/core2-pok=
y-linux/usr/lib/<br>| oe_libinstall: cp -P libkdb5.so.4 /home/sailaja/poky-=
chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ins=
tall -m 0755 libkdb5.so.4.0 /home/sailaja/poky-chrome/build/tmp/sysroots/co=
re2-poky-linux/usr/lib/<br>| oe_libinstall: ln -sf libkdb5.so.4.0 /home/sai=
laja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkdb5.so.4<b=
r>| oe_libinstall: ln -sf libkdb5.so.4.0 /home/sailaja/poky-chrome/build/tm=
p/sysroots/core2-poky-linux/usr/lib/libkdb5.so<br>| oe_libinstall: cd /home=
/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6=
.3/src<br>| oe_libinstall: cd lib/kadm5/clnt<br>| oe_libinstall: install -d=
 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>=
| oe_libinstall: cp -P libkadm5clnt.so /home/sailaja/poky-chrome/build/tmp/=
sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libkadm5clnt.s=
o.5 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<=
br>| oe_libinstall: install -m 0755 libkadm5clnt.so.5.1 /home/sailaja/poky-=
chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: ln =
-sf libkadm5clnt.so.5.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-=
poky-linux/usr/lib/libkadm5clnt.so.5<br>| oe_libinstall: ln -sf libkadm5cln=
t.so.5.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/=
lib/libkadm5clnt.so<br>| oe_libinstall: cd /home/sailaja/poky-chrome/build/=
tmp/work/core2-poky-linux/krb5-1.6.3-r6/krb5-1.6.3/src<br>| oe_libinstall: =
cd lib/kadm5/srv<br>| oe_libinstall: install -d /home/sailaja/poky-chrome/b=
uild/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: cp -P libka=
dm5srv.so /home/sailaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr=
/lib/<br>| oe_libinstall: cp -P libkadm5srv.so.5 /home/sailaja/poky-chrome/=
build/tmp/sysroots/core2-poky-linux/usr/lib/<br>| oe_libinstall: install -m=
 0755 libkadm5srv.so.5.1 /home/sailaja/poky-chrome/build/tmp/sysroots/core2=
-poky-linux/usr/lib/<br>| oe_libinstall: ln -sf libkadm5srv.so.5.1 /home/sa=
ilaja/poky-chrome/build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.s=
o.5<br>| oe_libinstall: ln -sf libkadm5srv.so.5.1 /home/sailaja/poky-chrome=
/build/tmp/sysroots/core2-poky-linux/usr/lib/libkadm5srv.so<br>| oe_libinst=
all: cd /home/sailaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.=
3-r6/krb5-1.6.3/src<br>| mv: cannot stat `/home/sailaja/poky-chrome/build/t=
mp/work/core2-poky-linux/krb5-1.6.3-r6/image/usr/bin/ftp': No such file or =
directory<br>| ERROR: Task failed: ('function do_install failed', '/home/sa=
ilaja/poky-chrome/build/tmp/work/core2-poky-linux/krb5-1.6.3-r6/temp/log.do=
_install.22702')<br>NOTE: package krb5-1.6.3-r6: task do_install: Failed<br=
>ERROR: Task 1077 (/home/sailaja/poky-chrome/meta/recipes-support/krb/<a hr=
ef=3D"http://krb5_1.6.3.bb" target=3D"_blank">krb5_1.6.3.bb</a>, do_install=
) failed with 1<br><b>ERROR: '/home/sailaja/poky-chrome/meta/recipes-suppor=
t/krb/<a href=3D"http://krb5_1.6.3.bb" target=3D"_blank">krb5_1.6.3.bb</a>'=
 failed<br></b><br><br>appreciated if anyone helps me.<br><br><br>Thanks &a=
mp; Regards<br>SAI</span><span lang=3DEN-US><o:p></o:p></span></p><div><div=
><p class=3DMsoNormal style=3D'margin-bottom:12.0pt'><span lang=3DEN-US><br=
><br><br><br><br><br><br><o:p></o:p></span></p><div><p class=3DMsoNormal><s=
pan lang=3DEN-US>On Fri, Feb 25, 2011 at 12:28 PM, Tian, Kevin &lt;<a href=
=3D"mailto:kevin.tian@intel.com" target=3D"_blank">kevin.tian@intel.com</a>=
&gt; wrote:<o:p></o:p></span></p><div><div><p class=3DMsoNormal style=3D'ms=
o-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span lang=3DEN-US style=
=3D'font-size:10.5pt;color:#1F497D'>Hi, SAI,</span><span lang=3DEN-US><o:p>=
</o:p></span></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-=
margin-bottom-alt:auto'><span lang=3DEN-US style=3D'font-size:10.5pt;color:=
#1F497D'>&nbsp;</span><span lang=3DEN-US><o:p></o:p></span></p><p class=3DM=
soNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span=
 lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>could you post furth=
er error log about do_install?</span><span lang=3DEN-US><o:p></o:p></span><=
/p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-=
alt:auto'><span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>&nbsp=
;</span><span lang=3DEN-US><o:p></o:p></span></p><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span lang=3DEN-US =
style=3D'font-size:10.5pt;color:#1F497D'>Thanks</span><span lang=3DEN-US><o=
:p></o:p></span></p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;m=
so-margin-bottom-alt:auto'><span lang=3DEN-US style=3D'font-size:10.5pt;col=
or:#1F497D'>Kevin</span><span lang=3DEN-US><o:p></o:p></span></p><p class=
=3DMsoNormal style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><=
span lang=3DEN-US style=3D'font-size:10.5pt;color:#1F497D'>&nbsp;</span><sp=
an lang=3DEN-US><o:p></o:p></span></p><div style=3D'border:none;border-left=
:solid windowtext 1.5pt;padding:0cm 0cm 0cm 4.0pt;border-color:-moz-use-tex=
t-color -moz-use-text-color -moz-use-text-color blue'><div><div style=3D'bo=
rder:none;border-top:solid windowtext 1.0pt;padding:3.0pt 0cm 0cm 0cm;borde=
r-color:-moz-use-text-color -moz-use-text-color'><p class=3DMsoNormal style=
=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt'>From:</span></b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt'> <a href=3D"mailto:poky-bounces@yoctoproject.org" target=
=3D"_blank">poky-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:pok=
y-bounces@yoctoproject.org" target=3D"_blank">poky-bounces@yoctoproject.org=
</a>] <b>On Behalf Of </b>v sailaja<br><b>Sent:</b> Friday, February 25, 20=
11 2:56 PM<br><b>To:</b> <a href=3D"mailto:poky@yoctoproject.org" target=3D=
"_blank">poky@yoctoproject.org</a><br><b>Subject:</b> [poky] problems while=
 building an image uasing poky</span><span lang=3DEN-US><o:p></o:p></span><=
/p></div></div><div><div><p class=3DMsoNormal style=3D'mso-margin-top-alt:a=
uto;mso-margin-bottom-alt:auto'><span lang=3DEN-US>&nbsp;<o:p></o:p></span>=
</p><p class=3DMsoNormal style=3D'mso-margin-top-alt:auto;margin-bottom:12.=
0pt'><span lang=3DEN-US>Hi,<br><br><br>I am trying to build an image on pok=
y platform. I didn't find some packages like<b> krb and directfb</b>, so I =
copied those packages from open-embedded. but I am getting an <b>error</b> =
like&nbsp;&nbsp; <br>&nbsp;<b>package krb5-1.6.3-r6: task do_install: Faile=
d</b><br><br>Can anyone help me to fix this problem.<br><br>Thanks &amp; Re=
gards,<br>SAI<br><br><br><br><br><o:p></o:p></span></p></div></div></div></=
div></div></div><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></=
span></p></div></div></blockquote></div><p class=3DMsoNormal><span lang=3DE=
N-US><o:p>&nbsp;</o:p></span></p></div></div></body></html>=

--_000_625BA99ED14B2D499DC4E29D8138F15053E6AC8FB0shsmsx502ccrc_--
