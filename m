Return-Path: <Nasir_Ali@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40771E006C2
	for <poky@yoctoproject.org>; Wed, 16 Jan 2013 08:38:21 -0800 (PST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1TvW0K-0007Hn-TF from Nasir_Ali@mentor.com 
	for poky@yoctoproject.org; Wed, 16 Jan 2013 08:38:20 -0800
Received: from SVR-IES-FEM-02.mgc.mentorg.com ([137.202.0.106]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Wed, 16 Jan 2013 08:38:20 -0800
Received: from EU-MBX-01.mgc.mentorg.com ([169.254.1.171]) by
	SVR-IES-FEM-02.mgc.mentorg.com ([137.202.0.106]) with mapi id
	14.01.0289.001; Wed, 16 Jan 2013 16:38:19 +0000
From: "Ali, Nasir" <Nasir_Ali@mentor.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: pandaboard building with nfs client support
Thread-Index: AQHN9AfkKfpmB+DypkW8OF1aU3SHIQ==
Date: Wed, 16 Jan 2013 16:38:19 +0000
Message-ID: <53B11A2698485743AAA262E995E2C3F1915F154F@EU-MBX-01.mgc.mentorg.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [137.202.0.69]
MIME-Version: 1.0
X-OriginalArrivalTime: 16 Jan 2013 16:38:20.0476 (UTC)
	FILETIME=[E4D587C0:01CDF407]
Subject: pandaboard building with nfs client support
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
X-List-Received-Date: Wed, 16 Jan 2013 16:38:21 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_53B11A2698485743AAA262E995E2C3F1915F154FEUMBX01mgcmento_"

--_000_53B11A2698485743AAA262E995E2C3F1915F154FEUMBX01mgcmento_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I have to boot panaboard from nfs mounted file system. As pandaboard doesn'=
t have default nfs client support. I set the the following kernel configura=
tion but my changes get lost in building the images.


CONFIG_IP_PNP=3Dy
CONFIG_IP_PNP_DHCP=3Dy
CONFIG_IP_PNP_BOOTP=3Dy
CONFIG_IP_PNP_RARP=3Dy
CONFIG_USB_USBNET=3Dy
CONFIG_USB_NET_SMSC95XX=3Dy
CONFIG_USB=3Dy
CONFIG_USB_SUPPORT=3Dy
CONFIG_USB_ARCH_HAS_EHCI=3Dy
CONFIG_NETWORK_FILESYSTEMS=3Dy
CONFIG_NFS_FS=3Dy
CONFIG_NFS_V3=3Dy
CONFIG_NFS_V3_ACL=3Dy
CONFIG_ROOT_NFS=3Dy


I am using yocto danny branch for pandaboard. Could anyone help me out what=
 configurations I need to set to have a support for nfs mounted file system=
.

Thanks,
Nasir


--_000_53B11A2698485743AAA262E995E2C3F1915F154FEUMBX01mgcmento_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html dir=3D"ltr">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style id=3D"owaParaStyle" type=3D"text/css">P {margin-top:0;margin-bottom:=
0;}</style>
</head>
<body ocsi=3D"0" fpstyle=3D"1">
<div style=3D"direction: ltr;font-family: Tahoma;color: #000000;font-size: =
10pt;">Hi,<br>
<br>
I have to boot panaboard from nfs mounted file system. As pandaboard doesn'=
t have default nfs client support. I set the the following kernel configura=
tion but my changes get lost in building the images.<br>
<br>
<pre>CONFIG_IP_PNP=3Dy=0A=
CONFIG_IP_PNP_DHCP=3Dy=0A=
CONFIG_IP_PNP_BOOTP=3Dy=0A=
CONFIG_IP_PNP_RARP=3Dy=0A=
CONFIG_USB_USBNET=3Dy=0A=
CONFIG_USB_NET_SMSC95XX=3Dy=0A=
CONFIG_USB=3Dy=0A=
CONFIG_USB_SUPPORT=3Dy=0A=
CONFIG_USB_ARCH_HAS_EHCI=3Dy=0A=
CONFIG_NETWORK_FILESYSTEMS=3Dy=0A=
CONFIG_NFS_FS=3Dy=0A=
CONFIG_NFS_V3=3Dy=0A=
CONFIG_NFS_V3_ACL=3Dy=0A=
CONFIG_ROOT_NFS=3Dy<br><br><br>I am using yocto danny branch for pandaboard=
. Could anyone help me out what configurations I need to set to have a supp=
ort for nfs mounted file system.<br><br>Thanks,<br>Nasir<br></pre>
<br>
</div>
</body>
</html>

--_000_53B11A2698485743AAA262E995E2C3F1915F154FEUMBX01mgcmento_--
