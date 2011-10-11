Return-Path: <wenhuax.fan@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D578E0127C
	for <poky@pokylinux.org>; Mon, 10 Oct 2011 21:48:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 10 Oct 2011 21:48:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,521,1312182000"; 
	d="xml'?ods'72,48?scan'72,48,208,217,72,48";a="72212860"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2011 21:48:36 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 11 Oct 2011 12:48:18 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 11 Oct 2011 12:48:17 +0800
From: "Fan, WenhuaX" <wenhuax.fan@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 11 Oct 2011 12:48:08 +0800
Thread-Topic: weekly test report for Yocto M4 RC4 build
Thread-Index: AcyH0Pi3QAe2XDcASy+er0bKMJDhtw==
Message-ID: <2F0982C572735F46B77790D29DA0FD8712D3AB4720@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: weekly test report for Yocto M4 RC4 build
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
X-List-Received-Date: Tue, 11 Oct 2011 04:48:40 -0000
X-Groupsio-MsgNum: 7039
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_2F0982C572735F46B77790D29DA0FD8712D3AB4720shsmsx501ccrc_"

--_004_2F0982C572735F46B77790D29DA0FD8712D3AB4720shsmsx501ccrc_
Content-Type: multipart/alternative;
	boundary="_000_2F0982C572735F46B77790D29DA0FD8712D3AB4720shsmsx501ccrc_"

