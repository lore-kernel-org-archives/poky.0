Return-Path: <teemu.keskinarkaus@crosscontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC05FE00BAF; Sun, 11 Dec 2016 23:01:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.159.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0a-001ea001.pphosted.com (mx0b-001ea001.pphosted.com
	[148.163.159.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 228F6E00B93
	for <poky@yoctoproject.org>; Sun, 11 Dec 2016 23:01:44 -0800 (PST)
Received: from pps.filterd (m0088396.ppops.net [127.0.0.1])
	by mx0b-001ea001.pphosted.com (8.16.0.17/8.16.0.17) with SMTP id
	uBC6v0qY024939; Mon, 12 Dec 2016 01:01:42 -0600
Received: from ammail.actuant.com ([207.250.73.121])
	by mx0b-001ea001.pphosted.com with ESMTP id 278dydm035-1
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
	Mon, 12 Dec 2016 01:01:41 -0600
Received: from AMDRSEX04.actuant.pri (10.10.32.62) by AMDTCEX13.actuant.pri
	(10.0.11.148) with Microsoft SMTP Server (TLS) id 14.3.301.0;
	Mon, 12 Dec 2016 01:01:41 -0600
Received: from AMDTCEX14.actuant.pri ([169.254.6.81]) by AMDRSEX04.actuant.pri
	([10.10.32.62]) with mapi id 14.03.0301.000;
	Mon, 12 Dec 2016 01:01:40 -0600
From: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [poky] Enabling UTF-8
Thread-Index: AQHSVEEOOIUUjblCZES00Rubkvci0qED4DNQ
Date: Mon, 12 Dec 2016 07:01:39 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD4243AD3E@AMDTCEX14.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD4243A127@AMDTCEX14.actuant.pri>
	<CAMKF1soUOSjFujmCd7Z8NWsDFfF6bPGK60LTq_qUpdbB31y0MA@mail.gmail.com>
In-Reply-To: <CAMKF1soUOSjFujmCd7Z8NWsDFfF6bPGK60LTq_qUpdbB31y0MA@mail.gmail.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-12-12_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 impostorscore=0 adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1609300000
	definitions=main-1612120108
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Enabling UTF-8
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
X-List-Received-Date: Mon, 12 Dec 2016 07:01:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkkgZGlkIHRoYXQgYW5kIHRoaXMgd2FzIHJlc3VsdDogR0xJQkNfR0VORVJBVEVfTE9D
QUxFUz0iZW5fR0IuVVRGLTggZW5fR0IgZW5fVVMiDQoNClNvIGZvciBzb21lIHJlYXNvbiBlbl9V
Uy5VVEYtOCB3YXMgZHJvcHBlZC4gQWxzbyBvbmx5IGVuLWdiIG1hZGUgdG8gYWN0dWFsIGltYWdl
LiBJJ20gbm90IHN1cmUgaWYgeW91IGNhbiBwdXQgbW9yZSB0aGFuIG9uZSBsYW5ndWFnZSBpbiBJ
TUFHRV9MSU5HVUFTLg0KDQpJIHJlYWQvaGVhcmQgc29tZXdoZXJlIHRoYXQgbm93YWRheXMgVVRG
LTggbG9jYWxlcyBkb24ndCBoYXZlIFVURi04IGluIHRoZWlyIGZpbGVuYW1lcyBhbnltb3JlIGJ1
dCBlbl9HQiBoYXMgYWxzbyBVVEYtOC4gU2VlbXMgdGhhdCBpdCBkZWZhdWx0cyB0byBQT1NJWCAt
IGxvY2FsZSwgYnV0IHdoZW4gSSBkbyAgYGxvY2FsZSBlbi1nYmAgSSBnZXQgZW4tZ2IgbG9jYWxl
IGV4Y2VwdCBJIGFsc28gZ2V0IHRoZXNlIGVycm9yczoNCg0KbG9jYWxlOiBDYW5ub3Qgc2V0IExD
X0NUWVBFIHRvIGRlZmF1bHQgbG9jYWxlOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQpsb2Nh
bGU6IENhbm5vdCBzZXQgTENfTUVTU0FHRVMgdG8gZGVmYXVsdCBsb2NhbGU6IE5vIHN1Y2ggZmls
ZSBvciBkaXJlY3RvcnkNCmxvY2FsZTogQ2Fubm90IHNldCBMQ19BTEwgdG8gZGVmYXVsdCBsb2Nh
bGU6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCmxvY2FsZTogdW5rbm93biBuYW1lICJlbi1n
YiINCg0KQnV0IGlmIEkgY29ubmVjdCB0byBkZXZpY2Ugd2l0aCBQdXR0eSBjb25maWd1cmVkIHRv
IFVURi04IEkgY2FuJ3QgdXNlIFVURi04IHByb3Blcmx5IChJIHVzZSBTY2FuZGljIGNoYXJhY3Rl
cnMgKMOkw7YpIHRvIHRlc3Qgd2l0aCkgZXZlbiBhZnRlciBtYW51YWxseSBzZXR0aW5nIGxvY2Fs
ZSB0byBlbi1nYiAodGhlcmUgaXMgbm8gdXRmLTggbmFtZXMgbG9jYWxlKS4gVGhleSB3b3JrIGp1
c3QgZmluZSBpZiBJIHRlc3QgaW4gUEMgd2l0aCBVYnVudHUuDQoNClRlZW11IEtlc2tpbmFya2F1
cw0KU29mdHdhcmUgc3lzdGVtIGVuZ2luZWVyDQpDcm9zc0NvbnRyb2wNCm1ha2luZyBtYWNoaW5l
cyBzbWFydCwgc2FmZSBhbmQgcHJvZHVjdGl2ZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5jb21dDQpTZW50OiAxMi4g
am91bHVrdXV0YSAyMDE2IDg6MjkNClRvOiBLZXNraW5hcmthdXMsIFRlZW11DQpDYzogcG9reUB5
b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3Bva3ldIEVuYWJsaW5nIFVURi04DQoNCk9u
IFRodSwgRGVjIDgsIDIwMTYgYXQgMTI6MDIgQU0sIEtlc2tpbmFya2F1cywgVGVlbXUgPHRlZW11
Lmtlc2tpbmFya2F1c0Bjcm9zc2NvbnRyb2wuY29tPiB3cm90ZToNCj4gSGksDQo+DQo+DQo+DQo+
IEnigJltIHRyeWluZyB0byBnZXQgVVRGLTggc3VwcG9ydCBlbmFibGVkIHRvIG15IGltYWdlLiAg
Rm9yIHdoYXRldmVyDQo+IHJlYXNvbiBJIGRvbuKAmXQgc2VlbSB0byBnZXQgaXQgd29ya2luZy4g
SSBoYXZlIGZvbGxvd2luZyBsaW5lcyBpbiBteSBsb2NhbC5jb25mLg0KPg0KPg0KPg0KPiBHTElC
Q19HRU5FUkFURV9MT0NBTEVTID0gImVuX0dCIGVuX1VTIGVuX0dCLlVURi04IGVuX1VTLlVURi04
Ig0KPg0KPiBJTUFHRV9MSU5HVUFTID0gImVuLWdiIGVuLXVzIg0KDQpjaGVjayBpZiB0aGlzIGlz
IHJlYWxseSByZWZsZWN0ZWQgaW4gZmluYWwgbWV0YWRhdGEuIHlvdSBjYW4gY2hlY2sgd2l0aA0K
DQpiaXRiYWtlIC1lIDx5b3VyLWltYWdlPiB8IGdyZXAgLWUgIl5HTElCQ19HRU5FUkFURV9MT0NB
TEVTPSINCg0KPg0KPg0KPg0KPiBJIGdldCBvbmx5IGVuIGFuZCBlbl9HQiBsb2NhbGVzIHRvIGlt
YWdlICgvdXNyL3NoYXJlL2xvY2FsZSkuDQo+DQo+DQo+DQo+IEnigJltIHVzaW5nIFlvY3RvIDEu
Ni4xLCBidXQgSeKAmXZlIHRlc3RlZCBpdCBvbiBZb2N0byAyLjEgdG9vIHdpdGhvdXQgYW55DQo+
IGRpZmZlcmVuY2UuICBJ4oCZbSB1c2luZyB2YWxsZXlpc2xhbmQtMzIg4oCTIG1hY2hpbmUgaWYg
dGhhdCBoYXMgYW55dGhpbmcNCj4gdG8gZG8gd2l0aCBpdC4NCj4NCj4NCj4NCj4gSXMgdGhlcmUg
c29tZXRoaW5nIGVsc2UgbmVlZGVkIHRvIGJlIGRvbmUgdG8gZm9yY2UgVVRGLTggbG9jYWxlcyBi
ZWluZw0KPiBnZW5lcmF0ZWQ/IFNlZW1zIHRoYXQgdGhvc2UgbGluZXMgZG9u4oCZdCBjaGFuZ2Ug
YW55dGhpbmcuIFNhbWUgbG9jYWxlcw0KPiBhcmUgZ2VuZXJhdGVkIHdpdGggb3Igd2l0aG91dCB0
aG9zZSBsaW5lcyBpbiBsb2NhbC5jb25mLg0KPg0KPg0KPg0KPiBUZWVtdSBLZXNraW5hcmthdXMN
Cj4gU29mdHdhcmUgc3lzdGVtIGVuZ2luZWVyDQo+IENlbGw6ICszNTggNDAwIDMzMDA0Nw0KPiBG
YXg6ICszNTggMjA3IDY2OTE5OQ0KPiB3d3cuY3Jvc3Njb250cm9sLmNvbQ0KPg0KPiBDcm9zc0Nv
bnRyb2wNCj4NCj4gbWFraW5nIG1hY2hpbmVzIHNtYXJ0LCBzYWZlIGFuZCBwcm9kdWN0aXZlDQo+
DQo+DQo+DQo+DQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+DQo+IEFjdHVh
bnQgQ29ycG9yYXRpb24gRW1haWwgTm90aWNlDQo+DQo+IFRoaXMgbWVzc2FnZSBpcyBpbnRlbmRl
ZCBvbmx5IGZvciB0aGUgdXNlIG9mIHRoZSBBZGRyZXNzZWUgYW5kIG1heQ0KPiBjb250YWluIGlu
Zm9ybWF0aW9uIHRoYXQgaXMgUFJJVklMRUdFRCBhbmQvb3IgQ09ORklERU5USUFMLg0KPiBUaGlz
IGVtYWlsIGlzIGludGVuZGVkIG9ubHkgZm9yIHRoZSBwZXJzb25hbCBhbmQgY29uZmlkZW50aWFs
IHVzZSBvZg0KPiB0aGUNCj4gcmVjaXBpZW50KHMpIG5hbWVkIGFib3ZlLiBJZiB0aGUgcmVhZGVy
IG9mIHRoaXMgZW1haWwgaXMgbm90IGFuDQo+IGludGVuZGVkIHJlY2lwaWVudCwgeW91IGhhdmUg
cmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBhbmQgYW55DQo+IHJldmlldywgZGlzc2VtaW5h
dGlvbiwgZGlzdHJpYnV0aW9uIG9yIGNvcHlpbmcgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4NCj4g
SWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0
aGUgc2VuZGVyDQo+IGltbWVkaWF0ZWx5IGJ5IHJldHVybiBtYWlsIGFuZCBwZXJtYW5lbnRseSBk
ZWxldGUgdGhlIGNvcHkgeW91IHJlY2VpdmVkLg0KPg0KPiBUaGFuayB5b3UuDQo+DQo+IC0tDQo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IHBva3kg
bWFpbGluZyBsaXN0DQo+IHBva3lAeW9jdG9wcm9qZWN0Lm9yZw0KPiBodHRwczovL2xpc3RzLnlv
Y3RvcHJvamVjdC5vcmcvbGlzdGluZm8vcG9reQ0KPg0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXw0KDQpBY3R1YW50IENvcnBvcmF0aW9uIEVtYWlsIE5vdGljZQ0KDQpUaGlzIG1l
c3NhZ2UgaXMgaW50ZW5kZWQgb25seSBmb3IgdGhlIHVzZSBvZiB0aGUgQWRkcmVzc2VlIGFuZCBt
YXkgY29udGFpbiBpbmZvcm1hdGlvbiB0aGF0IGlzIFBSSVZJTEVHRUQgYW5kL29yIENPTkZJREVO
VElBTC4NClRoaXMgZW1haWwgaXMgaW50ZW5kZWQgb25seSBmb3IgdGhlIHBlcnNvbmFsIGFuZCBj
b25maWRlbnRpYWwgdXNlIG9mIHRoZSByZWNpcGllbnQocykgbmFtZWQgYWJvdmUuIElmIHRoZSBy
ZWFkZXIgb2YgdGhpcyBlbWFpbCBpcyBub3QgYW4gaW50ZW5kZWQgcmVjaXBpZW50LCB5b3UgaGF2
ZSByZWNlaXZlZCB0aGlzIGVtYWlsIGluIGVycm9yIGFuZCBhbnkgcmV2aWV3LCBkaXNzZW1pbmF0
aW9uLCBkaXN0cmlidXRpb24gb3IgY29weWluZyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLg0KSWYg
eW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0aGUg
c2VuZGVyIGltbWVkaWF0ZWx5IGJ5IHJldHVybiBtYWlsIGFuZCBwZXJtYW5lbnRseSBkZWxldGUg
dGhlIGNvcHkgeW91IHJlY2VpdmVkLg0KDQpUaGFuayB5b3UuDQo=

