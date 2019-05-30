Return-Path: <siddharth.waikar3@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1EC8E00D47; Wed, 29 May 2019 23:04:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (siddharth.waikar3[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB53BE00798
	for <poky@yoctoproject.org>; Wed, 29 May 2019 23:04:36 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id t1so5577893qtc.12
	for <poky@yoctoproject.org>; Wed, 29 May 2019 23:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2OeLuhywiuR0uplOoNcmu3uLyYTP3H95p3tdPrBiBbE=;
	b=PeLMFGzGLMacDOIVBFV7omn91eB0I92x3uJd6GZr2PKzAAwZ5/T91DMm3RJroHdBLW
	vgt64uvSMpaz+tdirAD42JCZSoS38xaQmapQiPrHqnkimVBj6fdpohFzueR6JCKoEhrr
	VpSd8WzV4MQOYUJQyW5FsGEqrXZN52xM5VrjsNhhFfGcZHMo7VaJ+0zCYOtOTDrDzCzq
	0b5QTj7y1lhoFyKYpf4U8vNk1L7hd/7XFGH9Dp+4NXG9PbGESqgppaTOef3qiheP2r7H
	7uFSGYEAE78HwwaOpsiU8jw1oaYamiO33mGPbRszos+JViuD85IOxdEIxmE/KKA2bWvy
	v9bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2OeLuhywiuR0uplOoNcmu3uLyYTP3H95p3tdPrBiBbE=;
	b=c5m4J4zxIGHnLbJMwZsL+1kIFe3qYxSWjxg+kThJ8iGHHr8eHw9tsOFcSNDAG9FULt
	f+FuKF5lDiAds6I52JjqXfVikOyD6mVvtVcDV829qeoNQr39ljwNU4IkO/LFpjPzV1rS
	siR07mnjwvKWYXPB8DnoeHZe6VN7TUipkFTTnTL5WFQ90+TkBafvpeV9Sd89ZFbaHH2o
	iOQsZORuDskAZzLH+EPMo2H4Ar8lQuVMWKytzNTKtN0KJJCKRk76QFJExTpkUxmyJ7li
	dOMtOihby5uFJJw+FzV4TG5xbVsw6Ea9R39b5zoQQUqisvP3HycJBsHx5bZfTovi4rHA
	x/Yg==
X-Gm-Message-State: APjAAAUGJjsl6DPIHrwc4b9u1IbcXT3kBc5dorQItSDcua2GuD0gi0XR
	gAPHoHvyq3F4Tyu1OXkSMCnFurrGmd9xQgsuUVjk+h00
X-Google-Smtp-Source: APXvYqw5i4HwKMXvESc+G3uokt3h2ATY1YBzR6v1g1Uf9jmsIryHhF3/YFciH9pbuOv6qEHKi8rjzrIfkhGmShw/Z5o=
X-Received: by 2002:ac8:368c:: with SMTP id a12mr1643880qtc.334.1559196274938; 
	Wed, 29 May 2019 23:04:34 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?4KS44KS/4KSm4KWN4KSn4KS+4KSw4KWN4KSlIOCkteCkvuCkiOCkleCksA==?=
	<siddharth.waikar3@gmail.com>
Date: Thu, 30 May 2019 14:03:58 +0800
Message-ID: <CAAKc60RfFR_1QP+Mf5CiZEw+0dtUQ2X4xCHwqkJWCkrzXkhLJA@mail.gmail.com>
To: poky@yoctoproject.org
Subject: [Yocto] I am facing build issue
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
X-List-Received-Date: Thu, 30 May 2019 06:04:38 -0000
Content-Type: multipart/alternative; boundary="0000000000001a586f058a14ac17"

--0000000000001a586f058a14ac17
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgYW0gZmFjaW5nIGZvbGxvd2luZyBlcnJvciB3aGlsZSBidWlsZGluZyBjb3Jl
LWltYWdlLXNhdG8tc2RrIGZvcg0KaW50ZWwtY29yZWk3LTY0DQpVc2luZyBtZXRhLWludGVsLg0K
DQoNCg0KKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
Kw0KRVJST1I6IGNvcmUtaW1hZ2Utc2F0by1zZGstMS4wLXIwIGRvX3Jvb3RmczogQ291bGQgbm90
IGludm9rZSBkbmYuIENvbW1hbmQNCkRORiB2ZXJzaW9uOiA0LjEuMA0KY2FjaGVkaXI6DQovaG9t
ZS9pbGFiL1dXMjIveW9jdG9fYnVpbGQvYnVpbGQvdG1wL3dvcmsvaW50ZWxfY29yZWk3XzY0LXBv
a3ktbGludXgvY29yZS1pbWFnZS1zYXRvLXNkay8xLjAtcjAvcm9vdGZzL3Zhci9jYWNoZS9kbmYN
CkFkZGVkIG9lLXJlcG8gcmVwbyBmcm9tDQovaG9tZS9pbGFiL1dXMjIveW9jdG9fYnVpbGQvYnVp
bGQvdG1wL3dvcmsvaW50ZWxfY29yZWk3XzY0LXBva3ktbGludXgvY29yZS1pbWFnZS1zYXRvLXNk
ay8xLjAtcjAvb2Utcm9vdGZzLXJlcG8NCnJlcG86IHVzaW5nIGNhY2hlIGZvcjogb2UtcmVwbw0K
bm90IGZvdW5kIG90aGVyIGZvcjoNCm5vdCBmb3VuZCBtb2R1bGVzIGZvcjoNCm5vdCBmb3VuZCBk
ZWx0YWluZm8gZm9yOg0Kbm90IGZvdW5kIHVwZGF0ZWluZm8gZm9yOg0Kb2UtcmVwbzogdXNpbmcg
bWV0YWRhdGEgZnJvbSBUaHUgMzAgTWF5IDIwMTkgMDU6MzY6MTkgQU0gVVRDLg0KTGFzdCBtZXRh
ZGF0YSBleHBpcmF0aW9uIGNoZWNrOiAwOjAwOjAyIGFnbyBvbiBUaHUgMzAgTWF5IDIwMTkgMDU6
MzY6MjIgQU0NClVUQy4NCk5vIG1vZHVsZSBkZWZhdWx0cyBmb3VuZA0KLS0+IFN0YXJ0aW5nIGRl
cGVuZGVuY3kgcmVzb2x1dGlvbg0KLS0+IEZpbmlzaGVkIGRlcGVuZGVuY3kgcmVzb2x1dGlvbg0K
RXJyb3I6DQogUHJvYmxlbTogY29uZmxpY3RpbmcgcmVxdWVzdHMNCiAgLSBub3RoaW5nIHByb3Zp
ZGVzIGJ1c3lib3gtdWRoY3BkIG5lZWRlZCBieQ0KcGFja2FnZWdyb3VwLXZhbGlkYXRpb24tMS4w
LXIwLmludGVsX2NvcmVpN182NA0KKHRyeSB0byBhZGQgJy0tc2tpcC1icm9rZW4nIHRvIHNraXAg
dW5pbnN0YWxsYWJsZSBwYWNrYWdlcyBvciAnLS1ub2Jlc3QnIHRvDQp1c2Ugbm90IG9ubHkgYmVz
dCBjYW5kaWRhdGUgcGFja2FnZXMpDQorKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysNCg0KDQpJIGFtIHVzaW5nIHBhY2thZ2Vncm91cC12
YWxpZGF0aW9uLg0KDQotLQ0KVGhhbmtzLA0KU2lkZGhhcnRoIFdhaWthci4NCg0KDQoNCg0KDQot
LSANCg0KLS0NClRoYW5rcyBhbmQgUmVnYXJkcywNClNpZGRoYXJ0aCBBLiBXYWlrYXIuDQoNCg0K
4KSG4KS44KS/4KSC4KSn4KWBIOCkuOCkv+CkguCkp+ClgSDgpKrgpLDgpY3gpK/gpKjgpY3gpKTg
pL4sIOCkr+CkuOCljeCkryDgpK3gpL7gpLDgpKTgpK3gpYLgpK7gpL/gpJXgpL4g4KWkDQrgpKrg
pL/gpKTgpYPgpK3gpYI6IOCkquClgeCko+CljeCkr+CkreClguCktuCljeCkmuCliOCktSDgpLgg
4KS14KWIIOCkueCkv+CkguCkpuClgeCksOCkv+CkpOCkvyDgpLjgpY3gpK7gpYPgpKQ6IOClpQ0K
DQrgpLngpL/gpILgpKbgpYHgpLjgpY3gpKXgpL7gpKgg4KS54KWAIOCknOCljeCkr+CkvuCkmuCl
gCDgpJXgpYfgpLXgpLMg4KSq4KS/4KSk4KWD4KSt4KWC4KSu4KWAIOCkqOCkteCljeCkueClhywg
4KSk4KSwIOCkquClgeCko+CljeCkr+CkreClguCkruClgOCkueClgCDgpIbgpLngpYcg4KSk4KWL
IOCkueCkv+CkguCkpuClgi4NCi0tDQoq4KS44KWN4KS14KS+4KSk4KSC4KSk4KWN4KSw4KWN4KSv
4KS14KWA4KSwKiAgKuCkteCkv+CkqOCkvuCkr+CklSDgpKbgpL7gpK7gpYvgpKbgpLAg4KS44KS+
4KS14KSw4KSV4KSwKg0K

--0000000000001a586f058a14ac17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I am facing following error whil=
e building core-image-sato-sdk for intel-corei7-64</div><div>Using meta-int=
el.</div><div><br></div><div><br></div><div><br></div><div>++++++++++++++++=
++++++++++++++++++++++++++++++++++++</div><div>ERROR: core-image-sato-sdk-1=
.0-r0 do_rootfs: Could not invoke dnf. Command DNF version: 4.1.0<br>cached=
ir: /home/ilab/WW22/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/c=
ore-image-sato-sdk/1.0-r0/rootfs/var/cache/dnf<br>Added oe-repo repo from /=
home/ilab/WW22/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-i=
mage-sato-sdk/1.0-r0/oe-rootfs-repo<br>repo: using cache for: oe-repo<br>no=
t found other for:<br>not found modules for:<br>not found deltainfo for:<br=
>not found updateinfo for:<br>oe-repo: using metadata from Thu 30 May 2019 =
05:36:19 AM UTC.<br>Last metadata expiration check: 0:00:02 ago on Thu 30 M=
ay 2019 05:36:22 AM UTC.<br>No module defaults found<br>--&gt; Starting dep=
endency resolution<br>--&gt; Finished dependency resolution<br>Error:<br>=
=C2=A0Problem: conflicting requests<br>=C2=A0 - nothing provides busybox-ud=
hcpd needed by packagegroup-validation-1.0-r0.intel_corei7_64<br>(try to ad=
d &#39;--skip-broken&#39; to skip uninstallable packages or &#39;--nobest&#=
39; to use not only best candidate packages)</div><div>++++++++++++++++++++=
++++++++++++++++++++++++++++++++++++++++<br></div><div><br></div><div><br><=
/div><div>I am using packagegroup-validation.</div><div><br></div><div>--</=
div><div>Thanks,</div><div>Siddharth Waikar.</div><div><br></div><div><br><=
/div><div><br></div><div><br clear=3D"all"><div><br></div>-- <br><div dir=
=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div =
dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D"display:inline"><br>--<br><=
/div><div style=3D"display:inline">Thanks and Regards,<br>Siddharth A. Waik=
ar.<br></div><div style=3D"display:inline"></div><div style=3D"display:inli=
ne"><br><br><span style=3D"color:rgb(51,51,51);font-family:Verdana,Arial,He=
lvetica,sans-serif,mangal;font-size:14px;line-height:22.5px">=E0=A4=86=E0=
=A4=B8=E0=A4=BF=E0=A4=82=E0=A4=A7=E0=A5=81 =E0=A4=B8=E0=A4=BF=E0=A4=82=E0=
=A4=A7=E0=A5=81 =E0=A4=AA=E0=A4=B0=E0=A5=8D=E0=A4=AF=E0=A4=A8=E0=A5=8D=E0=
=A4=A4=E0=A4=BE, =E0=A4=AF=E0=A4=B8=E0=A5=8D=E0=A4=AF =E0=A4=AD=E0=A4=BE=E0=
=A4=B0=E0=A4=A4=E0=A4=AD=E0=A5=82=E0=A4=AE=E0=A4=BF=E0=A4=95=E0=A4=BE =E0=
=A5=A4</span><br style=3D"color:rgb(51,51,51);font-family:Verdana,Arial,Hel=
vetica,sans-serif,mangal;font-size:14px;line-height:22.5px"><span style=3D"=
color:rgb(51,51,51);font-family:Verdana,Arial,Helvetica,sans-serif,mangal;f=
ont-size:14px;line-height:22.5px">=E0=A4=AA=E0=A4=BF=E0=A4=A4=E0=A5=83=E0=
=A4=AD=E0=A5=82: =E0=A4=AA=E0=A5=81=E0=A4=A3=E0=A5=8D=E0=A4=AF=E0=A4=AD=E0=
=A5=82=E0=A4=B6=E0=A5=8D=E0=A4=9A=E0=A5=88=E0=A4=B5 =E0=A4=B8 =E0=A4=B5=E0=
=A5=88 =E0=A4=B9=E0=A4=BF=E0=A4=82=E0=A4=A6=E0=A5=81=E0=A4=B0=E0=A4=BF=E0=
=A4=A4=E0=A4=BF =E0=A4=B8=E0=A5=8D=E0=A4=AE=E0=A5=83=E0=A4=A4: =E0=A5=A5</s=
pan><br></div><div><div style=3D"display:inline"><span style=3D"color:rgb(5=
1,51,51);font-family:Verdana,Arial,Helvetica,sans-serif,mangal;font-size:14=
px;line-height:22.5px"><br></span></div></div><div><div style=3D"display:in=
line"><font face=3D"Verdana, Arial, Helvetica, sans-serif, mangal" color=3D=
"#333333"><span style=3D"line-height:22.5px">=E0=A4=B9=E0=A4=BF=E0=A4=82=E0=
=A4=A6=E0=A5=81=E0=A4=B8=E0=A5=8D=E0=A4=A5=E0=A4=BE=E0=A4=A8=C2=A0</span></=
font><span style=3D"color:rgb(51,51,51);font-family:Verdana,Arial,Helvetica=
,sans-serif,mangal;font-size:14px;line-height:22.5px">=E0=A4=B9=E0=A5=80 =
=E0=A4=9C=E0=A5=8D=E0=A4=AF=E0=A4=BE=E0=A4=9A=E0=A5=80 =E0=A4=95=E0=A5=87=
=E0=A4=B5=E0=A4=B3 =E0=A4=AA=E0=A4=BF=E0=A4=A4=E0=A5=83=E0=A4=AD=E0=A5=82=
=E0=A4=AE=E0=A5=80 =E0=A4=A8=E0=A4=B5=E0=A5=8D=E0=A4=B9=E0=A5=87, =E0=A4=A4=
=E0=A4=B0 =E0=A4=AA=E0=A5=81=E0=A4=A3=E0=A5=8D=E0=A4=AF=E0=A4=AD=E0=A5=82=
=E0=A4=AE=E0=A5=80=E0=A4=B9=E0=A5=80 =E0=A4=86=E0=A4=B9=E0=A5=87 =E0=A4=A4=
=E0=A5=8B =E0=A4=B9=E0=A4=BF=E0=A4=82=E0=A4=A6=E0=A5=82.</span><span style=
=3D"color:rgb(51,51,51);font-family:Verdana,Arial,Helvetica,sans-serif,mang=
al;font-size:14px;line-height:22.5px"><br></span></div></div><div><span sty=
le=3D"color:rgb(51,51,51);font-family:Verdana,Arial,Helvetica,sans-serif,ma=
ngal;font-size:14px;line-height:22.5px">--</span><br></div><div><i style=3D=
"color:rgb(37,37,37);font-family:sans-serif;font-size:14px;line-height:22.3=
99999618530273px">=E0=A4=B8=E0=A5=8D=E0=A4=B5=E0=A4=BE=E0=A4=A4=E0=A4=82=E0=
=A4=A4=E0=A5=8D=E0=A4=B0=E0=A5=8D=E0=A4=AF=E0=A4=B5=E0=A5=80=E0=A4=B0</i><s=
pan style=3D"color:rgb(37,37,37);font-family:sans-serif;font-size:14px;line=
-height:22.399999618530273px">=C2=A0=C2=A0</span><b style=3D"color:rgb(37,3=
7,37);font-family:sans-serif;font-size:14px;line-height:22.399999618530273p=
x">=E0=A4=B5=E0=A4=BF=E0=A4=A8=E0=A4=BE=E0=A4=AF=E0=A4=95 =E0=A4=A6=E0=A4=
=BE=E0=A4=AE=E0=A5=8B=E0=A4=A6=E0=A4=B0 =E0=A4=B8=E0=A4=BE=E0=A4=B5=E0=A4=
=B0=E0=A4=95=E0=A4=B0</b><span style=3D"color:rgb(51,51,51);font-family:Ver=
dana,Arial,Helvetica,sans-serif,mangal;font-size:14px;line-height:22.5px"><=
br></span></div></div></div></div></div></div></div>

--0000000000001a586f058a14ac17--