--_000_2F0982C572735F46B77790D29DA0FD8712D3AB4720shsmsx501ccrc_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgQWxsLA0KICAgICAgVGhpcyBpcyB0aGUgd2Vla2x5IHRlc3QgcmVwb3J0IGZvciBZb2N0byAx
LjEgTTQgUkM0IGJ1aWxkLiBUaGVyZSBhcmUgNCBuZXcgYnVncyBmb3VuZCwgaW5jbHVkaW5nIDEg
cmVncmVzc2lvbiBpc3N1ZS4gRGlzdHJpYnV0aW9uIHRlc3Rpbmcod29ybGQgYnVpbGQpIGlzIGJs
b2NrZWQgYnkgYSBjb21waWxlIGVycm9yIGZvciByZWNpcGUgdGV4aW5mby4gSG9iIGNvdWxkIG5v
dCB3b3JrIHdpdGggZGViL2lwayBidWlsZC4gQW5kIGEgY3Jhc2ggaXNzdWUgaXMgZm91bmQgd2l0
aCBob2Igb24gVWJ1bnR1IDEwLjEwLiB4MzIgYnVpbGQgaXMgYmxvY2tlZCBieSBzb21lIFVSTCBh
bmQgY2hlY2tzdW0gYnJva2VuLCB3aGljaCBzaG91bGQgYmUgZml4ZWQgYnkgTml0aW4gaW4gbGF0
ZXN0IHgzMiB0cmVlLiBRQSByZW9wZW4gYW4gb2xkIGJ1ZywgYnVnIDEyMzUgqEMgobBnbHgqIGNv
bW1hbmQgc2VnZmF1bHQgb24gZW1lbmxvd6GxLCB3aGljaCBzaG91bGQgYmUgZml4ZWQgYnkgVG9t
IHdpdGhpbiBsYXRlc3QgbWV0YS1pbnRlbC4gTXVsdGlsaWIgY291bGQgd29yayB3aXRob3V0IGFu
eSB1bmV4cGVjdGVkIG5vdy4NCk5vdGU6IGZvciBkaWZmZXJlbmNlIGltYWdlIGJ1aWxkIGFnYWlu
c3QgZGlmZmVyZW5jZSBjb21taXQvYnJhbmNoLCBwbGVhc2UgcmVmZXIgdG8goa5jb21taXQgaW5m
b3JtYXRpb26hryBzZWN0aW9uIGZvciBkZXRhaWwgaW5mb3JtYXRpb24uIFRoZSB0ZXN0IHJlcG9y
dCBpcyBhcmNoaXZlZCBAIGh0dHBzOi8vd2lraS5wb2t5bGludXgub3JnL3dpa2kvWW9jdG9fMS4x
X01pbGVzdG9uZV9UZXN0X1JlcG9ydA0KDQoNClRlc3QgU3VtbWFyeToNCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpUZXN0IFJlc3VsdCBTdW1tYXJ5DQoNCkNvbXBv
bmVudA0KDQpUYXJnZXQNCg0KU3RhdHVzDQoNCkNvbW1lbnRzDQoNCkJTUA0KDQplTWVubG93DQoN
CkdPT0QNCg0KSTJDX3RyYW5zZmVyIGVycm9yOyBTdGFuZGJ5IGZhaWxlZDsgR2x4KiBjb21tYW5k
IHNlZ2ZhdWx0Lg0KDQpCbGFja3NhbmQNCg0KR09PRA0KDQpFdmVyeXRoaW5nIHJ1bnMgd2VsbA0K
DQpDcm93bmJheS1lbWdkDQoNCkdPT0QNCg0KWG9yZyBlYXQgbG90cyBvZiBjdXAncyByZXNvdXJj
ZSBhZnRlciBzdGFuZGJ5DQoNClN1Z2FyYmF5DQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdl
bGwNCg0KSmFzcGVyZm9yZXN0LWxzYg0KDQpHT09EDQoNCkkvT0FUIERNQSBlbmdpbmUgaW5pdCBm
YWlsZWQ7DQoNCkJlYWdsZWJvYXJkDQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0K
Um91dGVyc3RhdGlvbnBybw0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCk1wYzgz
MTVlLXJkYg0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNClFFTVUNCg0KcWVtdXg4
Ng0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCnFlbXV4ODYtNjQNCg0KR09PRA0K
DQpFdmVyeXRoaW5nIHJ1bnMgd2VsbA0KDQpxZW11YXJtDQoNCkdPT0QNCg0KRXZlcnl0aGluZyBy
dW5zIHdlbGwNCg0KcWVtdXBwYw0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCnFl
bXVtaXBzDQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0KQ29yZSBidWlsZCBzeXN0
ZW0NCg0KoaENCg0KQlVHR1kNCg0KT3BrZyBwYWNrYWdlIGluZm9ybWF0aW9uIG5vdCBzaG93IG11
bHRpbGliIGluc3RhbGxlZCBwYWNrYWdlczsgeDMyIGJ1aWxkIGNvdWxkbid0IHdvcmsgZHVlIHRv
IGJyb2tlbiBzb3VyY2UgVVJMDQoNCkFEVA0KDQqhoQ0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVu
cyB3ZWxsDQoNCkhPQg0KDQqhoQ0KDQpCVUdHWQ0KDQpEZWIvaXBrIGJ1aWxkIG5vdCBwcm9jZWVk
IGJ5IHNob3dpbmcgc29tZSBwYWNrYWdlcyBiZWluZyBidWlsdDsgaG9iIGNyYXNoIHdoZW4gb3Bl
bmluZyBjdXN0b21pemVkIGJiIGZpbGUgd2l0aCBVYnVudHUgMTAuMTAuDQoNCg0KoaENCg0KQ3Jp
dGljYWwgYnVncywgbW9yZSB0aGFuIDUwJSB0ZXN0IGNhc2VzIGFyZSBibG9ja2VkDQoNCqGhDQoN
Ck9ubHkgTm9ybWFsLCBNaW5vciBvciBFbmhhbmNlbWVudCBidWdzLCBvciBsZXNzIHRoYW4gMTAl
IHRlc3QgY2FzZXMgZmFpbGVkDQoNCqGhDQoNCk5vcm1hbCwgTWFqb3IgYW5kIENyaXRpY2FsIGJ1
Z3MsIGFuZCBtb3JlIHRoYW4gMTAlIHRlc3QgY2FzZXMgZmFpbGVkDQoNCg0KRGV0YWlsZWQgVGVz
dCBSZXN1bHQgZm9yIGVhY2ggY29tcG9uZW50DQoNClRhcmdldA0KDQpUb3RhbCBUQ3MNCg0KTm90
IFJ1bg0KDQpQYXNzZWQNCg0KRmFpbGVkDQoNCk5vdCB0ZXN0YWJsZSAoQmxvY2tlZCkNCg0KZU1l
bmxvdyBTYXRvLVNESw0KDQo1OA0KDQowDQoNCjU1DQoNCjIgKGJ1ZyAzMTAsIDUwMywgMTIzNSkN
Cg0KMSAoYnVnIDEyMzUpDQoNCm40NTAgU2F0by1TREsNCg0KNTgNCg0KMA0KDQo1OA0KDQowDQoN
CjANCg0KQ3Jvd25iYXktU2F0by1TREsNCg0KNTgNCg0KMA0KDQo1OA0KDQowDQoNCjANCg0KU3Vn
YXJiYXkgU2F0by1TREsNCg0KNjENCg0KMA0KDQo2MQ0KDQowDQoNCjANCg0KSmFzcGVyZm9yZXN0
IGxzYi1TREsNCg0KMzINCg0KMA0KDQozMQ0KDQoxIChidWcgMTE4OCkNCg0KMA0KDQpCZWFnbGVi
b2FyZCBTYXRvLVNESw0KDQozOQ0KDQowDQoNCjM5DQoNCjANCg0KMA0KDQpSb3V0ZXJzdGF0aW9u
cHJvIFNhdG8tU0RLDQoNCjMzDQoNCjANCg0KMzMNCg0KMA0KDQowDQoNCk1wYzgzMTVlLXJkYiBT
YXRvLVNESw0KDQozNg0KDQowDQoNCjM2DQoNCjANCg0KMA0KDQpRZW11eDg2LTY0IFNhdG8NCg0K
MjkNCg0KMA0KDQoyOA0KDQoxIChidWcgMTE3NCkNCg0KMA0KDQpRZW11eDg2LTY0IFNhdG8tU0RL
DQoNCjM0DQoNCjANCg0KMzMNCg0KMSAoYnVnIDExNzQpDQoNCjANCg0KUWVtdXg4NiBTYXRvDQoN
CjI4DQoNCjANCg0KMjcNCg0KMSAoYnVnIDExNzQpDQoNCjANCg0KUWVtdXg4NiBTYXRvLVNESw0K
DQozNA0KDQowDQoNCjMzDQoNCjEgKGJ1ZyAxMTc0KQ0KDQowDQoNClFlbXVhcm0gU2F0bw0KDQoy
OQ0KDQowDQoNCjI5DQoNCjANCg0KMA0KDQpRZW11YXJtIFNhdG8tU0RLDQoNCjM0DQoNCjANCg0K
MzQNCg0KMA0KDQowDQoNClFlbXVtaXBzIFNhdG8NCg0KMjkNCg0KMA0KDQoyOQ0KDQowDQoNCjAN
Cg0KUWVtdW1pcHMgU2F0by1TREsNCg0KMzQNCg0KMA0KDQozNA0KDQowDQoNCjANCg0KUWVtdXBw
YyBTYXRvDQoNCjIxDQoNCjANCg0KMjENCg0KMA0KDQowDQoNClFlbXVwcGMgU2F0by1TREsNCg0K
MjYNCg0KMA0KDQoyNg0KDQowDQoNCjANCg0KQ29yZSBidWlsZCBzeXN0ZW0NCg0KMjUNCg0KMA0K
DQoyMg0KDQozIChidWcgMTUyMiwgMTUyOSkNCg0KMA0KDQpBRFQNCg0KNg0KDQowDQoNCjYNCg0K
MA0KDQowDQoNCkhPQg0KDQoyNg0KDQowDQoNCjI0DQoNCjIgKGJ1ZyAxNjY1KQ0KDQowDQoNClRv
dGFsDQoNCjczMA0KDQowDQoNCjcxNw0KDQoxMg0KDQoxDQoNCg0KDQoNCkNvbW1pdCBJbmZvcm1h
dGlvbg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCkZvciBlTWVu
bG93L0JsYWNrc2FuZC9Dcm93bmJheS9TdWdhcmJheS9KYXNwZXJmb3Jlc3QvUWVtdXg4Ni90b29s
Y2hhaW46DQoNClRyZWUvQnJhbmNoOiBQb2t5L0VkaXNvbg0KQ29tbWl0IGlkOiBiYzg4NWNkOGQz
NDNhZDAwMzM5MTIyMjQyOTIyMjUyNmRiYTE3NWFkDQpNZXRhIGJyYW5jaDogRWRpc29uDQpDb21t
aXQgaWQ6IGZkN2VlZTE4ZTM4YWU0NWVmYWEyOTlmMDE1YWVkZDRkYzMyNTdlNmQNCg0KRm9yIFFl
bXVBcm0vUWVtdU1pcHMvUWVtdVBQQy9CZWFnbGVib2FyZC9Sb3V0ZXJzdGF0aW9ucHJvL01wYzgz
MTVlLXJkYi90b29sY2hhaW46DQoNClRyZWUvQnJhbmNoOiBwb2t5L2VkaXNvbg0KUG9reSBDb21t
aXQ6IGUwMmQ1NTNiNDU4MDhiNzg4YzcyMWMwNzIyMzc5ZDZiMzdjMGI3ZDgNCg0KDQpJc3N1ZSBz
dW1tYXJ5DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpDb21wb25l
bnQNCg0KQnVnIE51bWJlcg0KDQpUYXJnZXQgTWlsZXN0b25lDQoNClN5c3RlbSAmIENvcmUgT1MN
Cg0KU3lzdGVtIFVzYWdlDQoNCkJ1ZyA1MDMgLSBbZW1lbmxvd10gc3lzdGVtIGNhbm5vdCBlbnRl
ciBTMyBzdGFuZGJ5IG1vZGUNCg0KMS4yDQoNCkJ1ZyAxMDgyIC0gW3g4Nl82NF0gTm8gaWNvbnMg
c2hvd24gb24gWCBkZXNrdG9wIHdpdGggc2F0byBpbWFnZQ0KDQoxLjAgTTINCg0KQnVnIDExNzQ6
IFt6eXBwZXIvcnBtXSBwYWNrYWdlIGluc3RhbGwvcmVtb3ZhbCBjb3N0cyBsb3RzIG9mIGRpc2sg
c3BhY2UNCg0KMS4yDQoNCk90aGVyDQoNCkJ1ZyAzMTAgLSBbZU1lbmxvd10gaTJjX3RyYW5zZmVy
IGVycm9yIG9uIGUtTWVubG93DQoNCjEuMQ0KDQpCdWcgMTE4OCAtIFtqYXBlcmZvcmVzdF0gSS9P
QVQgRE1BIGVuZ2luZSBpbml0IGZhaWxlZA0KDQoxLjINCg0KQnVnIDEyMzUgLSBbRW1lbmxvd10g
UnVubmluZyBnbHhpbmZvIGFuZCBnbHhnZWFycyBjb21tYW5kcyBmYWlsZWQuDQoNCjEuMSBNMg0K
DQpCdWcgMTI1OCAtW2Nyb3duYmF5XSBYb3JnIGVhdHMgbG90cyBvZiBDUFUgdGltZSBhZnRlciBz
dGFuZGJ5DQoNCjEuMSBNNA0KDQpOZXchIEJ1ZyAxNjY0IC0gdGV4aW5mbyBkb19jb21waWxlIGZh
aWwgZHVlIHRvIG1ha2Vkb2MgYmluYXJ5IG5vdCBleGVjdXRhYmxlDQoNCi0tDQoNCkNvcmUgYnVp
bGQgc3lzdGVtDQoNCkJ1ZyAxNTI5IC0gW3gzMl0geDMyIGJ1aWxkIGJyb2tlbiBkdWUgdG8ga2Vy
bmVsLm9yZyBmZXRjaCBmYWlsdXJlDQoNCjEuMQ0KDQpCdWcgMTUzOCAtIFttdWx0aWxpYl06IFgg
d2luZG93IGRvZXNuJ3Qgc3RhcnR1cCBpbiBtdWx0aWxpYiBpbWFnZSByYW5kb21seQ0KDQoxLjIN
Cg0KQnVnIDE1MjIgLSBbbXVsdGlsaWIvaXBrXSAvdmFyL2xpYi9vcGtnL3N0YXR1cyBjaGFuZ2Vk
IGFmdGVyIHRoZSAxc3QgYm9vdA0KDQoxLjINCg0KQnVnIDE1MDIgLSBbbXVsdGlsaWJdIGxpYjY0
LWRwa2cgaXMgdW5idWlsZGFibGUgZm9yIGxpYjY0IGJ1aWxkDQoNCjEuMg0KDQpIT0INCg0KTmV3
ISBCdWcgMTY2MyAtIFtIT0JdIGhvYiBjcmFzaCB3aGVuIG9wZW5pbmcgY3VzdG9taXplZCBiYiBm
aWxlIHdpdGggVWJ1bnR1IDEwLjEwDQoNCi0tDQoNCk5ldyEgQnVnIDE2NjUgLSBbSE9CXSBkZWIv
aXBrIGJ1aWxkIG5vdCBwcm9jZWVkIGJ5IHNob3dpbmcgc29tZSBwYWNrYWdlcyBiZWluZyBidWls
dA0KDQoxLjINCg0KDQoNClZlcmlmeSBidWcgbGlzdA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0NCg0KDQoxLiAgICAgYnVnIDE0OTYgLSBbbXVsdGlsaWJdIGxpYjMyIGJ1
aWxkIGFnYWluc3QgcWVtdXg4NiBmYWlsZWQgZHVyaW5nIGRvX3Jvb3Rmcw0KDQoyLiAgICAgYnVn
IDE0OTcgLSBbbXVsdGlsaWJdIGxpYjMyIGJ1aWxkIGFnYWluc3QgcWVtdXg4Ni02NCBmYWlsZWQg
ZHVyaW5nIGRvX3Jvb3Rmcw0KDQozLiAgICAgYnVnIDE0OTggLSBbbXVsdGlsaWJdIGxpYjY0IGJ1
aWxkIGFnYWluc3QgcWVtdXg4NiBmYWlsZWQgZHVyaW5nIGRvX3Jvb3Rmcw0KDQo0LiAgICAgYnVn
IDE1MjcgLSBbbXVsdGlsaWJdIGxpYjY0IGJ1aWxkIGFnYWluc3QgcWVtdXg4Ni02NCBmYWlsZWQg
ZHVyaW5nIGRvX3Jvb3Rmcw0KDQoNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCkJlc3QgUmVnYXJk
cywNCldlbmh1YQ0KDQo=

