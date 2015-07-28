Return-Path: <Jack_Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C138E009D7; Tue, 28 Jul 2015 10:11:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.166.85.206 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from ausc60pc101.us.dell.com (ausc60pc101.us.dell.com
	[143.166.85.206])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19822E00985
	for <poky@yoctoproject.org>; Tue, 28 Jul 2015 10:11:31 -0700 (PDT)
DomainKey-Signature: s=smtpout; d=dell.com; c=nofws; q=dns;
	h=X-LoopCount0:X-IronPort-AV:From:To:CC:Date:Subject:
	Thread-Topic:Thread-Index:Message-ID:References:
	In-Reply-To:Accept-Language:Content-Language:
	X-MS-Has-Attach:X-MS-TNEF-Correlator:x-titus-version:
	x-tituslabs-classifications-30:
	x-tituslabs-classificationhash-30:x-titusconfig:
	acceptlanguage:Content-Type:MIME-Version;
	b=nzMcCQLhP7CuMArm20Nfib1LSA1Ye4WhYGgdTjE9OS4i/tvirZ90Oc+0
	ORxDsPXaiej1Mq6o0lKVMrgR5wz7GzPg/FDi+KZmCeM9p40bAM3dcvgss
	bd5GLoKPB9E0BvbPsid3v1Re04YPCKFForaQF7o3A3hz7k4WmJRj1nrtw
	o=;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1438103493; x=1469639493;
	h=from:to:cc:date:subject:message-id:references:
	in-reply-to:mime-version:content-transfer-encoding;
	bh=6S7t9jzKPwXCrEMtvgVWUHKQarMX69fYIyLOjzLHiD0=;
	b=s2v9T80CXm3NIGdvLppVQN5HZhZHjTxMHeRG7Mshe/B+abmf8fJMV9Re
	T9qdrijMN64nH1jsIJO94WHy2HuAPmi4Zfhgbm42GHw4Dwj8blXGvUM+y
	fPi7g38WSBxJ9psdObNIS+kDY2TuPE1xJCQNYcyn7v/CTHl6Ou8iC+s4X o=;
X-LoopCount0: from 10.175.216.251
X-IronPort-AV: E=Sophos;i="5.15,564,1432616400"; 
	d="scan'208,217";a="818742420"
From: <Jack_Fewx@Dell.com>
To: <ross.burton@intel.com>
Date: Tue, 28 Jul 2015 12:11:29 -0500
Thread-Topic: [poky] Missing dependencies after setscene, postinst fails
Thread-Index: AdDJVXvQ2gUmj7Z2RN6BAQZxpT2oBQAAjG/g
Message-ID: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E7B9@AUSX7MCPS305.AMER.DELL.COM>
References: <DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E54E@AUSX7MCPS305.AMER.DELL.COM>
	<CAJTo0LZmK0XBUX6NGaut5boub7s7tGPVCVLwtuy6bcvNYfvx3w@mail.gmail.com>
	<DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E6A4@AUSX7MCPS305.AMER.DELL.COM>
	<CAJTo0LaBbHs-exfvxTsFGujBXP9s7O1Wod6j+FDG=wKq6AP+aQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaBbHs-exfvxTsFGujBXP9s7O1Wod6j+FDG=wKq6AP+aQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-version: 3.5.29.3
x-tituslabs-classifications-30: TLPropertyRoot=Dell;Classification=No
	Restrictions;Sublabels=;
x-tituslabs-classificationhash-30: VgNFIFU9Hx+/nZJb9Kg7Ihjub/qtOGbMgQpLgtjvznCueDD+T+FOxH+gpCSVtDifr/L1msNLJZUp6egPsgR2RF307YF8SOKT1GcRz8wEfIz3qRfZUdh+frIfPW4dvBDhbSocXcfMs7/kN8Bd3Wg6yzCA6Ttlb5yggiOCIrJdExJEn3ttdT24h5vgrK+nj9BN1YKSOvz/Kp4Mg4g61AUc2KSb1lUA8GbY51F3qFMkpL8q2NQX+LRtkRiAUYXXquz3AlmbonDQbzQoMfqjlbKiCw==
x-titusconfig: 1.4AMER
acceptlanguage: en-US
MIME-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Missing dependencies after setscene, postinst fails
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
X-List-Received-Date: Tue, 28 Jul 2015 17:11:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E7B9AUSX7MCPS305A_"

