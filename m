Return-Path: <Nicolas.Ferre@microchip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DBB7E01305; Fri, 15 Jun 2018 01:31:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [216.71.154.253 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Fri, 15 Jun 2018 01:31:13 PDT
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
	[216.71.154.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04AC4E00EFC
	for <poky@yoctoproject.org>; Fri, 15 Jun 2018 01:31:13 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.49,502,1520924400"; d="scan'208";a="12534850"
Received: from smtpout.microchip.com (HELO email.microchip.com)
	([198.175.253.82])
	by esa6.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	15 Jun 2018 01:30:11 -0700
Received: from [10.159.245.112] (10.10.76.4) by chn-sv-exch06.mchp-main.com
	(10.10.76.107) with Microsoft SMTP Server id 14.3.352.0;
	Fri, 15 Jun 2018 01:30:10 -0700
To: <poky@yoctoproject.org>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Organization: microchip
Message-ID: <47c97294-f857-295d-485e-d572f7e27b8a@microchip.com>
Date: Fri, 15 Jun 2018 10:30:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
Cc: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Subject: iso-codes: issue with do_fetch on pkg-isocodes.alioth.debian.org
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
X-List-Received-Date: Fri, 15 Jun 2018 08:31:15 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: base64

SGksDQoNCkkgaGF2ZSBhbiBpc3N1ZSB3aXRoIGJ1aWxkaW5nICJzdW1vIiByaWdodCBub3c6
IEl0J3MgYSBGZWNoZXIgaXNzdWUgaXQgc2VlbXMuIEkgYWN0dWFsbHkgZG9uJ3Qga25vdyBp
ZiBpdCdzIHJlcG9ydGVkIHlldCAoZm9yZ2l2ZSBtZSBpZiBpdCBpcy4uLikuDQoNCkkgcmVw
b3J0IGl0IG9uIHBva3kgaW5zdGVhZCBvZiBvcGVuZW1iZWRkZWQtZGV2ZWwgYmVjYXVzZSBp
dCdzIHdlcmUgbXkgcmVjaXBlIGlzOiBwbGVhc2UgZm9sbG93IHVwIHRoZXJlIGlmIG5lZWRl
ZC4NCg0KQnVpbGQgQ29uZmlndXJhdGlvbjoNCkJCX1ZFUlNJT04gICAgICAgICAgID0gIjEu
MzguMCINCkJVSUxEX1NZUyAgICAgICAgICAgID0gIng4Nl82NC1saW51eCINCk5BVElWRUxT
QlNUUklORyAgICAgID0gInVuaXZlcnNhbCINClRBUkdFVF9TWVMgICAgICAgICAgID0gImFy
bS1wb2t5LWxpbnV4LWdudWVhYmkiDQpNQUNISU5FICAgICAgICAgICAgICA9ICJzYW1hNWQy
LXhwbGFpbmVkLXNkIg0KRElTVFJPICAgICAgICAgICAgICAgPSAicG9reS1hdG1lbCINCkRJ
U1RST19WRVJTSU9OICAgICAgID0gIjIuNSINClRVTkVfRkVBVFVSRVMgICAgICAgID0gImFy
bSBhcm12N2EgdmZwIHRodW1iIG5lb24gY2FsbGNvbnZlbnRpb24taGFyZCBjb3J0ZXhhNSIN
ClRBUkdFVF9GUFUgICAgICAgICAgID0gImhhcmQiDQptZXRhDQptZXRhLXBva3kNCm1ldGEt
eW9jdG8tYnNwICAgICAgID0gInN1bW86ZTdiNmZhZDc1OGZiY2NmNmVkZDQ1NmI2ZGExNTcz
ZWVhM2IyMmE1NiINCm1ldGEtYXRtZWwgICAgICAgICAgID0gInN1bW86YmQxNmJjMTVmNTEz
Y2VmM2E1N2ZiYzJlYjc2MjY4MmFiZTk0ZWIxMyINCm1ldGEtb2UNCm1ldGEtbmV0d29ya2lu
Zw0KbWV0YS1weXRob24NCm1ldGEtbXVsdGltZWRpYSAgICAgID0gInN1bW86YTE5YWEyOWY3
ZmEzMzZjZDA3NWI3MmM0OTZmZTExMDJlNmU1NDIyYiINCm1ldGEtcXQ1ICAgICAgICAgICAg
ID0gIkhFQUQ6NWQzNzUwNzZhOWMyYjJlMzlmOTkwMTJkMzUxOWExY2IyZmY1ODExZCINCg0K
SW5pdGlhbGlzaW5nIHRhc2tzOiAxMDAlIHwjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjI3wgVGltZTogMDowMDowNA0KTk9URTogRXhlY3V0aW5n
IFNldFNjZW5lIFRhc2tzDQpOT1RFOiBFeGVjdXRpbmcgUnVuUXVldWUgVGFza3MNCldBUk5J
Tkc6IGlzby1jb2Rlcy0zLjc3LXIwIGRvX2ZldGNoOiBGYWlsZWQgdG8gZmV0Y2ggVVJMIGh0
dHBzOi8vcGtnLWlzb2NvZGVzLmFsaW90aC5kZWJpYW4ub3JnL2Rvd25sb2Fkcy9pc28tY29k
ZXMtMy43Ny50YXIueHosIGF0dGVtcHRpbmcgTUlSUk9SUyBpZiBhdmFpbGFibGUNCkVSUk9S
OiBpc28tY29kZXMtMy43Ny1yMCBkb19mZXRjaDogRmV0Y2hlciBmYWlsdXJlOiBGZXRjaCBj
b21tYW5kIGV4cG9ydCBQU0VVRE9fRElTQUJMRUQ9MTsgZXhwb3J0IFBBVEg9Ii93b3JrL25m
ZXJyZS95cC9wb2t5L2J1aWxkLW1pY3JvY2hpcC90bXAvc3lzcm9vdHMtdW5pbmF0aXZlL3g4
Nl82NC1saW51eC91c3IvYmluOi93b3JrL25mZXJyZS95cC9wb2t5L3NjcmlwdHM6L3dvcmsv
bmZlcnJlL3lwL3Bva3kvYnVpbGQtbWljcm9jaGlwL3RtcC93b3JrL2FsbC1wb2t5LWxpbnV4
L2lzby1jb2Rlcy8zLjc3LXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2FsbGFy
Y2gtcG9reS1saW51eDovd29yay9uZmVycmUveXAvcG9reS9idWlsZC1taWNyb2NoaXAvdG1w
L3dvcmsvYWxsLXBva3ktbGludXgvaXNvLWNvZGVzLzMuNzctcjAvcmVjaXBlLXN5c3Jvb3Qv
dXNyL2Jpbi9jcm9zc3NjcmlwdHM6L3dvcmsvbmZlcnJlL3lwL3Bva3kvYnVpbGQtbWljcm9j
aGlwL3RtcC93b3JrL2FsbC1wb2t5LWxpbnV4L2lzby1jb2Rlcy8zLjc3LXIwL3JlY2lwZS1z
eXNyb290LW5hdGl2ZS91c3Ivc2Jpbjovd29yay9uZmVycmUveXAvcG9reS9idWlsZC1taWNy
b2NoaXAvdG1wL3dvcmsvYWxsLXBva3ktbGludXgvaXNvLWNvZGVzLzMuNzctcjAvcmVjaXBl
LXN5c3Jvb3QtbmF0aXZlL3Vzci9iaW46L3dvcmsvbmZlcnJlL3lwL3Bva3kvYnVpbGQtbWlj
cm9jaGlwL3RtcC93b3JrL2FsbC1wb2t5LWxpbnV4L2lzby1jb2Rlcy8zLjc3LXIwL3JlY2lw
ZS1zeXNyb290LW5hdGl2ZS9zYmluOi93b3JrL25mZXJyZS95cC9wb2t5L2J1aWxkLW1pY3Jv
Y2hpcC90bXAvd29yay9hbGwtcG9reS1saW51eC9pc28tY29kZXMvMy43Ny1yMC9yZWNpcGUt
c3lzcm9vdC1uYXRpdmUvYmluOi93b3JrL25mZXJyZS95cC9wb2t5L2JpdGJha2UvYmluOi93
b3JrL25mZXJyZS95cC9wb2t5L2J1aWxkLW1pY3JvY2hpcC90bXAvaG9zdHRvb2xzIjsgZXhw
b3J0IEhPTUU9Ii9ob21lL25mZXJyZSI7IC91c3IvYmluL2VudiB3Z2V0IC10IDIgLVQgMzAg
LW52IC0tcGFzc2l2ZS1mdHAgLS1uby1jaGVjay1jZXJ0aWZpY2F0ZSAtUCAvaG9tZS9uZmVy
cmUvYXJjaGl2ZXMvb2Vfc291cmNlcy8gJ2h0dHBzOi8vcGtnLWlzb2NvZGVzLmFsaW90aC5k
ZWJpYW4ub3JnL2Rvd25sb2Fkcy9pc28tY29kZXMtMy43Ny50YXIueHonIC0tcHJvZ3Jlc3M9
ZG90IC12IGZhaWxlZCB3aXRoIGV4aXQgY29kZSA0LCBvdXRwdXQ6DQotLTIwMTgtMDYtMTMg
MTE6NTU6NTYtLSAgaHR0cHM6Ly9wa2ctaXNvY29kZXMuYWxpb3RoLmRlYmlhbi5vcmcvZG93
bmxvYWRzL2lzby1jb2Rlcy0zLjc3LnRhci54eg0KUmVzb2x2aW5nIHBrZy1pc29jb2Rlcy5h
bGlvdGguZGViaWFuLm9yZyAocGtnLWlzb2NvZGVzLmFsaW90aC5kZWJpYW4ub3JnKS4uLiBm
YWlsZWQ6IE5hbWUgb3Igc2VydmljZSBub3Qga25vd24uDQp3Z2V0OiB1bmFibGUgdG8gcmVz
b2x2ZSBob3N0IGFkZHJlc3Mg4oCYcGtnLWlzb2NvZGVzLmFsaW90aC5kZWJpYW4ub3Jn4oCZ
DQoNCkVSUk9SOiBpc28tY29kZXMtMy43Ny1yMCBkb19mZXRjaDogRmV0Y2hlciBmYWlsdXJl
IGZvciBVUkw6ICdodHRwczovL3BrZy1pc29jb2Rlcy5hbGlvdGguZGViaWFuLm9yZy9kb3du
bG9hZHMvaXNvLWNvZGVzLTMuNzcudGFyLnh6Jy4gVW5hYmxlIHRvIGZldGNoIFVSTCBmcm9t
IGFueSBzb3VyY2UuDQpFUlJPUjogaXNvLWNvZGVzLTMuNzctcjAgZG9fZmV0Y2g6IEZ1bmN0
aW9uIGZhaWxlZDogYmFzZV9kb19mZXRjaA0KRVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBz
dG9yZWQgaW46IC93b3JrL25mZXJyZS95cC9wb2t5L2J1aWxkLW1pY3JvY2hpcC90bXAvd29y
ay9hbGwtcG9reS1saW51eC9pc28tY29kZXMvMy43Ny1yMC90ZW1wL2xvZy5kb19mZXRjaC41
Mzc1DQpFUlJPUjogVGFzayAoL3dvcmsvbmZlcnJlL3lwL3Bva3kvbWV0YS9yZWNpcGVzLXN1
cHBvcnQvaXNvLWNvZGVzL2lzby1jb2Rlc18zLjc3LmJiOmRvX2ZldGNoKSBmYWlsZWQgd2l0
aCBleGl0IGNvZGUgJzEnDQpOT1RFOiBUYXNrcyBTdW1tYXJ5OiBBdHRlbXB0ZWQgNTI5NiB0
YXNrcyBvZiB3aGljaCA1Mjk1IGRpZG4ndCBuZWVkIHRvIGJlIHJlcnVuIGFuZCAxIGZhaWxl
ZC4NCg0KU3VtbWFyeTogMSB0YXNrIGZhaWxlZDoNCiAgL3dvcmsvbmZlcnJlL3lwL3Bva3kv
bWV0YS9yZWNpcGVzLXN1cHBvcnQvaXNvLWNvZGVzL2lzby1jb2Rlc18zLjc3LmJiOmRvX2Zl
dGNoDQpTdW1tYXJ5OiBUaGVyZSB3ZXJlIDMgV0FSTklORyBtZXNzYWdlcyBzaG93bi4NClN1
bW1hcnk6IFRoZXJlIHdlcmUgMyBFUlJPUiBtZXNzYWdlcyBzaG93biwgcmV0dXJuaW5nIGEg
bm9uLXplcm8gZXhpdCBjb2RlLg0KDQpCZXN0IHJlZ2FyZHMsDQotLSANCk5pY29sYXMgRmVy
cmUNCg==