--_000_2F0982C572735F46B77790D29DA0FD8712D3AB4720shsmsx501ccrc_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" xmlns:m=3D"http://schema=
s.microsoft.com/office/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html=
40"><head><meta http-equiv=3DContent-Type content=3D"text/html; charset=3Dg=
b2312"><meta name=3DGenerator content=3D"Microsoft Word 12 (filtered medium=
)"><style><!--
/* Font Definitions */
@font-face
	{font-family:=CB=CE=CC=E5;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@=CB=CE=CC=E5";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:21.0pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1503355364;
	mso-list-type:hybrid;
	mso-list-template-ids:-670542152 -1144330834 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DZH-CN link=3Dblue vli=
nk=3Dpurple style=3D'text-justify-trim:punctuation'><div class=3DWordSectio=
n1><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>Hi All,<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This is the weekly test report f=
or Yocto 1.1 M4 RC4 build. There are 4 new bugs found, including 1 regressi=
on issue. Distribution testing(world build) is blocked by a compile error f=
or recipe texinfo. Hob could not work with deb/ipk build. And a crash issue=
 is found with hob on Ubuntu 10.10. x32 build is blocked by some URL and ch=
ecksum broken, which should be fixed by Nitin in latest x32 tree. QA reopen=
 an old bug, bug 1235 =A8C =A1=B0glx* command segfault on emenlow=A1=B1, wh=
ich should be fixed by Tom within latest meta-intel. Multilib could work wi=
thout any unexpected now.<o:p></o:p></span></p><p class=3DMsoNormal style=
=3D'text-indent:21.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>Note: for difference image build against differ=
ence commit/branch, please refer to =A1=AEcommit information=A1=AF section =
for detail information. The test report is archived @ <a href=3D"https://wi=
ki.pokylinux.org/wiki/Yocto_1.1_Milestone_Test_Report">https://wiki.pokylin=
ux.org/wiki/Yocto_1.1_Milestone_Test_Report</a><o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Test Summary:<o:p></=
o:p></span></b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>----------------------------=
-----------<o:p></o:p></span></b></p><p class=3DMsoNormal><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</=
o:p></span></p><table class=3DMsoNormalTable border=3D0 cellspacing=3D0 cel=
lpadding=3D0 width=3D851 style=3D'width:638.0pt;margin-left:-.9pt;border-co=
llapse:collapse'><tr style=3D'height:21.0pt'><td width=3D851 nowrap colspan=
=3D4 valign=3Dbottom style=3D'width:638.0pt;border:solid windowtext 1.0pt;b=
order-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Test Result Summary</span></b><b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></=
b></p></td></tr><tr style=3D'height:21.0pt'><td width=3D173 nowrap valign=
=3Dbottom style=3D'width:129.95pt;border:solid windowtext 1.0pt;border-top:=
none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>Component</span></b><b=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'><o:p></o:p></span></b></p></td><td width=3D148 nowrap vali=
gn=3Dbottom style=3D'width:111.1pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'>Target</span></b><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
><o:p></o:p></span></b></p></td><td width=3D73 nowrap valign=3Dbottom style=
=3D'width:55.05pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:21.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left=
'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Status</span></b><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span>=
</b></p></td><td width=3D456 valign=3Dbottom style=3D'width:341.9pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Comm=
ents</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td></tr><tr s=
tyle=3D'height:15.75pt'><td width=3D173 nowrap rowspan=3D8 style=3D'width:1=
29.95pt;border-top:none;border-left:solid windowtext 1.0pt;border-bottom:so=
lid black 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>BSP</span></b><b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></=
span></b></p></td><td width=3D148 nowrap valign=3Dbottom style=3D'width:111=
.1pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.7=
5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>eMenlow</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D=
73 nowrap valign=3Dbottom style=3D'width:55.05pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p clas=
s=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></p></td><td width=3D456 valign=3Dbo=
ttom style=3D'width:341.9pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text=
-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>I2C_transfer error; Standby failed; Glx* comma=
nd segfault.</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td></tr><tr styl=
e=3D'height:15.75pt'><td width=3D148 nowrap valign=3Dbottom style=3D'width:=
111.1pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
5.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>Blacksand</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td wid=
th=3D73 nowrap valign=3Dbottom style=3D'width:55.05pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p=
 class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>G=
OOD</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D456 valign=
=3Dbottom style=3D'width:341.9pt;border-top:none;border-left:none;border-bo=
ttom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm=
 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D=
'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>Everything runs well</span><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.75pt'><td width=3D=
148 nowrap valign=3Dbottom style=3D'width:111.1pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal alig=
n=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>Crownbay-emgd</span><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'><o:p></o:p></span></p></td><td width=3D73 nowrap valign=3Dbotto=
m style=3D'width:55.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;=
padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dle=
ft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>GOOD</span><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:=
p></o:p></span></p></td><td width=3D456 valign=3Dbottom style=3D'width:341.=
9pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75=
pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Xorg eat lots of cup's resource after standby</span><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><=
o:p></o:p></span></p></td></tr><tr style=3D'height:15.75pt'><td width=3D148=
 nowrap valign=3Dbottom style=3D'width:111.1pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>Sugarbay</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td><td width=3D73 nowrap valign=3Dbottom styl=
e=3D'width:55.05pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft sty=
le=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>GOOD</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td><td width=3D456 valign=3Dbottom style=3D'width:341.9pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Everything runs well</span><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td></tr>=
<tr style=3D'height:15.75pt'><td width=3D148 nowrap valign=3Dbottom style=
=3D'width:111.1pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>Jasperforest-lsb</span><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span=
></p></td><td width=3D73 nowrap valign=3Dbottom style=3D'width:55.05pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>GOOD</span><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td w=
idth=3D456 valign=3Dbottom style=3D'width:341.9pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal alig=
n=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>I/OAT DMA engine init fa=
iled;</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'he=
ight:15.75pt'><td width=3D148 nowrap valign=3Dbottom style=3D'width:111.1pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'=
><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>Beagleboard</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D=
73 nowrap valign=3Dbottom style=3D'width:55.05pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p clas=
s=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></p></td><td width=3D456 valign=3Dbo=
ttom style=3D'width:341.9pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text=
-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>Everything runs well</span><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:=
p></o:p></span></p></td></tr><tr style=3D'height:15.75pt'><td width=3D148 n=
owrap valign=3Dbottom style=3D'width:111.1pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dl=
eft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>Routerstationpro</span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'><o:p></o:p></span></p></td><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:55.05pt;border-top:none;border-left:none;border-bottom:solid=
 windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft=
 style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>GOOD</span><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p>=
</o:p></span></p></td><td width=3D456 valign=3Dbottom style=3D'width:341.9p=
t;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt=
'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Everything runs well</span><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td></=
tr><tr style=3D'height:15.75pt'><td width=3D148 nowrap valign=3Dbottom styl=
e=3D'width:111.1pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:le=
ft'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'>Mpc8315e-rdb</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></=
p></td><td width=3D73 nowrap valign=3Dbottom style=3D'width:55.05pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>GOOD</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td widt=
h=3D456 valign=3Dbottom style=3D'width:341.9pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>Everything runs well</spa=
n><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.75=
pt'><td width=3D173 nowrap rowspan=3D5 style=3D'width:129.95pt;border-top:n=
one;border-left:solid windowtext 1.0pt;border-bottom:solid black 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>QEMU</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><=
td width=3D148 nowrap valign=3Dbottom style=3D'width:111.1pt;border-top:non=
e;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMso=
Normal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>qemux86</span=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'><o:p></o:p></span></p></td><td width=3D73 nowrap valign=3D=
bottom style=3D'width:55.05pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92=
D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>GOOD</span><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'><o:p></o:p></span></p></td><td width=3D456 valign=3Dbottom style=3D'width=
:341.9pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>Everything runs well</span><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p>=
</td></tr><tr style=3D'height:15.75pt'><td width=3D148 nowrap valign=3Dbott=
om style=3D'width:111.1pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-a=
lign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>qemux86-64</span><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></sp=
an></p></td><td width=3D73 nowrap valign=3Dbottom style=3D'width:55.05pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt=
;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>GOOD</span><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td=
 width=3D456 valign=3Dbottom style=3D'width:341.9pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal al=
ign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>Everything runs well</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:15=
.75pt'><td width=3D148 nowrap valign=3Dbottom style=3D'width:111.1pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>qemua=
rm</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 nowrap v=
align=3Dbottom style=3D'width:55.05pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;backgr=
ound:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNorm=
al align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD</span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'><o:p></o:p></span></p></td><td width=3D456 valign=3Dbottom style=
=3D'width:341.9pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>Everything runs well</span><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></=
span></p></td></tr><tr style=3D'height:15.75pt'><td width=3D148 nowrap vali=
gn=3Dbottom style=3D'width:111.1pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>qemuppc</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td><td width=3D73 nowrap valign=3Dbottom style=3D'width:55.=
05pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0c=
m 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-ali=
gn:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:black'>GOOD</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p><=
/td><td width=3D456 valign=3Dbottom style=3D'width:341.9pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNo=
rmal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Everything runs=
 well</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'he=
ight:15.75pt'><td width=3D148 nowrap valign=3Dbottom style=3D'width:111.1pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'=
><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>qemumips</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 =
nowrap valign=3Dbottom style=3D'width:55.05pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD</s=
pan><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'><o:p></o:p></span></p></td><td width=3D456 valign=3Dbot=
tom style=3D'width:341.9pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-=
align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>Everything runs well</span><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p=
></o:p></span></p></td></tr><tr style=3D'height:27.0pt'><td width=3D173 now=
rap style=3D'width:129.95pt;border:solid windowtext 1.0pt;border-top:none;p=
adding:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>Core build system</span><=
/b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D148 nowrap=
 valign=3Dbottom style=3D'width:111.1pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dleft st=
yle=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=
=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td=
><td width=3D73 nowrap style=3D'width:55.05pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;background:#FFC000;padding:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=3D=
MsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>BUGGY</s=
pan><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'><o:p></o:p></span></p></td><td width=3D456 valign=3Dbot=
tom style=3D'width:341.9pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-a=
lign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>Opkg package information not show multilib insta=
lled packages; x32 build couldn't work due to broken source URL</span><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.75pt'><td=
 width=3D173 nowrap style=3D'width:129.95pt;border:solid windowtext 1.0pt;b=
order-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>ADT</spa=
n></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D148 now=
rap valign=3Dbottom style=3D'width:111.1pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3Dlef=
t style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=
=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p><=
/td><td width=3D73 nowrap valign=3Dbottom style=3D'width:55.05pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:=
15.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>GOOD</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=
=3D456 valign=3Dbottom style=3D'width:341.9pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:15.75pt'><p class=3DMsoNormal align=3D=
left style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>Everything runs well</span><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:27.0pt'>=
<td width=3D173 nowrap style=3D'width:129.95pt;border:solid windowtext 1.0p=
t;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=3DMso=
Normal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>HOB</s=
pan></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D148 n=
owrap valign=3Dbottom style=3D'width:111.1pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dle=
ft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=
=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:=CB=CE=CC=E5;color:black'><o:p></o:p></span></p></td><=
td width=3D73 nowrap style=3D'width:55.05pt;border-top:none;border-left:non=
e;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;=
background:#FFC000;padding:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=3DMs=
oNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>BUGGY</span>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'><o:p></o:p></span></p></td><td width=3D456 valign=3Dbottom =
style=3D'width:341.9pt;border-top:none;border-left:none;border-bottom:solid=
 windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align=
:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>Deb/ipk build not proceed by showing some packages b=
eing built; hob crash when opening customized bb file with Ubuntu 10.10.</s=
pan><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.=
0pt'><td width=3D173 nowrap valign=3Dbottom style=3D'width:129.95pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:21.0pt'></td><td width=3D148 nowrap valign=3Dbo=
ttom style=3D'width:111.1pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'></td=
><td width=3D73 nowrap valign=3Dbottom style=3D'width:55.05pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:21.0pt'></td><td width=3D456 nowrap valign=3Dbottom s=
tyle=3D'width:341.9pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'></td></tr>=
<tr style=3D'height:21.0pt'><td width=3D173 nowrap valign=3Dbottom style=3D=
'width:129.95pt;background:red;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span style=
=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1</span><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:bl=
ack'><o:p></o:p></span></p></td><td width=3D677 nowrap colspan=3D3 valign=
=3Dbottom style=3D'width:508.05pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt=
'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Critical bugs, more than 50% test cases are blocked</span><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt'><td width=3D1=
73 nowrap valign=3Dbottom style=3D'width:129.95pt;background:#9BBB59;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span style=3D'font-size:10.0pt;font-family:=CB=
=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:=CB=CE=CC=E5;color:black'><o:p></o:p></span></p></td><td =
width=3D677 nowrap colspan=3D3 valign=3Dbottom style=3D'width:508.05pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dleft st=
yle=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'>Only Normal, Minor or Enhancement b=
ugs, or less than 10% test cases failed</span><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></=
span></p></td></tr><tr style=3D'height:21.0pt'><td width=3D173 nowrap valig=
n=3Dbottom style=3D'width:129.95pt;background:#FFC000;padding:0cm 5.4pt 0cm=
 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:b=
lack'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:=CB=CE=CC=E5;color:black'><o:p></o:p></span></p></td><td width=3D677 nowra=
p colspan=3D3 valign=3Dbottom style=3D'width:508.05pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align=
:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>Normal, Major and Critical bugs, and more than 10% t=
est cases failed</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td></tr></ta=
ble><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><table class=3DMso=
NormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D756 style=3D=
'width:20.0cm;margin-left:-.9pt;border-collapse:collapse'><tr style=3D'heig=
ht:21.0pt'><td width=3D756 nowrap colspan=3D6 valign=3Dbottom style=3D'widt=
h:20.0cm;border:solid windowtext 1.0pt;border-right:solid black 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>Detailed Test Result for each=
 component</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td></tr=
><tr style=3D'height:15.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;=
border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>Target</span></b><b><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span=
></b></p></td><td width=3D79 style=3D'width:59.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'>Total TCs</span><=
/b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'> </span><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></t=
d><td width=3D103 style=3D'width:77.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>Not Run</span></b><b><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'><o:p></o:p></span></b></p></td><td width=3D73 style=3D'width:55.0p=
t;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>Passed</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'> </span><b><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p><=
/o:p></span></b></p></td><td width=3D167 style=3D'width:125.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Fail=
ed</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'> </span><b><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span><=
/b></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Not testable (Blocked)</span></b><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'> </span><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
><o:p></o:p></span></b></p></td></tr><tr style=3D'height:21.0pt'><td width=
=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext 1.0pt;border-t=
op:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>eMenlow Sato-SDK=
</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D79=
 style=3D'width:59.0pt;border-top:none;border-left:none;border-bottom:solid=
 windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>58</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p><=
/td><td width=3D103 style=3D'width:77.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>0</span><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p>=
</o:p></span></p></td><td width=3D73 style=3D'width:55.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>55</span><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:#00B050'><o:p></o:p></span></p></td><td width=3D167 style=3D'width:=
125.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:2=
1.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:red'>2 (bug 310, 503, 1235)</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p>=
</td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1 (bug 1235)<=
/span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.=
0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
n450 Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><=
td width=3D79 style=3D'width:59.0pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'>58</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td><td width=3D103 style=3D'width:77.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'><o:p></o:p></span></p></td><td width=3D73 style=3D'width:55.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B=
050'>58</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:#00B050'><o:p></o:p></span></p></td><td width=3D167 =
style=3D'width:125.0pt;border-top:none;border-left:none;border-bottom:solid=
 windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td><=
td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt'><td width=
=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext 1.0pt;border-t=
op:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Crownbay-Sato-SD=
K</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D7=
9 style=3D'width:59.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>58</span><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p>=
</td><td width=3D103 style=3D'width:77.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>0</span><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p=
></o:p></span></p></td><td width=3D73 style=3D'width:55.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>58</span>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:#00B050'><o:p></o:p></span></p></td><td width=3D167 style=3D'width=
:125.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td><td width=3D163=
 valign=3Dbottom style=3D'width:122.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p=
></span></p></td></tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap st=
yle=3D'width:129.0pt;border:solid windowtext 1.0pt;border-top:none;padding:=
0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>Sugarbay Sato-SDK</span></b><b><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'><o:p></o:p></span></b></p></td><td width=3D79 style=3D'width=
:59.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:2=
1.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'>61</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=
=3D103 style=3D'width:77.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span>=
</p></td><td width=3D73 style=3D'width:55.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:#00B050'>61</span><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B0=
50'><o:p></o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p cla=
ss=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbott=
om style=3D'width:122.0pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></t=
d></tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:12=
9.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5=
.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>Jasperforest lsb-SDK</span></b><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'><o:p></o:p></span></b></p></td><td width=3D79 style=3D'width:59.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
32</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D103 style=
=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td=
 width=3D73 style=3D'width:55.0pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:#00B050'>31</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p><=
/o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1 (bug 1188)<=
/span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbot=
tom style=3D'width:122.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></=
td></tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:1=
29.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm =
5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>Beagleboard Sato-SDK</span></b><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></b></p></td><td width=3D79 style=3D'width:59.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>39</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D103 styl=
e=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><t=
d width=3D73 style=3D'width:55.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:#00B050'>39</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p><=
/o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom style=
=3D'width:122.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr><=
tr style=3D'height:26.25pt'><td width=3D172 style=3D'width:129.0pt;border:s=
olid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:26=
.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'>Routerstationpro Sato-SDK</span></b><b><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p>=
</o:p></span></b></p></td><td width=3D79 style=3D'width:59.0pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>33</spa=
n><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'><o:p></o:p></span></p></td><td width=3D103 style=3D'width=
:77.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:2=
6.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=
=3D73 style=3D'width:55.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:#00B050'>33</span><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></=
span></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom style=3D'wid=
th:122.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:26.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr><tr sty=
le=3D'height:21.0pt'><td width=3D172 style=3D'width:129.0pt;border:solid wi=
ndowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'>Mpc8315e-rdb Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span=
></b></p></td><td width=3D79 style=3D'width:59.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'>36</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td><td width=3D103 style=3D'width:77.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 style=3D'=
width:55.0pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:#00B050'>36</span><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></td><t=
d width=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></s=
pan></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt=
'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux=
86-64 Sato</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td =
width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'>29</span><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p><=
/o:p></span></p></td><td width=3D103 style=3D'width:77.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'><o:p></o:p></span></p></td><td width=3D73 style=3D'width:55.0pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#=
00B050'>28</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></td><td width=3D1=
67 style=3D'width:125.0pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:red'>1 (bug 1174)</span><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></s=
pan></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt=
'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux=
86-64 Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td>=
<td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:non=
e;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>34</span><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o=
:p></o:p></span></p></td><td width=3D103 style=3D'width:77.0pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'><o:p></o:p></span></p></td><td width=3D73 style=3D'width:55=
.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:#00B050'>33</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></td><td width=
=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:red'>1 (bug 1174)</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p=
></span></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0=
</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21=
.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext=
 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Qemux86 Sato</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><t=
d width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>28</span><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p=
></o:p></span></p></td><td width=3D103 style=3D'width:77.0pt;border-top:non=
e;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'><o:p></o:p></span></p></td><td width=3D73 style=3D'width:55=
.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:#00B050'>27</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></td><td width=
=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:red'>1 (bug 1174)</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p=
></span></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0=
</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21=
.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext=
 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Qemux86 Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></t=
d><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>34</span><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
<o:p></o:p></span></p></td><td width=3D103 style=3D'width:77.0pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</spa=
n><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'><o:p></o:p></span></p></td><td width=3D73 style=3D'width:=
55.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21=
.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:#00B050'>33</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></td><td widt=
h=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;border-bott=
om:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:red'>1 (bug 1174)</span><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:=
p></span></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p =
class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>=
0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:2=
1.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtex=
t 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Qemuarm Sato</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><t=
d width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>29</span><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p=
></o:p></span></p></td><td width=3D103 nowrap style=3D'width:77.0pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 nowrap style=
=3D'width:55.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:#00B050'>29</span><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></t=
d><td width=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p=
></span></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0=
</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21=
.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext=
 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Qemuarm Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></t=
d><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>34</span><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
<o:p></o:p></span></p></td><td width=3D103 nowrap style=3D'width:77.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 nowrap s=
tyle=3D'width:55.0pt;border-top:none;border-left:none;border-bottom:solid w=
indowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:#00B050'>34</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p=
></td><td width=3D167 style=3D'width:125.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p><=
/o:p></span></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'heig=
ht:21.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Qemumips Sato</span></b><b><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p>=
</td><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>29</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td><td width=3D103 nowrap style=3D'width:77.0=
pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bo=
rder-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 no=
wrap style=3D'width:55.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:#00B050'>29</span><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></sp=
an></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>=
<o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom style=3D'width:1=
22.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21=
.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D=
'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid =
windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>Qemumips Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span><=
/b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>34</span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'><o:p></o:p></span></p></td><td width=3D103 nowrap style=3D'width:=
77.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21=
.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D7=
3 nowrap style=3D'width:55.0pt;border-top:none;border-left:none;border-bott=
om:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:#00B050'>34</span><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p>=
</span></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom style=3D'wid=
th:122.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr><tr styl=
e=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:so=
lid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.=
0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>Qemuppc Sato</span></b><b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></=
b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>21</span><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'><o:p></o:p></span></p></td><td width=3D103 nowrap style=3D'width:7=
7.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.=
0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73=
 nowrap style=3D'width:55.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:#00B050'>21</span><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p><=
/span></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom style=3D'wid=
th:122.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr><tr styl=
e=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border:so=
lid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.=
0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>Qemuppc Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></spa=
n></b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>26</span><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'><o:p></o:p></span></p></td><td width=3D103 nowrap style=3D'wid=
th:77.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=
=3D73 nowrap style=3D'width:55.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:#00B050'>26</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p><=
/o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom style=
=3D'width:122.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr><=
tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;bo=
rder:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'>Core build system</span></b><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>25<=
/span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'><o:p></o:p></span></p></td><td width=3D103 nowrap sty=
le=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><=
td width=3D73 nowrap style=3D'width:55.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:#00B050'>22</span><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
><o:p></o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>3 (bu=
g 1522, 1529)</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td><td width=3D16=
3 valign=3Dbottom style=3D'width:122.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p=
></span></p></td></tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap st=
yle=3D'width:129.0pt;border:solid windowtext 1.0pt;border-top:none;padding:=
0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>ADT</span></b><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
><o:p></o:p></span></b></p></td><td width=3D79 nowrap style=3D'width:59.0pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>6</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D103 no=
wrap style=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></=
p></td><td width=3D73 nowrap style=3D'width:55.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>6</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#=
00B050'><o:p></o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'=
>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:red'><o:p></o:p></span></p></td><td width=3D163 valign=3D=
bottom style=3D'width:122.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p=
></td></tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D'widt=
h:129.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0=
cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'>HOB</span></b><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>26<=
/span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'><o:p></o:p></span></p></td><td width=3D103 nowrap sty=
le=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><=
td width=3D73 nowrap style=3D'width:55.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:#00B050'>24</span><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
><o:p></o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>2 (bu=
g 1665)</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:red'><o:p></o:p></span></p></td><td width=3D163 vali=
gn=3Dbottom style=3D'width:122.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></spa=
n></p></td></tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D=
'width:129.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.=
4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>Total</span></b><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:=
p></o:p></span></b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>730</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D103 nowra=
p style=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p><=
/td><td width=3D73 nowrap style=3D'width:55.0pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>717</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1=
2</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Db=
ottom style=3D'width:122.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:red'>1</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p>=
</td></tr></table><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p c=
lass=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if"'>Commit Information<o:p></o:p></span></b></p><p class=3DMsoNormal><b><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'>---------------------------------------<o:p></o:p></span></b></p><p class=
=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>For e=
Menlow/Blacksand/Crownbay/Sugarbay/Jasperforest/Qemux86/toolchain:<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><a name=3D"OLE_LINK2"></a><a name=3D"OLE_LINK1"></a><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Tree/B=
ranch: Poky/Edison</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif"'><o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>Commit id: bc885cd8d343ad003391222429222526dba175ad</span><span lang=3DEN-=
US style=3D'font-family:"Arial","sans-serif"'><o:p></o:p></span></p><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'>Meta branch: Edison<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'>Commit id: </span><span lang=3DEN-US style=3D'font-family:"Arial",=
"sans-serif"'>fd7eee18e38ae45efaa299f015aedd4dc3257e6d<o:p></o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>For QemuArm/QemuMips/QemuPPC/Beagleboard/Routerstationpro/Mpc8315e-rdb/=
toolchain:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p><=
/span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'>Tree/Branch: poky/edison<br>Poky Commit:=
 e02d553b45808b788c721c0722379d6b37c0b7d8<o:p></o:p></span></p><p class=3DM=
soNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbs=
p;</o:p></span></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>Issue summary<o:p></o:p></sp=
an></b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif"'>------------------------------------=
--<o:p></o:p></span></b></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></s=
pan></p><table class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpaddin=
g=3D0 width=3D895 style=3D'width:671.0pt;margin-left:-.9pt;border-collapse:=
collapse'><tr style=3D'height:21.0pt'><td width=3D248 nowrap colspan=3D2 va=
lign=3Dbottom style=3D'width:186.0pt;border:solid windowtext 1.0pt;border-r=
ight:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Component</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td w=
idth=3D536 valign=3Dbottom style=3D'width:402.0pt;border:solid windowtext 1=
.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Bug Number</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td =
width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border:solid windo=
wtext 1.0pt;border-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p =
class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>Target Milestone</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></=
td></tr><tr style=3D'height:14.25pt'><td width=3D140 nowrap rowspan=3D8 sty=
le=3D'width:104.7pt;border-top:none;border-left:solid windowtext 1.0pt;bord=
er-bottom:solid black 1.0pt;border-right:none;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cent=
er'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>System &amp; Core OS</span></b><b><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o=
:p></o:p></span></b></p></td><td width=3D108 nowrap rowspan=3D3 style=3D'wi=
dth:81.3pt;border-top:none;border-left:solid windowtext 1.0pt;border-bottom=
:none;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>System Usage</span></b><b><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></s=
pan></b></p></td><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>Bug 503 - [emenlow] syste=
m cannot enter S3 standby mode</span><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p>=
</td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-to=
p:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.2</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:14.2=
5pt'><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>Bug 1082 - [x86_64] No icons shown on =
X desktop with sato image</span><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td>=
<td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:non=
e;border-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMso=
Normal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.0 M2</span>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'=
><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D't=
ext-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'>Bug 1174: [zypper/rpm] package install/remo=
val costs lots of disk space</span><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></=
td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:=
none;border-left:solid windowtext 1.0pt;border-bottom:none;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DM=
soNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.2</span><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'=
><td width=3D108 nowrap rowspan=3D5 style=3D'width:81.3pt;border:solid wind=
owtext 1.0pt;border-bottom:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>Other</span></b><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span>=
</b></p></td><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dle=
ft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>Bug 310 - [eMenlow] i2c_transf=
er error on e-Menlow</span><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td w=
idth=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorma=
l align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>1.1</span><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td wi=
dth=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-al=
ign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>Bug 1188 - [japerforest] I/OAT DMA engine init fa=
iled</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D111 nowra=
p valign=3Dbottom style=3D'width:83.0pt;border-top:none;border-left:solid w=
indowtext 1.0pt;border-bottom:none;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft s=
tyle=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'>1.2</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D536 nowrap=
 valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>Bug 1235 - [Emenlow] Running glxinfo and glxgears commands failed=
.</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:black'><o:p></o:p></span></p></td><td width=3D111 nowrap v=
align=3Dbottom style=3D'width:83.0pt;border-top:none;border-left:solid wind=
owtext 1.0pt;border-bottom:none;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>1.1 M2</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D536 nowrap=
 valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Bu=
g 1258 -[crownbay] Xorg eats lots of CPU time after standby</span><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>=
</o:p></span></p></td><td width=3D111 nowrap valign=3Dbottom style=3D'width=
:83.0pt;border-top:none;border-left:solid windowtext 1.0pt;border-bottom:no=
ne;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
4.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>1.1 M4</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td></tr><tr s=
tyle=3D'height:15.0pt'><td width=3D536 nowrap valign=3Dbottom style=3D'widt=
h:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>New! </span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Bug&nb=
sp;1664&nbsp;-&nbsp;texinfo do_compile fail due to makedoc binary not execu=
table</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif"'><o:p></o:p></span></p></td><td width=3D111 nowrap valign=3D=
bottom style=3D'width:83.0pt;border-top:none;border-left:solid windowtext 1=
.0pt;border-bottom:none;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text=
-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>--</span><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p=
></td></tr><tr style=3D'height:14.25pt'><td width=3D248 nowrap colspan=3D2 =
rowspan=3D4 style=3D'width:186.0pt;border-top:none;border-left:solid window=
text 1.0pt;border-bottom:none;border-right:solid black 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>Core build system</span></b><b><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'><o:p></o:p></span></b></p></td><td width=3D536 nowrap valign=3Dbo=
ttom style=3D'width:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p =
class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Bug 1529 - [x3=
2] x32 build broken due to kernel.org fetch failure</span><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></=
span></p></td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;=
border-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;borde=
r-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>=
<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>1.1</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'hei=
ght:14.25pt'><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dle=
ft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif"'>Bug&nbsp;1538&nbsp;-&nbsp;[multilib]: X wi=
ndow doesn't startup in multilib image randomly</span><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span=
></p></td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;bord=
er-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p c=
lass=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.2=
</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:=
14.25pt'><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft s=
tyle=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif"'>Bug&nbsp;1522&nbsp;-&nbsp;[multilib/ipk] /var/=
lib/opkg/status changed after the 1st boot</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></=
p></td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-=
top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.2</s=
pan><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.=
0pt'><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'>Bug 1502 - [multilib] lib64-dpkg is unbuildable fo=
r lib64 build</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'><o:p></o:p></span></p></td><td width=3D111 nowrap v=
align=3Dbottom style=3D'width:83.0pt;border-top:none;border-left:solid wind=
owtext 1.0pt;border-bottom:none;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>1.2</span><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p><=
/span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D248 nowrap col=
span=3D2 rowspan=3D2 style=3D'width:186.0pt;border-top:windowtext;border-le=
ft:windowtext;border-bottom:black;border-right:black;border-style:solid;bor=
der-width:1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>HOB</sp=
an></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D536 no=
wrap valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:red'>New! </span><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>Bug&nbsp;1663&nbsp;-&nbsp;[HOB] hob crash when =
opening customized bb file with Ubuntu 10.10</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></=
p></td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-=
top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>--</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.0=
pt'><td width=3D536 valign=3Dbottom style=3D'width:402.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNor=
mal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:red'>New! </span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>Bug 1665 - [HOB] deb/ipk build not proceed by showing some packag=
es being built</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=
=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal ali=
gn=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'>1.2</span><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'><o:p></o:p></span></p></td></tr></table><p class=3DMsoNormal><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&=
nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>Verify bug list<o:p></o:p></span></b></p><p cla=
ss=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif"'>--------------------------------------<o:p></o:p></sp=
an></b></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3D=
MsoListParagraph style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l=
0 level1 lfo1'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>1.<=
span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span=
></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif"'>bug 1496 - [multilib] lib32 build against qemu=
x86 failed during do_rootfs <o:p></o:p></span></p><p class=3DMsoListParagra=
ph style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1'=
><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>2.<span style=3D'=
font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span=
><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif"'>bug 1497 - [multilib] lib32 build against qemux86-64 failed =
during do_rootfs <o:p></o:p></span></p><p class=3DMsoListParagraph style=3D=
'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if !sup=
portLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif"'><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt =
"Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>bug 1498 - [multilib] lib64 build against qemux86 failed during do_root=
fs <o:p></o:p></span></p><p class=3DMsoListParagraph style=3D'margin-left:1=
8.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLists]><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
><span style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Times New Rom=
an"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>bug 1527 -=
 [multilib] lib64 build against qemux86-64 failed during do_rootfs<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>----------------------<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>Best Regards,<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>Wenhua<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_2F0982C572735F46B77790D29DA0FD8712D3AB4720shsmsx501ccrc_--

--_004_2F0982C572735F46B77790D29DA0FD8712D3AB4720shsmsx501ccrc_
Content-Type: application/oleobject;
	name="Yocto 1.1 M4 RC4 detail_testreport-weekly.ods"
Content-Description: Yocto 1.1 M4 RC4 detail_testreport-weekly.ods
Content-Disposition: attachment;
	filename="Yocto 1.1 M4 RC4 detail_testreport-weekly.ods"; size=18071;
	creation-date="Sat, 08 Oct 2011 09:36:13 GMT";
	modification-date="Mon, 10 Oct 2011 13:53:27 GMT"
Content-Transfer-Encoding: base64

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
AAA=

--_004_2F0982C572735F46B77790D29DA0FD8712D3AB4720shsmsx501ccrc_--