--_000_DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E7B9AUSX7MCPS305A_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Pj4gWW91ciBiYmFwcGVuZCBpcyBjbG9zZSBidXQgSSB0aGluayB5b3UgY291bGQgZ2VuZXJhbGlz
ZSBpdCAoaXQgaGFyZGNvZGVzIGlwa2cgcmlnaHQgbm93KQ0KDQpWZXJ5IGdvb2QgcG9pbnQuICBB
ZnRlciBhIGZldyBhdHRlbXB0cywgdGhlIGZvbGxvd2luZyBzZWVtcyB0byB3b3JrLCBzbyBpdCB3
b27igJl0IGJlIGp1c3QgaXBrIHNwZWNpZmljOg0KDQpkb19wYWNrYWdlX3NldHNjZW5lW2RlcGVu
ZHNdICs9ICJjYS1jZXJ0aWZpY2F0ZXMtbmF0aXZlOmRvX3BvcHVsYXRlX3N5c3Jvb3QiDQoNCkph
Y2sgRmV3eA0K

--_000_DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E7B9AUSX7MCPS305A_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6eD0idXJuOnNjaGVtYXMtbWljcm9z
b2Z0LWNvbTpvZmZpY2U6ZXhjZWwiIHhtbG5zOm09Imh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5j
b20vb2ZmaWNlLzIwMDQvMTIvb21tbCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnL1RSL1JFQy1o
dG1sNDAiPjxoZWFkPjxtZXRhIGh0dHAtZXF1aXY9Q29udGVudC1UeXBlIGNvbnRlbnQ9InRleHQv
aHRtbDsgY2hhcnNldD11dGYtOCI+PG1ldGEgbmFtZT1HZW5lcmF0b3IgY29udGVudD0iTWljcm9z
b2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPjxzdHlsZT48IS0tDQovKiBGb250IERlZmlu
aXRpb25zICovDQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OlNpbVN1bjsNCglwYW5vc2UtMToy
IDEgNiAwIDMgMSAxIDEgMSAxO30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6IkNhbWJyaWEg
TWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1mYWNlDQoJe2Zv
bnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAyIDQ7fQ0KQGZv
bnQtZmFjZQ0KCXtmb250LWZhbWlseToiVHJlYnVjaGV0IE1TIjsNCglwYW5vc2UtMToyIDExIDYg
MyAyIDIgMiAyIDIgNDt9DQpAZm9udC1mYWNlDQoJe2ZvbnQtZmFtaWx5OiJcQFNpbVN1biI7DQoJ
cGFub3NlLTE6MiAxIDYgMCAzIDEgMSAxIDEgMTt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0K
cC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0K
CW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5
OiJUaW1lcyBOZXcgUm9tYW4iLHNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7
bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVu
ZGVybGluZTt9DQphOnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0
eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJs
aW5lO30NCnANCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1tYXJnaW4tdG9wLWFsdDph
dXRvOw0KCW1hcmdpbi1yaWdodDowaW47DQoJbXNvLW1hcmdpbi1ib3R0b20tYWx0OmF1dG87DQoJ
bWFyZ2luLWxlZnQ6MGluOw0KCWZvbnQtc2l6ZToxMi4wcHQ7DQoJZm9udC1mYW1pbHk6IlRpbWVz
IE5ldyBSb21hbiIsc2VyaWY7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6
cGVyc29uYWwtcmVwbHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29s
b3I6IzFGNDk3RDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28tc3R5bGUtdHlwZTpleHBvcnQtb25s
eTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQpAcGFnZSBXb3JkU2VjdGlv
bjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEuMGlu
O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48
IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNw
aWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+PHht
bD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBk
YXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPjwvaGVhZD48Ym9k
eSBsYW5nPUVOLVVTIGxpbms9Ymx1ZSB2bGluaz1wdXJwbGU+PGRpdiBjbGFzcz1Xb3JkU2VjdGlv
bjE+PHAgY2xhc3M9TXNvTm9ybWFsIHN0eWxlPSd0ZXh0LWluZGVudDouNWluJz48Yj48c3BhbiBz
dHlsZT0nZm9udC1zaXplOjkuMHB0O2ZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmJz4m
Z3Q7Jmd0OyA8L3NwYW4+PC9iPjxzcGFuIHN0eWxlPSdmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fu
cy1zZXJpZic+WW91ciBiYmFwcGVuZCBpcyBjbG9zZSBidXQgSSB0aGluayB5b3UgY291bGQgZ2Vu
ZXJhbGlzZSBpdCAoaXQgaGFyZGNvZGVzIGlwa2cgcmlnaHQgbm93KTwvc3Bhbj48Yj48c3BhbiBz
dHlsZT0nZm9udC1zaXplOjkuMHB0O2ZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO2Nv
bG9yOiNBQUFBQUEnPjxvOnA+PC9vOnA+PC9zcGFuPjwvYj48L3A+PHAgY2xhc3M9TXNvTm9ybWFs
PjxiPjxzcGFuIHN0eWxlPSdmb250LXNpemU6OS4wcHQ7Zm9udC1mYW1pbHk6IkNhbGlicmkiLHNh
bnMtc2VyaWY7Y29sb3I6I0FBQUFBQSc+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9iPjwvcD48
cCBjbGFzcz1Nc29Ob3JtYWw+PHNwYW4gc3R5bGU9J2ZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1p
bHk6IkNhbGlicmkiLHNhbnMtc2VyaWYnPlZlcnkgZ29vZCBwb2ludC7CoCBBZnRlciBhIGZldyBh
dHRlbXB0cywgdGhlIGZvbGxvd2luZyBzZWVtcyB0byB3b3JrLCBzbyBpdCB3b27igJl0IGJlIGp1
c3QgaXBrIHNwZWNpZmljOjxvOnA+PC9vOnA+PC9zcGFuPjwvcD48cCBjbGFzcz1Nc29Ob3JtYWw+
PGI+PHNwYW4gc3R5bGU9J2ZvbnQtc2l6ZTo5LjBwdDtmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fu
cy1zZXJpZjtjb2xvcjojQUFBQUFBJz48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L2I+PC9wPjxw
IGNsYXNzPU1zb05vcm1hbD48c3BhbiBzdHlsZT0nZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMt
c2VyaWYnPiA8L3NwYW4+PHNwYW4gc3R5bGU9J2ZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6
IkNhbGlicmkiLHNhbnMtc2VyaWYnPmRvX3BhY2thZ2Vfc2V0c2NlbmVbZGVwZW5kc10gKz0gJnF1
b3Q7Y2EtY2VydGlmaWNhdGVzLW5hdGl2ZTpkb19wb3B1bGF0ZV9zeXNyb290JnF1b3Q7PG86cD48
L286cD48L3NwYW4+PC9wPjxwIGNsYXNzPU1zb05vcm1hbD48c3BhbiBzdHlsZT0nZm9udC1zaXpl
OjExLjBwdDtmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjtjb2xvcjojMUY0OTdEJz48
bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+PHAgY2xhc3M9TXNvTm9ybWFsPjxiPjxzcGFuIHN0
eWxlPSdmb250LXNpemU6MTAuMHB0O2ZvbnQtZmFtaWx5OiJUcmVidWNoZXQgTVMiLHNhbnMtc2Vy
aWY7Y29sb3I6IzQ0NDQ0NCc+SmFjayBGZXd4PG86cD48L286cD48L3NwYW4+PC9iPjwvcD48L2Rp
dj48L2JvZHk+PC9odG1sPg==

--_000_DBEC4AD184C3D34D8E5AF7DE018CA85C1C62E6E7B9AUSX7MCPS305A_--
