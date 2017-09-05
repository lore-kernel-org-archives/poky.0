Return-Path: <prvs=41429ceb1=Thomas.Koeller@baslerweb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 638E9E00C9E; Tue,  5 Sep 2017 01:37:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.156.24.166 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Tue, 05 Sep 2017 01:37:05 PDT
Received: from mail01.baslerweb.com (mail01.baslerweb.com [80.156.24.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E434AE00349
	for <poky@yoctoproject.org>; Tue,  5 Sep 2017 01:37:05 -0700 (PDT)
Received: from unknown (HELO ahr206s.basler.corp) ([172.16.20.206])
	by mail01-out.baslerweb.com with ESMTP; 05 Sep 2017 10:36:01 +0200
From: "Koeller, Thomas" <Thomas.Koeller@baslerweb.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: Dependency problem
Thread-Index: AdMmHUgytoDqI6qsQSmzMQu+23fGkQ==
Date: Tue, 5 Sep 2017 08:36:00 +0000
Message-ID: <8caf136aac8d4d66a542ef056a92c331@ahr206s.basler.corp>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.16.20.16]
x-c2processedorg: edc209ba-7b98-423a-8e4d-b8fa22bc0743
MIME-Version: 1.0
Subject: Dependency problem
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
X-List-Received-Date: Tue, 05 Sep 2017 08:37:07 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gYWxsLA0KDQpJIGhhdmUgYmVlbiBzdHJ1Z2dsaW5nIHdpdGggYSBwcm9ibGVtIGZvciBh
IGNvdXBsZSBvZiBkYXlzIG5vdywgd2l0aG91dCBzdWNjZXNzIHNvIGZhci4gSG9wZSBzb21lYm9k
eSBvbiB0aGlzIGxpc3QgY2FuIGhlbHAuDQoNCkkgaGF2ZSB0d28gcmVjaXBlcywgbGV0J3MgY2Fs
bCB0aGVtIHJlY2lwZV9hIGFuZCByZWNpcGVfYiAoSSBhbSBub3QgYWxsb3dlZCB0byBzaGFyZSB0
aGUgYWN0dWFsIHJlY2lwZXMgZm9yIGxlZ2FsIHJlYXNvbnMpLiByZWNpcGVfYSBkZXBlbmRzIG9u
IHJlY2lwZSBiOyB0aGVyZSBpcyBhIGxpbmUgcmVhZGluZyAnREVQRU5EUyA9ICIuLi4gcmVjaXBl
X2IgLi4uIiBpbiByZWNpcGVfYS5iYi4gV2hlbmV2ZXIgSSBpbnZva2UgcmVjaXBlX2IgZGlyZWN0
bHkgKGJpdGJha2UgcmVjaXBlX2IpLCBhbGwgaXMgd2VsbCBhbmQgcmVjaXBlX2IgcHJvZHVjZXMg
dGhlIGV4cGVjdGVkIHJlc3VsdHMuIEluIHBhcnRpY3VsYXIsIHRoZSBwb3B1bGF0ZV9zeXNyb290
IHRhc2sgcGxhY2VzIGEgbnVtYmVyIG9mIGhlYWRlciBmaWxlcyBpbiB0aGUgc3lzcm9vdCBkaXJl
Y3RvcnkuIElmLCBob3dldmVyLCBJIGRvICdiaXRiYWtlIHJlY2lwZV9hJywgSSBmaW5kIHRoYXQs
IHdoaWxlIHNldmVyYWwgdGFza3MgZnJvbSByZWNpcGVfYiBhcmUgZXhlY3V0ZWQsIHBvcHVsYXRl
X3N5c3Jvb3QgaXMgb2J2aW91c2x5IG5vdCBhbW9uZyB0aGVtLiBJIHNob3VsZCBwcm9iYWJseSBt
ZW50aW9uIHRoYXQgcmVjaXBlX2IgaW5oZXJpdHMgZnJvbSB0aGUgcXByZWJ1aWx0IGNsYXNzLg0K
DQpJIG5vdGljZWQgdGhhdCByZWNpcGVfYSBzZXRzIGEgdmFyaWFibGUgJ1BSRUJVSUxUID0gIjEi
Jywgd2hpY2ggZG9lcyBub3QgYXBwZWFyIHRvIGJlIHVzZWQgYW55d2hlcmUgYW5kIGlzIG5vdCBt
ZW50aW9uZWQgaW4gdGhlIHlvY3RvIGRvY3MuIE1heWJlIHRoaXMgaGFzIHNvbWV0aGluZyB0byBk
byB3aXRoIHRoZSBwcm9ibGVtLCBvciBtYXliZSBub3QuDQoNCkknZCBiZSBncmF0ZWZ1bCBmb3Ig
YW55IGluZm9ybWF0aW9uIHRoYXQgbWlnaHQgYmUgdXNlZnVsIGluIHNvbHZpbmcgdGhpcyBwcm9i
bGVtLg0KDQpUaGFua3MsDQpUaG9tYXMNCg0KDQoNClRob21hcyBLb2VsbGVyDQpTZW5pb3IgU29m
dHdhcmUgRGV2ZWxvcGVyDQoNCg0KDQpCYXNsZXIgQUcNCkFuIGRlciBTdHJ1c2JlayA2MC02Mg0K
MjI5MjYgQWhyZW5zYnVyZw0KR2VybWFueQ0KDQpUZWwuICs0OSA0MTAyIDQ2MyAzOTANCkZheCAr
NDkgNDEwMiA0NjMgNDYgMzkwDQoNClRob21hcy5Lb2VsbGVyQGJhc2xlcndlYi5jb20NCnd3dy5i
YXNsZXJ3ZWIuY29tDQoNCkJBU0xFUsK0UyBDT01QT05FTlRTIEVOSEFOQ0UgWU9VUiBWSVNJT04N
CmJhc2xlcndlYi5jb20vdmlzaW9uLWNvbXBvbmVudHMNCg0KTWFuYWdlbWVudCBib2FyZDogRHIu
LUluZy4gRGlldG1hciBMZXkgKENFTykgwrcgSm9obiBQLiBKZW5uaW5ncyDCtyBBcm5kdCBCYWtl
IMK3IEhhcmR5IE1laGwNCkNoYWlybWFuIG9mIHRoZSBzdXBlcnZpc29yeSBib2FyZDogTm9yYmVy
dCBCYXNsZXINCkJhc2xlciBBRyDCtyBBbXRzZ2VyaWNodCBMw7xiZWNrIEhSQiA0MDkwIMK3IFVz
dC1JZE5yLjogREUgMTM1IDA5OCAxMjEgwrcgU3RldWVyLU5yLjogMzAgMjkyIDA0NDk3IMK3IFdF
RUUtUmVnLi1Oci4gREUgODM4ODgwNDUNCg==

