Return-Path: <jiajun.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44CE3E01277
	for <poky@pokylinux.org>; Fri, 14 Oct 2011 10:50:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Oct 2011 10:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; 
	d="xml'?ods'72,48?png'72,48,150?scan'72,48,150,208,217,48,150,72";
	a="63334524"
Received: from pgsmsx601.gar.corp.intel.com ([10.221.43.69])
	by orsmga002.jf.intel.com with ESMTP; 14 Oct 2011 10:50:14 -0700
Received: from pgsmsx103.gar.corp.intel.com (10.221.44.82) by
	pgsmsx601.gar.corp.intel.com (10.221.43.69) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Sat, 15 Oct 2011 01:50:13 +0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	PGSMSX103.gar.corp.intel.com (10.221.44.82) with Microsoft SMTP Server
	(TLS) id 14.1.323.3; Sat, 15 Oct 2011 01:50:12 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Sat, 15 Oct 2011 01:50:11 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 15 Oct 2011 01:50:09 +0800
Thread-Topic: Fullpass Test Report for Yocto 1.1 M4 RC4 Build
Thread-Index: AcyKmbbrVPBlHRsCRuKdlLP5339J7g==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FA@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 Oct 2011 10:57:40 -0700
Subject: Fullpass Test Report for Yocto 1.1 M4 RC4 Build
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
X-List-Received-Date: Fri, 14 Oct 2011 17:50:19 -0000
X-Groupsio-MsgNum: 7072
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FAshsmsx501ccrc_"

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FAshsmsx501ccrc_
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FAshsmsx501ccrc_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FAshsmsx501ccrc_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgQWxsLA0KICAgICAgIFRoaXMgaXMgdGhlIGZ1bGxwYXNzIHRlc3QgcmVwb3J0IGZvciBZb2N0
byAxLjEgTTQgUkM0IGJ1aWxkLiBUaGVyZSBpcyBubyBuZXcgYnVnIGZvdW5kIGV4Y2VwdCBmb3Ig
dGhlIDQgYnVncyBmb3VuZCBpbiB3ZWVrbHkgdGVzdGluZy4gVGhlcmUgaXMgbm8gb3BlbiBtYWpv
ciBidWdzIGZvciAxLjEgbm93LiBCYXNpYyBmdW5jdGlvbnMgb2YgYWxsIGNvbXBvbmVudHMsIGlu
Y2x1ZGluZyBob2IgYW5kIG11bHRpbGliLCBjb3VsZCB3b3JrIHdlbGwuIFRoZXJlIGlzIG5vIGRp
c3RyaWJ1dGlvbiBzcGVjaWZpYyBpc3N1ZSBmb3VuZCBhZ2FpbnN0IE4rMSBkaXN0cm9zIGZvciBG
ZWRvcmEsIE9wZW5zdXNlIGFuZCBVYnVudHUuIFRleGluZm8gYnVpbGQgY291bGQgbm90IHBhc3Ms
IHdoaWNoIGJsb2NrcyB3b3JsZCBidWlsZCBmb3IgYWxsIGRpc3RyaWJ1dGlvbnMuIFFBIHZlcmlm
aWVkIHRoZSBuZXcgZW1lbmxvdyBpbWFnZSBmcm9tIGF1dG9idWlsZGVyLCBhbmQgdGhlIGdseCBj
b21tYW5kcyBzZWdmYXVsdCBpc3N1ZSBpcyBmaXhlZCBpbiB0aGlzIGJ1aWxkLiBMVFAgdGVzdGlu
ZyBvbiBTdWdhcmJheSBhbmQgQmxhY2tzYW5kIGlzIHN0aWxsIG9uLWdvaW5nLCB3aGljaCB3aWxs
IGJlIGZpbmlzaGVkIG5leHQgTW9uZGF5Lg0KTm90ZTogZm9yIGRpZmZlcmVuY2UgaW1hZ2UgYnVp
bGQgYWdhaW5zdCBkaWZmZXJlbmNlIGNvbW1pdC9icmFuY2gsIHBsZWFzZSByZWZlciB0byChrmNv
bW1pdCBpbmZvcm1hdGlvbqGvIHNlY3Rpb24gZm9yIGRldGFpbCBpbmZvcm1hdGlvbi4gVGhlIHRl
c3QgcmVwb3J0IGlzIGFyY2hpdmVkIEAgaHR0cHM6Ly93aWtpLnBva3lsaW51eC5vcmcvd2lraS9Z
b2N0b18xLjFfTWlsZXN0b25lX1Rlc3RfUmVwb3J0DQoNClRlc3QgU3VtbWFyeToNCi0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KVGVzdCBSZXN1bHQgU3VtbWFyeQ0KDQoN
CkNvbXBvbmVudA0KDQpUYXJnZXQNCg0KU3RhdHVzDQoNCkNvbW1lbnRzDQoNCg0KQlNQDQoNCmVN
ZW5sb3cNCg0KR09PRA0KDQpJMkNfdHJhbnNmZXIgZXJyb3I7IFN0YW5kYnkgZmFpbGVkOw0KDQoN
CkJsYWNrc2FuZA0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCg0KQ3Jvd25iYXkt
ZW1nZA0KDQpHT09EDQoNClhvcmcgZWF0IGxvdHMgb2YgY3VwJ3MgcmVzb3VyY2UgYWZ0ZXIgc3Rh
bmRieQ0KDQoNClN1Z2FyYmF5DQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0KDQpK
YXNwZXJmb3Jlc3QtbHNiDQoNCkdPT0QNCg0KSS9PQVQgRE1BIGVuZ2luZSBpbml0IGZhaWxlZDsN
Cg0KDQpCZWFnbGVib2FyZA0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCg0KUm91
dGVyc3RhdGlvbnBybw0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCg0KTXBjODMx
NWUtcmRiDQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0KDQpRRU1VDQoNCnFlbXV4
ODYNCg0KR09PRA0KDQpFdmVyeXRoaW5nIHJ1bnMgd2VsbA0KDQoNCnFlbXV4ODYtNjQNCg0KR09P
RA0KDQpFdmVyeXRoaW5nIHJ1bnMgd2VsbA0KDQoNCnFlbXVhcm0NCg0KR09PRA0KDQpFdmVyeXRo
aW5nIHJ1bnMgd2VsbA0KDQoNCnFlbXVwcGMNCg0KR09PRA0KDQpFdmVyeXRoaW5nIHJ1bnMgd2Vs
bA0KDQoNCnFlbXVtaXBzDQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0KDQpBRFQN
Cg0KoaENCg0KR09PRA0KDQpFdmVyeXRoaW5nIHJ1bnMgd2VsbA0KDQoNCkRpc3RyaWJ1dGlvbiBT
dXBwb3J0DQoNCqGhDQoNCkdPT0QNCg0KTm8gZGlzdHJpYnV0aW9uIHNwZWNpZmljIGlzc3VlLiB0
ZXhpbmZvIGJ1aWxkIGJsb2NrcyB3b3JsZCBidWlsZA0KDQoNCkNvcmUgYnVpbGQgc3lzdGVtDQoN
CqGhDQoNCkJVR0dZDQoNCm9wa2cgcGFja2FnZSBpbmZvcm1hdGlvbiBub3Qgc2hvdyBtdWx0aWxp
YiBpbnN0YWxsZWQgcGFja2FnZXM7IHgzMiBidWlsZCBjb3VsZG4ndCB3b3JrIGR1ZSB0byBicm9r
ZW4gc291cmNlIFVSTA0KDQoNClBvd2VyL1BlcmZvcm1hbmNlDQoNCqGhDQoNCkdPT0QNCg0KUG93
ZXIgY29uc3VtcHRpb24gb2Ygc3VnYXJiYXkgYW5kIGNyb3duYmF5IGFyZSA0MC4yMVcgYW5kIDE4
LjczVyByZXNwZWN0aXZlbHkNCg0KDQpDb21wbGlhbmNlDQoNCqGhDQoNCmluIHByb2Nlc3MNCg0K
TFRQIHRlc3Rpbmcgb24gU3VnYXJiYXkgYW5kIEJsYWNrc2FuZCBpcyBvbi1nb2luZy4NCg0KDQpT
dHJlc3MNCg0KoaENCg0KR09PRA0KDQpCb3RoIENyYXNobWUgYW5kIEhlbGx0ZXN0IG9uIEphc3Bl
cmZvcmVzdCBhbmQgYm90aCBDcmFzaG1lIGFuZCBMVFAgb24gQmVhZ2xlYm9hcmQgY291bGQgcGFz
cyAyNCBob3VycyBzdHJlc3MgdGVzdGluZy4NCg0KDQpIT0INCg0KoaENCg0KR09PRA0KDQpEZWIv
aXBrIGJ1aWxkIG5vdCBwcm9jZWVkIGJ5IHNob3dpbmcgc29tZSBwYWNrYWdlcyBiZWluZyBidWls
dDsgaG9iIGNyYXNoIHdoZW4gb3BlbmluZyBjdXN0b21pemVkIGJiIGZpbGUgd2l0aCBVYnVudHUg
MTAuMTAuDQoNCg0KDQqhoQ0KDQpDcml0aWNhbCBidWdzLCBtb3JlIHRoYW4gNTAlIHRlc3QgY2Fz
ZXMgYXJlIGJsb2NrZWQNCg0KoaENCg0KT25seSBOb3JtYWwsIE1pbm9yIG9yIEVuaGFuY2VtZW50
IGJ1Z3MsIG9yIGxlc3MgdGhhbiAxMCUgdGVzdCBjYXNlcyBmYWlsZWQNCg0KoaENCg0KTm9ybWFs
LCBNYWpvciBhbmQgQ3JpdGljYWwgYnVncywgYW5kIG1vcmUgdGhhbiAxMCUgdGVzdCBjYXNlcyBm
YWlsZWQNCg0KDQoNCkRldGFpbGVkIFRlc3QgUmVzdWx0IGZvciBlYWNoIGNvbXBvbmVudA0KDQpU
YXJnZXQNCg0KVG90YWwgVENzDQoNCk5vdCBSdW4NCg0KUGFzc2VkDQoNCkZhaWxlZA0KDQpOb3Qg
dGVzdGFibGUgKEJsb2NrZWQpDQoNCmVNZW5sb3cgU2F0by1TREsNCg0KNjMNCg0KMA0KDQo2MQ0K
DQoyIChidWcgMzEwLCA1MDMpDQoNCjANCg0KbjQ1MCBTYXRvLVNESw0KDQo2Mw0KDQowDQoNCjYz
DQoNCjANCg0KMA0KDQpDcm93bmJheS1TYXRvLVNESw0KDQo2NA0KDQowDQoNCjY0DQoNCjANCg0K
MA0KDQpTdWdhcmJheSBTYXRvLVNESw0KDQo2Nw0KDQowDQoNCjY3DQoNCjANCg0KMA0KDQpKYXNw
ZXJmb3Jlc3QgbHNiLVNESw0KDQozMg0KDQowDQoNCjMxDQoNCjEgKGJ1ZyAxMTg4KQ0KDQowDQoN
CkJlYWdsZWJvYXJkIFNhdG8tU0RLDQoNCjM5DQoNCjANCg0KMzkNCg0KMA0KDQowDQoNClJvdXRl
cnN0YXRpb25wcm8gU2F0by1TREsNCg0KMzMNCg0KMA0KDQozMw0KDQowDQoNCjANCg0KTXBjODMx
NWUtcmRiIFNhdG8tU0RLDQoNCjM2DQoNCjANCg0KMzYNCg0KMA0KDQowDQoNClFlbXV4ODYtNjQg
U2F0bw0KDQoyOQ0KDQowDQoNCjI4DQoNCjEgKGJ1ZyAxMTc0KQ0KDQowDQoNClFlbXV4ODYtNjQg
U2F0by1TREsNCg0KMzQNCg0KMA0KDQozMw0KDQoxIChidWcgMTE3NCkNCg0KMA0KDQpRZW11eDg2
IFNhdG8NCg0KMjgNCg0KMA0KDQoyNw0KDQoxIChidWcgMTE3NCkNCg0KMA0KDQpRZW11eDg2IFNh
dG8tU0RLDQoNCjM0DQoNCjANCg0KMzMNCg0KMSAoYnVnIDExNzQpDQoNCjANCg0KUWVtdWFybSBT
YXRvDQoNCjI5DQoNCjANCg0KMjkNCg0KMA0KDQowDQoNClFlbXVhcm0gU2F0by1TREsNCg0KMzQN
Cg0KMA0KDQozNA0KDQowDQoNCjANCg0KUWVtdW1pcHMgU2F0bw0KDQoyOQ0KDQowDQoNCjI5DQoN
CjANCg0KMA0KDQpRZW11bWlwcyBTYXRvLVNESw0KDQozNA0KDQowDQoNCjM0DQoNCjANCg0KMA0K
DQpRZW11cHBjIFNhdG8NCg0KMjENCg0KMA0KDQoyMQ0KDQowDQoNCjANCg0KUWVtdXBwYyBTYXRv
LVNESw0KDQoyNg0KDQowDQoNCjI2DQoNCjANCg0KMA0KDQpBRFQNCg0KNg0KDQowDQoNCjYNCg0K
MA0KDQowDQoNCkNvcmUgYnVpbGQgc3lzdGVtDQoNCjMwDQoNCjANCg0KMjcNCg0KMyAoYnVnIDE1
MjIsIDE1MjkpDQoNCjANCg0KUG93ZXIgJiBQZXJmb3JtYW5jZQ0KDQo1DQoNCjANCg0KNQ0KDQow
DQoNCjANCg0KQ29tcGxpYW5jZQ0KDQoyDQoNCjANCg0KMg0KDQowDQoNCjANCg0KU3RyZXNzDQoN
CjMNCg0KMA0KDQozDQoNCjANCg0KMA0KDQpIT0INCg0KMjYNCg0KMA0KDQoyNA0KDQoyIChidWcg
MTY2NSkNCg0KMA0KDQpUb3RhbA0KDQo3NjcNCg0KMA0KDQo3NTUNCg0KMTINCg0KMA0KDQoNCg0K
DQpDb21taXQgSW5mb3JtYXRpb24NCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQ0KDQpGb3IgQmxhY2tzYW5kL0Nyb3duYmF5L1N1Z2FyYmF5L0phc3BlcmZvcmVzdC9RZW11
eDg2L3Rvb2xjaGFpbjoNCg0KVHJlZS9CcmFuY2g6IFBva3kvRWRpc29uDQpDb21taXQgaWQ6IGJj
ODg1Y2Q4ZDM0M2FkMDAzMzkxMjIyNDI5MjIyNTI2ZGJhMTc1YWQNCk1ldGEgYnJhbmNoOiBFZGlz
b24NCkNvbW1pdCBpZDogZmQ3ZWVlMThlMzhhZTQ1ZWZhYTI5OWYwMTVhZWRkNGRjMzI1N2U2ZA0K
DQpGb3IgZU1lbmxvdzoNCg0KVHJlZS9CcmFuY2g6IFBva3kvRWRpc29uDQpDb21taXQgaWQ6IDVl
ZDU5YWUwZjI1YmY2NzNkNTE0ZGYyMzcxZGE3ZTA0MTViNjJiYjINCk1ldGEgYnJhbmNoOiBFZGlz
b24NCkNvbW1pdCBpZDogYzNlMTJhYTk4MWU5NzI2MTA5M2FiZWUwNWJiMDMwMWMzNWY1NGMyMw0K
DQpGb3IgUWVtdUFybS9RZW11TWlwcy9RZW11UFBDL0JlYWdsZWJvYXJkL1JvdXRlcnN0YXRpb25w
cm8vTXBjODMxNWUtcmRiL3Rvb2xjaGFpbjoNCg0KVHJlZS9CcmFuY2g6IHBva3kvZWRpc29uDQpQ
b2t5IENvbW1pdDogZTAyZDU1M2I0NTgwOGI3ODhjNzIxYzA3MjIzNzlkNmIzN2MwYjdkOA0KDQoN
Cklzc3VlIHN1bW1hcnkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoN
CkNvbXBvbmVudA0KDQpCdWcgTnVtYmVyDQoNClRhcmdldCBNaWxlc3RvbmUNCg0KU3lzdGVtICYg
Q29yZSBPUw0KDQpTeXN0ZW0gVXNhZ2UNCg0KQnVnIDUwMyAtIFtlbWVubG93XSBzeXN0ZW0gY2Fu
bm90IGVudGVyIFMzIHN0YW5kYnkgbW9kZQ0KDQoxLjINCg0KQnVnIDEwODIgLSBbeDg2XzY0XSBO
byBpY29ucyBzaG93biBvbiBYIGRlc2t0b3Agd2l0aCBzYXRvIGltYWdlDQoNCjEuMCBNMg0KDQpC
dWcgMTE3NDogW3p5cHBlci9ycG1dIHBhY2thZ2UgaW5zdGFsbC9yZW1vdmFsIGNvc3RzIGxvdHMg
b2YgZGlzayBzcGFjZQ0KDQoxLjINCg0KT3RoZXINCg0KQnVnIDMxMCAtIFtlTWVubG93XSBpMmNf
dHJhbnNmZXIgZXJyb3Igb24gZS1NZW5sb3cNCg0KMS4xDQoNCkJ1ZyAxMTg4IC0gW2phcGVyZm9y
ZXN0XSBJL09BVCBETUEgZW5naW5lIGluaXQgZmFpbGVkDQoNCjEuMg0KDQpCdWcgMTI1OCAtW2Ny
b3duYmF5XSBYb3JnIGVhdHMgbG90cyBvZiBDUFUgdGltZSBhZnRlciBzdGFuZGJ5DQoNCjEuMSBN
NA0KDQpCdWcgMTY2NCAtIHRleGluZm8gZG9fY29tcGlsZSBmYWlsIGR1ZSB0byBtYWtlZG9jIGJp
bmFyeSBub3QgZXhlY3V0YWJsZQ0KDQoxLjINCg0KQ29yZSBidWlsZCBzeXN0ZW0NCg0KQnVnIDE1
MjkgLSBbeDMyXSB4MzIgYnVpbGQgYnJva2VuIGR1ZSB0byBrZXJuZWwub3JnIGZldGNoIGZhaWx1
cmUNCg0KMS4xDQoNCkJ1ZyAxNTM4IC0gW211bHRpbGliXTogWCB3aW5kb3cgZG9lc24ndCBzdGFy
dHVwIGluIG11bHRpbGliIGltYWdlIHJhbmRvbWx5DQoNCjEuMg0KDQpCdWcgMTUyMiAtIFttdWx0
aWxpYi9pcGtdIC92YXIvbGliL29wa2cvc3RhdHVzIGNoYW5nZWQgYWZ0ZXIgdGhlIDFzdCBib290
DQoNCjEuMg0KDQpCdWcgMTUwMiAtIFttdWx0aWxpYl0gbGliNjQtZHBrZyBpcyB1bmJ1aWxkYWJs
ZSBmb3IgbGliNjQgYnVpbGQNCg0KMS4yDQoNClBvd2VyICYgUGVyZm9ybWFuY2UNCg0KUG93ZXIg
Y29uc3VtcHRpb24gb2Ygc3VnYXJiYXkgYW5kIGNyb3duYmF5IGFyZSA0MC4yMVcgYW5kIDE4Ljcz
VyByZXNwZWN0aXZlbHkuDQpCdWlsZCB0aW1lIGZvciBhIHNhdG8gaW1hZ2Ugb24gQ29yZSBpNyBt
YWNoaW5lIGlzIDExOSBtaW51dGVzLiBEZXRhaWxlZCByZXN1bHQgb24gaHR0cHM6Ly93aWtpLnlv
Y3RvcHJvamVjdC5vcmcvd2lraS9QZXJmb3JtYW5jZV9UZXN0Lg0KDQqhoQ0KDQpDb21wbGlhbmNl
DQoNCkxUUCByZXN1bHQ6IGh0dHBzOi8vd2lraS5wb2t5bGludXgub3JnL3dpa2kvTFRQX3Jlc3Vs
dA0KUE9TSVggcmVzdWx0OiBodHRwczovL3dpa2kucG9reWxpbnV4Lm9yZy93aWtpL1Bvc2l4X3Jl
c3VsdA0KDQqhoQ0KDQpTdHJlc3MNCg0KQm90aCBDcmFzaG1lIGFuZCBIZWxsdGVzdCBvbiBKYXNw
ZXJmb3Jlc3QgYW5kIGJvdGggQ3Jhc2htZSBhbmQgTFRQIG9uIEJlYWdsZWJvYXJkIGNvdWxkIHBh
c3MgMjQgaG91cnMgc3RyZXNzIHRlc3RpbmcuDQoNCqGhDQoNCkhPQg0KDQpCdWcgMTY2MyAtIFtI
T0JdIGhvYiBjcmFzaCB3aGVuIG9wZW5pbmcgY3VzdG9taXplZCBiYiBmaWxlIHdpdGggVWJ1bnR1
IDEwLjEwDQoNCi0tLQ0KDQpCdWcgMTY2NSAtIFtIT0JdIGRlYi9pcGsgYnVpbGQgbm90IHByb2Nl
ZWQgYnkgc2hvd2luZyBzb21lIHBhY2thZ2VzIGJlaW5nIGJ1aWx0DQoNCjEuMg0KDQoNCg0KRGlz
dHJpYnV0aW9uIHRlc3Qgc3VtbWFyeToNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tDQpEaXN0cmlidXRpb24NCg0KSG9zdCBBcmNoDQoNClRhcmdldCBNYWNoaW5lDQoNCndv
cmxkIGJ1aWxkDQoNCmNvcmUtc2F0by1zZGsgYnVpbGQNCg0KRmVkb3JhIDE1DQoNCng4Nl82NA0K
DQpxZW11eDg2DQoNCkZBSUwoYnVnIDE2NjQpDQoNCqGhUEFTUw0KDQpVYnVudHUgMTEuMDQNCg0K
eDg2XzY0DQoNCnFlbXVhcm0NCg0KRkFJTChidWcgMTY2NCkNCg0KoaFQQVNTDQoNCk9wZW5zdXNl
IDExLjQNCg0KeDg2XzY0DQoNCnFlbXVwcGMNCg0KRkFJTChidWcgMTY2NCkNCg0KoaFQQVNTDQoN
CkZlZG9yYSAxNiBBbHBoYQ0KDQp4ODZfNjQNCg0KcWVtdW1pcHMNCg0KRkFJTChidWcxNjY0KSkN
Cg0KoaFQQVNTDQoNClVidW50dSAxMS4xMCBBbHBoYTMNCg0KeDg2XzY0DQoNCnFlbXVhcm0NCg0K
RkFJTChidWcgMTY2NCkNCg0KoaFQQVNTDQoNCk9wZW5zdXNlIDEyLjEgTTUNCg0KeDg2XzY0DQoN
CnFlbXVtaXBzDQoNCkZBSUwoYnVnIDE2NjQpDQoNCqGhUEFTUw0KDQoNClZlcmlmeSBidWcgbGlz
dA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KMS4gICAgIGJ1ZyAx
NDk2IC0gW211bHRpbGliXSBsaWIzMiBidWlsZCBhZ2FpbnN0IHFlbXV4ODYgZmFpbGVkIGR1cmlu
ZyBkb19yb290ZnMNCg0KMi4gICAgIGJ1ZyAxNDk3IC0gW211bHRpbGliXSBsaWIzMiBidWlsZCBh
Z2FpbnN0IHFlbXV4ODYtNjQgZmFpbGVkIGR1cmluZyBkb19yb290ZnMNCg0KMy4gICAgIGJ1ZyAx
NDk4IC0gW211bHRpbGliXSBsaWI2NCBidWlsZCBhZ2FpbnN0IHFlbXV4ODYgZmFpbGVkIGR1cmlu
ZyBkb19yb290ZnMNCg0KNC4gICAgIGJ1ZyAxNTI3IC0gW211bHRpbGliXSBsaWI2NCBidWlsZCBh
Z2FpbnN0IHFlbXV4ODYtNjQgZmFpbGVkIGR1cmluZyBkb19yb290ZnMNCg0KNS4gICAgIGJ1ZyAx
MjM1LSBbRW1lbmxvd10gUnVubmluZyBnbHhpbmZvIGFuZCBnbHhnZWFycyBjb21tYW5kcyBmYWls
ZWQuDQoNCg0KDQpCZXN0IFJlZ2FyZHMsDQoNCkppYWp1bg0KDQoNCg==

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FAshsmsx501ccrc_
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-indent:21.0pt;
	font-size:10.5pt;
	font-family:"Calibri","sans-serif";}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
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
erif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the fullpass test repor=
t for Yocto 1.1 M4 RC4 build. There is no new bug found except for the 4 bu=
gs found in weekly testing. There is no open major bugs for 1.1 now. Basic =
functions of all components, including hob and multilib, could work well. T=
here is no distribution specific issue found against N+1 distros for Fedora=
, Opensuse and Ubuntu. Texinfo build could not pass, which blocks world bui=
ld for all distributions. QA verified the new emenlow image from autobuilde=
r, and the glx commands segfault issue is fixed in this build. LTP testing =
on Sugarbay and Blacksand is still on-going, which will be finished next Mo=
nday.<o:p></o:p></span></p><p class=3DMsoNormal style=3D'text-indent:21.0pt=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'>Note: for difference image build against difference commit/branch, pl=
ease refer to =A1=AEcommit information=A1=AF section for detail information=
. The test report is archived @ <a href=3D"https://wiki.pokylinux.org/wiki/=
Yocto_1.1_Milestone_Test_Report">https://wiki.pokylinux.org/wiki/Yocto_1.1_=
Milestone_Test_Report</a><o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Test Summary:<o:p></=
o:p></span></b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>----------------------------=
-----------<o:p></o:p></span></b></p><table class=3DMsoNormalTable border=
=3D0 cellspacing=3D0 cellpadding=3D0 width=3D851 style=3D'width:638.3pt;mar=
gin-left:-1.15pt;border-collapse:collapse'><tr style=3D'height:14.25pt'><td=
 width=3D719 nowrap colspan=3D7 valign=3Dbottom style=3D'width:539.4pt;bord=
er:solid windowtext 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>Test Result Summary<o:p></o:p></span></b>=
</p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132><p c=
lass=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=
=3D173 nowrap valign=3Dbottom style=3D'width:129.8pt;border:solid windowtex=
t 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Com=
ponent<o:p></o:p></span></b></p></td><td width=3D132 nowrap colspan=3D2 val=
ign=3Dbottom style=3D'width:99.15pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'>Target<o:p></o:p></span></b></p></t=
d><td width=3D83 nowrap colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Status<o:p></o:p></span></b></p></td><td width=3D331 colspan=3D2 valign=
=3Dbottom style=3D'width:248.55pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'>Comments<o:p></o:p></span></b></p><=
/td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132><p class=
=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:34.5pt'><td width=3D173 =
nowrap rowspan=3D8 style=3D'width:129.8pt;border-top:none;border-left:solid=
 windowtext 1.0pt;border-bottom:solid black 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:34.5pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>BSP<o:p></o:p=
></span></b></p></td><td width=3D132 nowrap colspan=3D2 valign=3Dbottom sty=
le=3D'width:99.15pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:34.5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:le=
ft'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'>eMenlow<o:p></o:p></span></p></td><td width=3D83 nowrap=
 colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:34.5pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<=
o:p></o:p></span></p></td><td width=3D331 colspan=3D2 valign=3Dbottom style=
=3D'width:248.55pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:34.5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>I2C_transfer error; Standby failed;<o:p></o:p></span></p=
></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132><p clas=
s=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:26.25pt'><td width=3D13=
2 nowrap colspan=3D2 valign=3Dbottom style=3D'width:99.15pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoN=
ormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Blacksand<o:p>=
</o:p></span></p></td><td width=3D83 nowrap colspan=3D2 valign=3Dbottom sty=
le=3D'width:61.9pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft sty=
le=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span></p></td><td w=
idth=3D331 colspan=3D2 valign=3Dbottom style=3D'width:248.55pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DM=
soNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Everything =
runs well<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0c=
m 0cm 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'=
height:15.0pt'><td width=3D132 nowrap colspan=3D2 valign=3Dbottom style=3D'=
width:99.15pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>Crownbay-emgd<o:p></o:p></span></p></td><td width=3D83 nowrap=
 colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<=
o:p></o:p></span></p></td><td width=3D331 colspan=3D2 valign=3Dbottom style=
=3D'width:248.55pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>Xorg eat lots of cup's resource after standby<o:p></o:p>=
</span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D1=
32><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:26.25pt'><td =
width=3D132 nowrap colspan=3D2 valign=3Dbottom style=3D'width:99.15pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p cl=
ass=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Suga=
rbay<o:p></o:p></span></p></td><td width=3D83 nowrap colspan=3D2 valign=3Db=
ottom style=3D'width:61.9pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D0=
50;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span></p=
></td><td width=3D331 colspan=3D2 valign=3Dbottom style=3D'width:248.55pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Everything runs well<o:p></o:p></span></p></td><td style=3D'border:none;pad=
ding:0cm 0cm 0cm 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><t=
r style=3D'height:20.25pt'><td width=3D132 nowrap colspan=3D2 valign=3Dbott=
om style=3D'width:99.15pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:20.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-a=
lign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>Jasperforest-lsb<o:p></o:p></span></p></td><td w=
idth=3D83 nowrap colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:20.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'>GOOD<o:p></o:p></span></p></td><td width=3D331 colspan=3D2 vali=
gn=3Dbottom style=3D'width:248.55pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:20.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>I/OAT DMA engine init failed;<o:p></o:=
p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=
=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:26.25pt'>=
<td width=3D132 nowrap colspan=3D2 valign=3Dbottom style=3D'width:99.15pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Beagleboard<o:p></o:p></span></p></td><td width=3D83 nowrap colspan=3D2 val=
ign=3Dbottom style=3D'width:61.9pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;backgroun=
d:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal =
align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></spa=
n></p></td><td width=3D331 colspan=3D2 valign=3Dbottom style=3D'width:248.5=
5pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25=
pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Everything runs well<o:p></o:p></span></p></td><td style=3D'border:no=
ne;padding:0cm 0cm 0cm 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td><=
/tr><tr style=3D'height:26.25pt'><td width=3D132 nowrap colspan=3D2 valign=
=3Dbottom style=3D'width:99.15pt;border-top:none;border-left:none;border-bo=
ttom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm=
 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D=
'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>Routerstationpro<o:p></o:p></span></p></t=
d><td width=3D83 nowrap colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4p=
t;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>GOOD<o:p></o:p></span></p></td><td width=3D331 colspan=
=3D2 valign=3Dbottom style=3D'width:248.55pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dl=
eft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>Everything runs well<o:p></o:=
p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=
=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:26.25pt'>=
<td width=3D132 nowrap colspan=3D2 valign=3Dbottom style=3D'width:99.15pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
Mpc8315e-rdb<o:p></o:p></span></p></td><td width=3D83 nowrap colspan=3D2 va=
lign=3Dbottom style=3D'width:61.9pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;backgrou=
nd:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal=
 align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></sp=
an></p></td><td width=3D331 colspan=3D2 valign=3Dbottom style=3D'width:248.=
55pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.2=
5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Everything runs well<o:p></o:p></span></p></td><td style=3D'border:no=
ne;padding:0cm 0cm 0cm 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td><=
/tr><tr style=3D'height:26.25pt'><td width=3D173 nowrap rowspan=3D5 style=
=3D'width:129.8pt;border-top:none;border-left:solid windowtext 1.0pt;border=
-bottom:solid black 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>QEMU<o:p></o:p></span></b></p></td><=
td width=3D132 nowrap colspan=3D2 valign=3Dbottom style=3D'width:99.15pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p=
 class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>q=
emux86<o:p></o:p></span></p></td><td width=3D83 nowrap colspan=3D2 valign=
=3Dbottom style=3D'width:61.9pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#=
92D050;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal ali=
gn=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span><=
/p></td><td width=3D331 colspan=3D2 valign=3Dbottom style=3D'width:248.55pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'=
><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>Everything runs well<o:p></o:p></span></p></td><td style=3D'border:none;p=
adding:0cm 0cm 0cm 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr>=
<tr style=3D'height:26.25pt'><td width=3D132 nowrap colspan=3D2 valign=3Dbo=
ttom style=3D'width:99.15pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text=
-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>qemux86-64<o:p></o:p></span></p></td><td width=
=3D83 nowrap colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:26=
.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'>GOOD<o:p></o:p></span></p></td><td width=3D331 colspan=3D2 valign=
=3Dbottom style=3D'width:248.55pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>Everything runs well<o:p></o:p></span>=
</p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132><p c=
lass=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:26.25pt'><td width=
=3D132 nowrap colspan=3D2 valign=3Dbottom style=3D'width:99.15pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>qemuarm=
<o:p></o:p></span></p></td><td width=3D83 nowrap colspan=3D2 valign=3Dbotto=
m style=3D'width:61.9pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;p=
adding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dlef=
t style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span></p></td>=
<td width=3D331 colspan=3D2 valign=3Dbottom style=3D'width:248.55pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p clas=
s=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Everyt=
hing runs well<o:p></o:p></span></p></td><td style=3D'border:none;padding:0=
cm 0cm 0cm 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr styl=
e=3D'height:26.25pt'><td width=3D132 nowrap colspan=3D2 valign=3Dbottom sty=
le=3D'width:99.15pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>qemuppc<o:p></o:p></span></p></td><td width=3D83 nowra=
p colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p c=
lass=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOO=
D<o:p></o:p></span></p></td><td width=3D331 colspan=3D2 valign=3Dbottom sty=
le=3D'width:248.55pt;border-top:none;border-left:none;border-bottom:solid w=
indowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:=
left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>Everything runs well<o:p></o:p></span></p></td><td st=
yle=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132><p class=3D'MsoNorm=
al'>&nbsp;</td></tr><tr style=3D'height:26.25pt'><td width=3D132 nowrap col=
span=3D2 valign=3Dbottom style=3D'width:99.15pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>qemumips<o:p></o:p></span=
></p></td><td width=3D83 nowrap colspan=3D2 valign=3Dbottom style=3D'width:=
61.9pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt =
0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-a=
lign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>GOOD<o:p></o:p></span></p></td><td width=3D331 c=
olspan=3D2 valign=3Dbottom style=3D'width:248.55pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal ali=
gn=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'>Everything runs well<o:=
p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' w=
idth=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25=
pt'><td width=3D173 nowrap style=3D'width:129.8pt;border:solid windowtext 1=
.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
ADT<o:p></o:p></span></b></p></td><td width=3D132 nowrap colspan=3D2 valign=
=3Dbottom style=3D'width:99.15pt;border-top:none;border-left:none;border-bo=
ttom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm=
 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D=
'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;=
color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p></td><td=
 width=3D83 nowrap colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>GOOD<o:p></o:p></span></p></td><td width=3D331 colspan=3D2 va=
lign=3Dbottom style=3D'width:248.55pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft sty=
le=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>Everything runs well<o:p></o:p></spa=
n></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132><p=
 class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:26.25pt'><td width=
=3D173 nowrap style=3D'width:129.8pt;border:solid windowtext 1.0pt;border-t=
op:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Distribution Su=
pport<o:p></o:p></span></b></p></td><td width=3D132 nowrap colspan=3D2 vali=
gn=3Dbottom style=3D'width:99.15pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=
=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p></td=
><td width=3D83 nowrap colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt=
;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>GOOD<o:p></o:p></span></p></td><td width=3D331 colspan=3D=
2 valign=3Dbottom style=3D'width:248.55pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft=
 style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>No distribution specific issue. =
texinfo build blocks world build<o:p></o:p></span></p></td><td style=3D'bor=
der:none;padding:0cm 0cm 0cm 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;=
</td></tr><tr style=3D'height:30.85pt'><td width=3D173 nowrap style=3D'widt=
h:129.8pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0=
cm 5.4pt;height:30.85pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>Core build system<o:p></o:p></span></b></p=
></td><td width=3D132 nowrap colspan=3D2 valign=3Dbottom style=3D'width:99.=
15pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:30.8=
5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span styl=
e=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span lan=
g=3DEN-US><o:p></o:p></span></span></p></td><td width=3D83 nowrap colspan=
=3D2 style=3D'width:61.9pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#FFC00=
0;padding:0cm 5.4pt 0cm 5.4pt;height:30.85pt'><p class=3DMsoNormal align=3D=
left style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>BUGGY<o:p></o:p></span></p><=
/td><td width=3D331 colspan=3D2 valign=3Dbottom style=3D'width:248.55pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:30.85pt'><p =
class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>op=
kg package information not show multilib installed packages; x32 build coul=
dn't work due to broken source URL<o:p></o:p></span></p></td><td style=3D'b=
order:none;padding:0cm 0cm 0cm 0cm' width=3D132><p class=3D'MsoNormal'>&nbs=
p;</td></tr><tr style=3D'height:27.0pt'><td width=3D173 nowrap style=3D'wid=
th:129.8pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt =
0cm 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>Power/Performance<o:p></o:p></span></b></p=
></td><td width=3D132 nowrap colspan=3D2 valign=3Dbottom style=3D'width:99.=
15pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:27.0=
pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span style=
=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span lang=
=3DEN-US><o:p></o:p></span></span></p></td><td width=3D83 nowrap colspan=3D=
2 style=3D'width:61.9pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;p=
adding:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=3DMsoNormal align=3Dleft=
 style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span></p></td><=
td width=3D331 colspan=3D2 valign=3Dbottom style=3D'width:248.55pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:27.0pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Power c=
onsumption of sugarbay and crownbay are 40.21W and 18.73W respectively<o:p>=
</o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' wid=
th=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:23.25pt=
'><td width=3D173 nowrap style=3D'width:129.8pt;border:solid windowtext 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:23.25pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Comp=
liance<o:p></o:p></span></b></p></td><td width=3D132 nowrap colspan=3D2 val=
ign=3Dbottom style=3D'width:99.15pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:23.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=
=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p></td=
><td width=3D83 nowrap colspan=3D2 valign=3Dbottom style=3D'width:61.9pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:23.25pt'><p=
 class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>i=
n process<o:p></o:p></span></p></td><td width=3D331 colspan=3D2 valign=3Dbo=
ttom style=3D'width:248.55pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:23.25pt'><p class=3DMsoNormal align=3Dleft style=3D'tex=
t-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>LTP testing on Sugarbay and Blacksand is on-g=
oing.<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0c=
m 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'heig=
ht:22.05pt'><td width=3D173 nowrap style=3D'width:129.8pt;border:solid wind=
owtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:22.05pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Stress<o:p></o:p></span></b></p></td><td width=3D132 nowrap colspan=
=3D2 valign=3Dbottom style=3D'width:99.15pt;border-top:none;border-left:non=
e;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:22.05pt'><p class=3DMsoNormal align=3Dle=
ft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=
=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span=
></p></td><td width=3D83 nowrap colspan=3D2 style=3D'width:61.9pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height=
:22.05pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'>GOOD<o:p></o:p></span></p></td><td width=3D331 colspan=3D2 valig=
n=3Dbottom style=3D'width:248.55pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:22.05pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>Both Crashme and Helltest on Jasperfor=
est and both Crashme and LTP on Beagleboard could pass 24 hours stress test=
ing. <o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0c=
m 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'heig=
ht:28.25pt'><td width=3D173 nowrap style=3D'width:129.8pt;border:solid wind=
owtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:28.25pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>HOB<o:p></o:p></span></b></p></td><td width=3D132 nowrap colspan=3D2 =
valign=3Dbottom style=3D'width:99.15pt;border-top:none;border-left:none;bor=
der-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:28.25pt'><p class=3DMsoNormal align=3Dleft st=
yle=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=
=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p><=
/td><td width=3D83 nowrap colspan=3D2 style=3D'width:61.9pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;background:#FFC000;padding:0cm 5.4pt 0cm 5.4pt;height:28.25=
pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>GOOD<o:p></o:p></span></p></td><td width=3D331 colspan=3D2 valign=3Db=
ottom style=3D'width:248.55pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:28.25pt'><p class=3DMsoNormal align=3Dleft style=3D'te=
xt-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>Deb/ipk build not proceed by showing some pa=
ckages being built; hob crash when opening customized bb file with Ubuntu 1=
0.10.<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0c=
m 0cm' width=3D132><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'heig=
ht:21.0pt'><td width=3D190 nowrap colspan=3D2 valign=3Dbottom style=3D'widt=
h:142.2pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'></td><td width=3D150 n=
owrap colspan=3D2 valign=3Dbottom style=3D'width:112.25pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:21.0pt'></td><td width=3D74 nowrap colspan=3D2 valign=3Db=
ottom style=3D'width:55.65pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'></t=
d><td width=3D438 nowrap colspan=3D2 valign=3Dbottom style=3D'width:328.2pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'></td></tr><tr style=3D'height:2=
1.0pt'><td width=3D190 nowrap colspan=3D2 valign=3Dbottom style=3D'width:14=
2.2pt;background:red;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span style=3D'font-si=
ze:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'><o:p><=
/o:p></span></p></td><td width=3D661 nowrap colspan=3D6 valign=3Dbottom sty=
le=3D'width:496.1pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DM=
soNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Critical bu=
gs, more than 50% test cases are blocked</span><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p><=
/span></p></td></tr><tr style=3D'height:21.0pt'><td width=3D190 nowrap cols=
pan=3D2 valign=3Dbottom style=3D'width:142.2pt;background:#9BBB59;padding:0=
cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span style=3D'font-size:10.0pt;font-family:=CB=CE=
=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:=CB=CE=CC=E5;color:black'><o:p></o:p></span></p></td><td wid=
th=3D661 nowrap colspan=3D6 valign=3Dbottom style=3D'width:496.1pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>Only Normal, Minor or Enhancement bugs=
, or less than 10% test cases failed</span><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></spa=
n></p></td></tr><tr style=3D'height:21.0pt'><td width=3D190 nowrap colspan=
=3D2 valign=3Dbottom style=3D'width:142.2pt;background:#FFC000;padding:0cm =
5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=
=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:=CB=CE=CC=E5;color:black'><o:p></o:p></span></p></td><td width=
=3D661 nowrap colspan=3D6 valign=3Dbottom style=3D'width:496.1pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dleft style=3D=
'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>Normal, Major and Critical bugs, and more=
 than 10% test cases failed</span><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></t=
d></tr><tr height=3D0><td width=3D173 style=3D'border:none'></td><td width=
=3D17 style=3D'border:none'></td><td width=3D116 style=3D'border:none'></td=
><td width=3D34 style=3D'border:none'></td><td width=3D49 style=3D'border:n=
one'></td><td width=3D26 style=3D'border:none'></td><td width=3D306 style=
=3D'border:none'></td><td width=3D132 style=3D'border:none'></td></tr></tab=
le><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><table class=3DMsoN=
ormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D756 style=3D'=
width:20.0cm;margin-left:-.9pt;border-collapse:collapse'><tr style=3D'heigh=
t:21.0pt'><td width=3D756 nowrap colspan=3D6 valign=3Dbottom style=3D'width=
:20.0cm;border:solid windowtext 1.0pt;border-right:solid black 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>Detailed Test Result for each =
component</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td></tr>=
<tr style=3D'height:15.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;b=
order:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Target</span></b><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span>=
</b></p></td><td width=3D79 style=3D'width:59.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Total TCs</span></=
b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'> </span><b><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td=
><td width=3D103 style=3D'width:77.0pt;border-top:none;border-left:none;bor=
der-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>Not Run</span></b><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'><o:p></o:p></span></b></p></td><td width=3D73 style=3D'width:55.0pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'>Passed</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'> </span><b><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></=
o:p></span></b></p></td><td width=3D167 style=3D'width:125.0pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Faile=
d</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'> </span><b><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></=
b></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=
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
,"sans-serif";color:black'>63</span><span lang=3DEN-US style=3D'font-size:1=
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
font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>61</span><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:#00B050'><o:p></o:p></span></p></td><td width=3D167 style=3D'width:=
125.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:2=
1.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:red'>2 (bug 310, 503)</span><span lang=3DEN-US style=3D'font-size:10.0=
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
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>n450 Sato-SDK</s=
pan></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D79 st=
yle=3D'width:59.0pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:black'>63</span><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td=
><td width=3D103 style=3D'width:77.0pt;border-top:none;border-left:none;bor=
der-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>0</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td><td width=3D73 style=3D'width:55.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>63</span><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:#00B050'><o:p></o:p></span></p></td><td width=3D167 style=3D'width:125=
.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:red'><o:p></o:p></span></p></td><td width=3D163 val=
ign=3Dbottom style=3D'width:122.0pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></sp=
an></p></td></tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap style=
=3D'width:129.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm=
 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>Crownbay-Sato-SDK</span></b><b><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'><o:p></o:p></span></b></p></td><td width=3D79 style=3D'width:=
59.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21=
.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'>64</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D=
103 style=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p=
></td><td width=3D73 style=3D'width:55.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:#00B050'>64</span><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
><o:p></o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom=
 style=3D'width:122.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td>=
</tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.=
0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4=
pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>Sugarbay Sato-SDK</span></b><b><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o=
:p></o:p></span></b></p></td><td width=3D79 style=3D'width:59.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>67<=
/span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'><o:p></o:p></span></p></td><td width=3D103 style=3D'w=
idth:77.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td widt=
h=3D73 style=3D'width:55.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:#00B050'>67</span><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></=
span></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=
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
color:black'>Jasperforest lsb-SDK</span></b><b><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p><=
/span></b></p></td><td width=3D79 style=3D'width:59.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>32</span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'><o:p></o:p></span></p></td><td width=3D103 style=3D'width:77.0pt;=
border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 sty=
le=3D'width:55.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:#00B050'>31</span><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p><=
/td><td width=3D167 style=3D'width:125.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:red'>1 (bug 1188)</span><span lang=
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
color:black'>Beagleboard Sato-SDK</span></b><b><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p><=
/span></b></p></td><td width=3D79 style=3D'width:59.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>39</span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'><o:p></o:p></span></p></td><td width=3D103 style=3D'width:77.0pt;=
border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 sty=
le=3D'width:55.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:#00B050'>39</span><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p><=
/td><td width=3D167 style=3D'width:125.0pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o=
:p></span></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'=
>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:=
26.25pt'><td width=3D172 style=3D'width:129.0pt;border:solid windowtext 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Rout=
erstationpro Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></=
p></td><td width=3D79 style=3D'width:59.0pt;border-top:none;border-left:non=
e;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>33</span><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><=
o:p></o:p></span></p></td><td width=3D103 style=3D'width:77.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</spa=
n><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'><o:p></o:p></span></p></td><td width=3D73 style=3D'width:=
55.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26=
.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:#00B050'>33</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></td><td wid=
th=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></spa=
n></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt=
'><td width=3D172 style=3D'width:129.0pt;border:solid windowtext 1.0pt;bord=
er-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Mpc8315e-rdb=
 Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td w=
idth=3D79 style=3D'width:59.0pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'>36</span><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></s=
pan></p></td><td width=3D103 style=3D'width:77.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td><td width=3D73 style=3D'width:55.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p cla=
ss=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'=
>36</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:#00B050'><o:p></o:p></span></p></td><td width=3D167 styl=
e=3D'width:125.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td><td w=
idth=3D163 valign=3Dbottom style=3D'width:122.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><=
o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt'><td width=3D172 =
nowrap style=3D'width:129.0pt;border:solid windowtext 1.0pt;border-top:none=
;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86-64 Sato</span><=
/b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D79 nowrap =
style=3D'width:59.0pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>29</span><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></=
td><td width=3D103 style=3D'width:77.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>0</span><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p><=
/o:p></span></p></td><td width=3D73 style=3D'width:55.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>28</span><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:#00B050'><o:p></o:p></span></p></td><td width=3D167 style=3D'width:1=
25.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21=
.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'>1 (bug 1174)</span><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td><td wi=
dth=3D163 valign=3Dbottom style=3D'width:122.0pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><=
o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt'><td width=3D172 =
nowrap style=3D'width:129.0pt;border:solid windowtext 1.0pt;border-top:none=
;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86-64 Sato-SDK</sp=
an></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D79 now=
rap style=3D'width:59.0pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>34</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></=
p></td><td width=3D103 style=3D'width:77.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>0</span><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o=
:p></o:p></span></p></td><td width=3D73 style=3D'width:55.0pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMso=
Normal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>33</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:#00B050'><o:p></o:p></span></p></td><td width=3D167 style=3D'wi=
dth:125.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:red'>1 (bug 1174)</span><span lang=3DEN-US style=3D'font-size:10.0=
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
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86 Sato</sp=
an></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D79 now=
rap style=3D'width:59.0pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>28</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></=
p></td><td width=3D103 style=3D'width:77.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>0</span><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o=
:p></o:p></span></p></td><td width=3D73 style=3D'width:55.0pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMso=
Normal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>27</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:#00B050'><o:p></o:p></span></p></td><td width=3D167 style=3D'wi=
dth:125.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:red'>1 (bug 1174)</span><span lang=3DEN-US style=3D'font-size:10.0=
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
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86 Sato-SDK=
</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D79=
 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>34</span><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></spa=
n></p></td><td width=3D103 style=3D'width:77.0pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'><o:p></o:p></span></p></td><td width=3D73 style=3D'width:55.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>3=
3</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:#00B050'><o:p></o:p></span></p></td><td width=3D167 style=
=3D'width:125.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>1 (bug 1174)</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p>=
</td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt'><td wi=
dth=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext 1.0pt;borde=
r-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemuarm Sato<=
/span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D79 =
nowrap style=3D'width:59.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>29</span><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span=
></p></td><td width=3D103 nowrap style=3D'width:77.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'><o:p></o:p></span></p></td><td width=3D73 nowrap style=3D'width:55.=
0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:#00B050'>29</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></td><td width=
=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p=
></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-top:non=
e;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:21.0pt'><td=
 width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext 1.0pt;bo=
rder-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemuarm =
Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td wi=
dth=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>34</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td><td width=3D103 nowrap style=3D'width:77.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'><o:p></o:p></span></p></td><td width=3D73 nowrap style=3D'=
width:55.0pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:#00B050'>34</span><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
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
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemum=
ips Sato</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td wi=
dth=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>29</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td><td width=3D103 nowrap style=3D'width:77.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'><o:p></o:p></span></p></td><td width=3D73 nowrap style=3D'=
width:55.0pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:#00B050'>29</span><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
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
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemum=
ips Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><t=
d width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>34</span><span lang=3DEN-US s=
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
-serif";color:#00B050'>34</span><span lang=3DEN-US style=3D'font-size:10.0p=
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
Qemuppc Sato</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><t=
d width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>21</span><span lang=3DEN-US s=
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
-serif";color:#00B050'>21</span><span lang=3DEN-US style=3D'font-size:10.0p=
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
Qemuppc Sato-SDK</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></t=
d><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>26</span><span lang=3DEN-=
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
sans-serif";color:#00B050'>26</span><span lang=3DEN-US style=3D'font-size:1=
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
lack'>ADT</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td w=
idth=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;bor=
der-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>6</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td><td width=3D103 nowrap style=3D'width:77.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</span=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'><o:p></o:p></span></p></td><td width=3D73 nowrap style=3D'=
width:55.0pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:#00B050'>6</span><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></td><td=
 width=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></sp=
an></p></td><td width=3D163 valign=3Dbottom style=3D'width:122.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:red'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt=
'><td width=3D172 nowrap style=3D'width:129.0pt;border:solid windowtext 1.0=
pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Core =
build system</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><t=
d width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>30</span><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p=
></o:p></span></p></td><td width=3D103 nowrap style=3D'width:77.0pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 nowrap style=
=3D'width:55.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cen=
ter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:#00B050'>27</span><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></span></p></t=
d><td width=3D167 style=3D'width:125.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'>3 (bug 1522, 1529)</span><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom style=3D'=
width:122.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:15.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr><tr s=
tyle=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:=
21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Power &amp; Performance</span></b><b><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p><=
/o:p></span></b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>5<=
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
;font-family:"Arial","sans-serif";color:#00B050'>5</span><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>=
<o:p></o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom=
 style=3D'width:122.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td>=
</tr><tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.=
0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4=
pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>Compliance</span></b><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>2</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></p></td><td width=3D103 nowrap styl=
e=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><t=
d width=3D73 nowrap style=3D'width:55.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:#00B050'>2</span><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><=
o:p></o:p></span></p></td><td width=3D167 style=3D'width:125.0pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0</span>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom st=
yle=3D'width:122.0pt;border-top:none;border-left:none;border-bottom:solid w=
indowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></t=
r><tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.0pt=
;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cent=
er'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>Stress</span></b><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></spa=
n></b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>3</span><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'><o:p></o:p></span></p></td><td width=3D103 nowrap style=3D'widt=
h:77.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=
=3D73 nowrap style=3D'width:55.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:#00B050'>3</span><span lang=3DEN-US style=
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
serif";color:black'>HOB</span></b><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b>=
</p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>26</span><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'><o:p></o:p></span></p></td><td width=3D103 nowrap style=3D'width:77.=
0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D73 n=
owrap style=3D'width:55.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:#00B050'>24</span><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'><o:p></o:p></s=
pan></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:red'>2 (bug 1665)</span><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:red'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom styl=
e=3D'width:122.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr>=
<tr style=3D'height:21.0pt'><td width=3D172 nowrap style=3D'width:129.0pt;b=
order:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center=
'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Total</span></b><b><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span><=
/b></p></td><td width=3D79 nowrap style=3D'width:59.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>767</span><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'><o:p></o:p></span></p></td><td width=3D103 nowrap style=3D'width=
:77.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:2=
1.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D=
73 nowrap style=3D'width:55.0pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'>755</span><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></=
span></p></td><td width=3D167 style=3D'width:125.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:red'>12</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'><o:p></o:p></span></p></td><td width=3D163 valign=3Dbottom style=3D'wid=
th:122.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:21.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:red'>0</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td></tr></table>=
<p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Commit Inform=
ation<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>----------------=
-----------------------<o:p></o:p></span></b></p><p class=3DMsoNormal><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><=
o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif"'>For Blacksand/Crownbay/=
Sugarbay/Jasperforest/Qemux86/toolchain:<o:p></o:p></span></p><p class=3DMs=
oNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><a name=3D"OLE=
_LINK2"></a><a name=3D"OLE_LINK1"></a><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'>Tree/Branch: Poky/Edison<o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'>Commit id: bc885cd8d343ad003391222429=
222526dba175ad</span><span lang=3DEN-US style=3D'font-family:"Arial","sans-=
serif"'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Meta branch: Edison<=
o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'>Commit id: </span><span lang=
=3DEN-US style=3D'font-family:"Arial","sans-serif"'>fd7eee18e38ae45efaa299f=
015aedd4dc3257e6d</span><span lang=3DEN-US style=3D'font-family:"Arial","sa=
ns-serif"'><o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US st=
yle=3D'font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif"=
'>For eMenlow:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
 style=3D'font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US style=3D'font-family:"Arial","sans-ser=
if"'>Tree/Branch: Poky/Edison<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US style=3D'font-family:"Arial","sans-serif"'>Commit id: 5ed59=
ae0f25bf673d514df2371da7e0415b62bb2<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>Meta branch: Edison<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Co=
mmit id: </span><span lang=3DEN-US style=3D'font-family:"Arial","sans-serif=
"'>c3e12aa981e97261093abee05bb0301c35f54c23</span><span lang=3DEN-US style=
=3D'font-family:"Arial","sans-serif"'><o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>For QemuArm/=
QemuMips/QemuPPC/Beagleboard/Routerstationpro/Mpc8315e-rdb/toolchain:<o:p><=
/o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif"'>Tree/Branch: poky/edison<br>Poky Commit: e02d553b45808b7=
88c721c0722379d6b37c0b7d8<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:=
p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span><=
/p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'>Issue summary<o:p></o:p></span></b></p><p cl=
ass=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif"'>--------------------------------------<o:p></o:p></s=
pan></b></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><table cla=
ss=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D895 =
style=3D'width:671.0pt;margin-left:-.9pt;border-collapse:collapse'><tr styl=
e=3D'height:21.0pt'><td width=3D248 nowrap colspan=3D2 valign=3Dbottom styl=
e=3D'width:186.0pt;border:solid windowtext 1.0pt;border-right:solid black 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Component</span></=
b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D536 valign=
=3Dbottom style=3D'width:402.0pt;border:solid windowtext 1.0pt;border-left:=
none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Bug Number</span><=
/b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'><o:p></o:p></span></b></p></td><td width=3D111 nowrap=
 valign=3Dbottom style=3D'width:83.0pt;border:solid windowtext 1.0pt;border=
-left:none;padding:0cm 5.4pt 0cm 5.4pt;height:21.0pt'><p class=3DMsoNormal =
align=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'>Target Milestone<=
/span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'><o:p></o:p></span></b></p></td></tr><tr style=
=3D'height:14.25pt'><td width=3D140 nowrap rowspan=3D7 style=3D'width:104.7=
pt;border:none;border-left:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>System &amp; Core OS</span></b><b><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'><o:p></o:p></span></b></p></td><td width=3D108 nowrap rowspan=3D3 style=
=3D'width:81.3pt;border-top:none;border-left:solid windowtext 1.0pt;border-=
bottom:none;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:black'>System Usage</span></b><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></b></p></td><td width=3D536 nowrap valign=3Dbottom style=3D'widt=
h:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'>Bug 503 - [emenlow] =
system cannot enter S3 standby mode</span><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span=
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
family:"Arial","sans-serif";color:black'>Bug 1082 - [x86_64] No icons shown=
 on X desktop with sato image</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p><=
/td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top=
:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.0 M2<=
/span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:1=
5.0pt'><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>Bug 1174: [zypper/rpm] package instal=
l/removal costs lots of disk space</span><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span>=
</p></td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.2</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:14=
.25pt'><td width=3D108 nowrap rowspan=3D4 style=3D'width:81.3pt;border:soli=
d windowtext 1.0pt;border-bottom:none;padding:0cm 5.4pt 0cm 5.4pt;height:14=
.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'>Other</span></b><b><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p=
></td><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>Bug 310 - [eMenlow] i2c_transfer erro=
r on e-Menlow</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D=
111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:none;border-lef=
t:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>1.1</span><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
><o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D5=
36 nowrap valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>Bug 1188 - [japerforest] I/OAT DMA engine init failed</s=
pan><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'><o:p></o:p></span></p></td><td width=3D111 nowrap valig=
n=3Dbottom style=3D'width:83.0pt;border-top:none;border-left:solid windowte=
xt 1.0pt;border-bottom:none;border-right:solid windowtext 1.0pt;padding:0cm=
 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D=
'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>1.2</span><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></sp=
an></p></td></tr><tr style=3D'height:14.25pt'><td width=3D536 nowrap valign=
=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt=
'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Bug 1258 =
-[crownbay] Xorg eats lots of CPU time after standby</span><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p><=
/span></p></td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt=
;border-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'=
><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>1.1 M4</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D=
'height:15.0pt'><td width=3D536 nowrap valign=3Dbottom style=3D'width:402.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3D=
left style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'>Bug&nbsp;1664&nbsp;-&nbsp;texinfo do_com=
pile fail due to makedoc binary not executable</span><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span>=
</p></td><td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;borde=
r-top:none;border-left:solid windowtext 1.0pt;border-bottom:none;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.2</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:14=
.25pt'><td width=3D248 nowrap colspan=3D2 rowspan=3D4 style=3D'width:186.0p=
t;border-top:solid windowtext 1.0pt;border-left:solid windowtext 1.0pt;bord=
er-bottom:none;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cent=
er'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>Core build system</span></b><b><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p>=
</o:p></span></b></p></td><td width=3D536 nowrap valign=3Dbottom style=3D'w=
idth:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorm=
al align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'>Bug 1529 - [x32] x32 build br=
oken due to kernel.org fetch failure</span><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></p></td><=
td width=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:none=
;border-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>1.1</span><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><t=
d width=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'tex=
t-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'>Bug&nbsp;1538&nbsp;-&nbsp;[multilib]: X window doesn't st=
artup in multilib image randomly</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></p></td><td w=
idth=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:none;bor=
der-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorma=
l align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>1.2</span><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td wi=
dth=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-al=
ign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'>Bug&nbsp;1522&nbsp;-&nbsp;[multilib/ipk] /var/lib/opkg/status=
 changed after the 1st boot</span><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></p></td><td width=
=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:none;border-=
left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>1.2</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td width=
=3D536 nowrap valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:=
left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>Bug 1502 - [multilib] lib64-dpkg is unbuildable for lib64 build</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'><o:p></o:p></span></p></td><td width=3D111 nowrap valign=3Dbottom =
style=3D'width:83.0pt;border-top:none;border-left:solid windowtext 1.0pt;bo=
rder-bottom:none;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:=
left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>1.2</span><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td>=
</tr><tr style=3D'height:15.0pt'><td width=3D248 nowrap colspan=3D2 style=
=3D'width:186.0pt;border:solid windowtext 1.0pt;border-right:solid black 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Power &amp; Perfor=
mance</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p></td><td width=
=3D536 valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'>Power consumption of sugarbay and crownbay are 40.21W and 18.73W respect=
ively.<br>Build time for a sato image on Core i7 machine is 119 minutes. De=
tailed result on <a href=3D"https://wiki.yoctoproject.org/wiki/Performance_=
Test">https://wiki.yoctoproject.org/wiki/Performance_Test</a>.</span><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o=
:p></o:p></span></p></td><td width=3D111 nowrap valign=3Dbottom style=3D'wi=
dth:83.0pt;border-top:none;border-left:solid windowtext 1.0pt;border-bottom=
:none;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span=
 style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1</sp=
an><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:26.2=
5pt'><td width=3D248 nowrap colspan=3D2 style=3D'width:186.0pt;border-top:n=
one;border-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt=
;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>Compliance</span></b><b><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></b></p>=
</td><td width=3D536 valign=3Dbottom style=3D'width:402.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'tex=
t-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'>LTP result: <a href=3D"https://wiki.pokylinux.org/wiki/LT=
P_result">https://wiki.pokylinux.org/wiki/LTP_result</a><br>POSIX result: <=
a href=3D"https://wiki.pokylinux.org/wiki/Posix_result">https://wiki.pokyli=
nux.org/wiki/Posix_result</a></span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif"'><o:p></o:p></span></p></td><td widt=
h=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:none;border=
-left:solid windowtext 1.0pt;border-bottom:none;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-=
family:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></=
span></p></td></tr><tr style=3D'height:26.25pt'><td width=3D248 nowrap cols=
pan=3D2 style=3D'width:186.0pt;border-top:none;border-left:solid windowtext=
 1.0pt;border-bottom:solid windowtext 1.0pt;border-right:solid black 1.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'>Stress</span></b><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'><o:p></o:p></span></b></p></td><td width=3D536 valign=3Dbottom=
 style=3D'width:402.0pt;border:none;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif"'>Both Crashme and Helltest on Jasperforest and=
 both Crashme and LTP on Beagleboard could pass 24 hours stress testing. </=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'><o:p></o:p></span></p></td><td width=3D111 nowrap valign=3Dbottom =
style=3D'width:83.0pt;border:none;border-right:solid windowtext 1.0pt;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft st=
yle=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=
=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td=
></tr><tr style=3D'height:14.25pt'><td width=3D248 nowrap colspan=3D2 rowsp=
an=3D2 style=3D'width:186.0pt;border-top:none;border-left:solid windowtext =
1.0pt;border-bottom:solid black 1.0pt;border-right:solid black 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>HOB</span></b><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></b></p></td><td width=3D536 nowrap valign=3Dbottom=
 style=3D'width:402.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Bug&nbsp;1663&nbsp=
;-&nbsp;[HOB] hob crash when opening customized bb file with Ubuntu 10.10</=
span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'><o:p></o:p></span></p></td><td width=3D111 nowrap valign=3Dbottom =
style=3D'width:83.0pt;border-top:none;border-left:solid windowtext 1.0pt;bo=
rder-bottom:none;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align=
:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>---</span><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td=
></tr><tr style=3D'height:15.0pt'><td width=3D536 valign=3Dbottom style=3D'=
width:402.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:15.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>Bug 1665 - [HOB] deb/ipk build not proceed by showing some pa=
ckages being built</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td wid=
th=3D111 nowrap valign=3Dbottom style=3D'width:83.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:15.0pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>1.2</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td></tr></table><p class=3DMsoNormal><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></=
p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif"'>Distribution test summary:<o:p></o:p></span><=
/b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif"'>--------------------------------------<o=
:p></o:p></span></b></p><table class=3DMsoNormalTable border=3D0 cellspacin=
g=3D0 cellpadding=3D0 width=3D705 style=3D'width:529.0pt;margin-left:-.9pt;=
border-collapse:collapse'><tr style=3D'height:13.5pt'><td width=3D173 nowra=
p valign=3Dbottom style=3D'width:130.0pt;border:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dleft st=
yle=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>Distribution</span></b><b><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'><o:p></o:p></span></b></p></td><td width=3D84 nowrap valign=3Dbot=
tom style=3D'width:63.0pt;border:solid windowtext 1.0pt;border-left:none;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>Host Arch</span></b><b><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'><o:p></o:p></span></b></p></td><td width=3D129 nowrap valign=3Dbot=
tom style=3D'width:97.0pt;border:solid windowtext 1.0pt;border-left:none;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>Target Machine</span></b><b><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'><o:p></o:p></span></b></p></td><td width=3D145 nowrap valign=
=3Dbottom style=3D'width:109.0pt;border:solid windowtext 1.0pt;border-left:=
none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>world build</span></b>=
<b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'><o:p></o:p></span></b></p></td><td width=3D173 nowrap va=
lign=3Dbottom style=3D'width:130.0pt;border:solid windowtext 1.0pt;border-l=
eft:none;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal al=
ign=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:black'>core-sato-sdk build=
</span></b><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'><o:p></o:p></span></b></p></td></tr><tr style=
=3D'height:12.75pt'><td width=3D173 nowrap valign=3Dbottom style=3D'width:1=
30.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm =
5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align=
:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>Fedora 15</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></=
p></td><td width=3D84 nowrap valign=3Dbottom style=3D'width:63.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>x86_64<=
/span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'><o:p></o:p></span></p></td><td width=3D129 nowrap val=
ign=3Dbottom style=3D'width:97.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>qemux86</span><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o=
:p></span></p></td><td width=3D145 nowrap valign=3Dbottom style=3D'width:10=
9.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.=
75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
red'>FAIL(bug 1664)</span><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p></td><td widt=
h=3D173 nowrap valign=3Dbottom style=3D'width:130.0pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal =
align=3Dleft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font=
-family:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>PASS</span><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'><o:p></o:p></span></p></td></tr><tr style=3D'height:12.75pt'=
><td width=3D173 nowrap valign=3Dbottom style=3D'width:130.0pt;border:solid=
 windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:12.75p=
t'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Ubuntu 11.04</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td wid=
th=3D84 nowrap valign=3Dbottom style=3D'width:63.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>x86_64</span><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'><o:p></o:p></span></p></td><td width=3D129 nowrap valign=3Dbottom s=
tyle=3D'width:97.0pt;border-top:none;border-left:none;border-bottom:solid w=
indowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:=
left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>qemuarm</span><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p><=
/td><td width=3D145 nowrap valign=3Dbottom style=3D'width:109.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>FAIL(bug =
1664)</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:red'><o:p></o:p></span></p></td><td width=3D173 nowrap=
 valign=3Dbottom style=3D'width:130.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft s=
tyle=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=
=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>PASS</span><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
><o:p></o:p></span></p></td></tr><tr style=3D'height:12.75pt'><td width=3D1=
73 nowrap valign=3Dbottom style=3D'width:130.0pt;border:solid windowtext 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3D=
MsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Opensuse=
 11.4</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D84 nowra=
p valign=3Dbottom style=3D'width:63.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft s=
tyle=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'>x86_64</span><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p>=
</o:p></span></p></td><td width=3D129 nowrap valign=3Dbottom style=3D'width=
:97.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
2.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>qemuppc</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=
=3D145 nowrap valign=3Dbottom style=3D'width:109.0pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>FAIL(bug 1664)</span><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:red'><o:p></o:p></span></p></td><td width=3D173 nowrap valign=3Dbott=
om style=3D'width:130.0pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-a=
lign:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:b=
lack'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'>PASS</span><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></=
span></p></td></tr><tr style=3D'height:12.75pt'><td width=3D173 nowrap vali=
gn=3Dbottom style=3D'width:130.0pt;border:solid windowtext 1.0pt;border-top=
:none;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal alig=
n=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>Fedora 16 Alpha</span><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'><o:p></o:p></span></p></td><td width=3D84 nowrap valign=3Dbot=
tom style=3D'width:63.0pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-a=
lign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>x86_64</span><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span><=
/p></td><td width=3D129 nowrap valign=3Dbottom style=3D'width:97.0pt;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>qemum=
ips</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D145 nowrap=
 valign=3Dbottom style=3D'width:109.0pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft s=
tyle=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:red'>FAIL(bug1664))</span><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><=
o:p></o:p></span></p></td><td width=3D173 nowrap valign=3Dbottom style=3D'w=
idth:130.0pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:12.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><s=
pan style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<=
/span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>PASS</span><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td=
></tr><tr style=3D'height:12.75pt'><td width=3D173 nowrap valign=3Dbottom s=
tyle=3D'width:130.0pt;border:solid windowtext 1.0pt;border-top:none;padding=
:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>Ubuntu 11.10 Alpha3</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td><td width=3D84 nowrap valign=3Dbottom styl=
e=3D'width:63.0pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:12.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>x86_64</span><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td>=
<td width=3D129 nowrap valign=3Dbottom style=3D'width:97.0pt;border-top:non=
e;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMso=
Normal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>qemuarm</span=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'><o:p></o:p></span></p></td><td width=3D145 nowrap valign=
=3Dbottom style=3D'width:109.0pt;border-top:none;border-left:none;border-bo=
ttom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm=
 5.4pt 0cm 5.4pt;height:12.75pt'><p class=3DMsoNormal align=3Dleft style=3D=
'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:red'>FAIL(bug 1664)</span><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o=
:p></span></p></td><td width=3D173 nowrap valign=3Dbottom style=3D'width:13=
0.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:12.=
75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span sty=
le=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1</span><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'>PASS</span><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td></tr><=
tr style=3D'height:13.5pt'><td width=3D173 nowrap valign=3Dbottom style=3D'=
width:130.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4=
pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=3Dleft style=3D'text=
-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>Opensuse 12.1 M5</span><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></=
o:p></span></p></td><td width=3D84 nowrap valign=3Dbottom style=3D'width:63=
.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5=
pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>x86_64</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D1=
29 nowrap valign=3Dbottom style=3D'width:97.0pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>qemumips</span><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'><o:p></o:p></span></p></td><td width=3D145 nowrap valign=3Dbottom sty=
le=3D'width:109.0pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:13.5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:le=
ft'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:red'>FAIL(bug 1664)</span><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'><o:p></o:p></span></p>=
</td><td width=3D173 nowrap valign=3Dbottom style=3D'width:130.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:13.5pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span style=3D'font-siz=
e:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>PASS</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'><o:p></o:p></span></p></td></tr></table><p clas=
s=3DMsoNormal><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><b><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>V=
erify bug list<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>------=
--------------------------------<o:p></o:p></span></b></p><p class=3DMsoLis=
tParagraph style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 leve=
l1 lfo1'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>1.<span s=
tyle=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></spa=
n></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif"'>bug 1496 - [multilib] lib32 build against qemux86 fa=
iled during do_rootfs <o:p></o:p></span></p><p class=3DMsoListParagraph sty=
le=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if=
 !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'><span style=3D'mso-list:Ignore'>2.<span style=3D'font:7=
.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![en=
dif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'>bug 1497 - [multilib] lib32 build against qemux86-64 failed during=
 do_rootfs <o:p></o:p></span></p><p class=3DMsoListParagraph style=3D'margi=
n-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLi=
sts]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "Times=
 New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>bu=
g 1498 - [multilib] lib64 build against qemux86 failed during do_rootfs <o:=
p></o:p></span></p><p class=3DMsoListParagraph style=3D'margin-left:18.0pt;=
text-indent:-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLists]><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span=
 style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Times New Roman"'>&=
nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>bug 1527 - [mult=
ilib] lib64 build against qemux86-64 failed during do_rootfs<o:p></o:p></sp=
an></p><p class=3DMsoListParagraph style=3D'margin-left:18.0pt;text-indent:=
-18.0pt;mso-list:l0 level1 lfo1'><![if !supportLists]><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'ms=
o-list:Ignore'>5.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&=
nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'>bug 1235-&nbsp;[Emenlow] Run=
ning glxinfo and glxgears commands failed.<o:p></o:p></span></p><p class=3D=
MsoPlainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoP=
lainText><span lang=3DEN-US>Best Regards,<o:p></o:p></span></p><p class=3DM=
soPlainText><span lang=3DEN-US>Jiajun<o:p></o:p></span></p><p class=3DMsoPl=
ainText><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p></div></body></html>=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FAshsmsx501ccrc_--

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FAshsmsx501ccrc_
Content-Type: application/oleobject;
	name="Yocto 1.1 M4 RC4 detail_testreport-fullpass.ods"
Content-Description: Yocto 1.1 M4 RC4 detail_testreport-fullpass.ods
Content-Disposition: attachment;
	filename="Yocto 1.1 M4 RC4 detail_testreport-fullpass.ods"; size=21042;
	creation-date="Sat, 08 Oct 2011 09:36:13 GMT";
	modification-date="Sat, 15 Oct 2011 01:33:15 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAgAACeMTj+FbDmKLgAAAC4AAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2Fz
aXMub3BlbmRvY3VtZW50LnNwcmVhZHNoZWV0UEsDBBQAAAgAACeMTj8AAAAAAAAAAAAAAAAaAAAA
Q29uZmlndXJhdGlvbnMyL3N0YXR1c2Jhci9QSwMEFAAICAgAJ4xOPwAAAAAAAAAAAAAAACcAAABD
b25maWd1cmF0aW9uczIvYWNjZWxlcmF0b3IvY3VycmVudC54bWwDAFBLBwgAAAAAAgAAAAAAAABQ
SwMEFAAACAAAJ4xOPwAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvZmxvYXRlci9QSwME
FAAACAAAJ4xOPwAAAAAAAAAAAAAAABoAAABDb25maWd1cmF0aW9uczIvcG9wdXBtZW51L1BLAwQU
AAAIAAAnjE4/AAAAAAAAAAAAAAAAHAAAAENvbmZpZ3VyYXRpb25zMi9wcm9ncmVzc2Jhci9QSwME
FAAACAAAJ4xOPwAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvbWVudWJhci9QSwMEFAAA
CAAAJ4xOPwAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvdG9vbGJhci9QSwMEFAAACAAA
J4xOPwAAAAAAAAAAAAAAAB8AAABDb25maWd1cmF0aW9uczIvaW1hZ2VzL0JpdG1hcHMvUEsDBBQA
CAgIACeMTj8AAAAAAAAAAAAAAAALAAAAY29udGVudC54bWztneuS20Z6hv/nKrqUypa3tsghwDN2
5ZQsrxIlklflkRLnlwoEekh4cDIOMxrfQn7mPnIHuZvkPtINHobkkBwABDH4Gu/W2paIQzf66SPQ
3/v+5R+/eS6741HsBP7rV1q394px3wpsx5+/fvXl87vO5NU/fv93fwlubhyLG3ZgpR73k44V+In4
LxNX+7GxPPr6VRr5RmDGTmz4psdjI7GMIOT++ipj+2wjS2v5S5w8uLkvz07evjrh35K8F8tzd641
Z/lTzk7evtqOzPu8F8tzRaFuX34T5L34W+x2bgJR6l5oJs5eLr65jn/7+tUiSULj6ur+/r573+8G
0fxKm06nV9nRTYatzXlhGrnZWbZ1xV0uE4uvtK52tT7X44mZN3/y3O0s+ak341HuojET8wnVMOKx
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
ZXM6dGM6b3BlbmRvY3VtZW50OnhtbG5zOm9mZmljZToxLjAiIHhtbG5zOnhsaW5rPSJodHRwOi8v
d3d3LnczLm9yZy8xOTk5L3hsaW5rIiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1l
bnRzLzEuMS8iIHhtbG5zOm1ldGE9InVybjpvYXNpczpuYW1lczp0YzpvcGVuZG9jdW1lbnQ6eG1s
bnM6bWV0YToxLjAiIHhtbG5zOm9vbz0iaHR0cDovL29wZW5vZmZpY2Uub3JnLzIwMDQvb2ZmaWNl
IiB4bWxuczpncmRkbD0iaHR0cDovL3d3dy53My5vcmcvMjAwMy9nL2RhdGEtdmlldyMiIG9mZmlj
ZTp2ZXJzaW9uPSIxLjIiIGdyZGRsOnRyYW5zZm9ybWF0aW9uPSJodHRwOi8vZG9jcy5vYXNpcy1v
cGVuLm9yZy9vZmZpY2UvMS4yL3hzbHQvb2RmMnJkZi54c2wiPjxvZmZpY2U6bWV0YT48bWV0YTpn
ZW5lcmF0b3I+T3Blbk9mZmljZS5vcmcvMy4yJFdpbjMyIE9wZW5PZmZpY2Uub3JnX3Byb2plY3Qv
MzIwbTE4JEJ1aWxkLTk1MDI8L21ldGE6Z2VuZXJhdG9yPjxtZXRhOmluaXRpYWwtY3JlYXRvcj5a
aGFvWWkgPC9tZXRhOmluaXRpYWwtY3JlYXRvcj48bWV0YTpjcmVhdGlvbi1kYXRlPjIwMTEtMDct
MDRUMTQ6NTc6NDFaPC9tZXRhOmNyZWF0aW9uLWRhdGU+PGRjOmRhdGU+MjAxMS0xMC0xNVQwMToz
MzoxNC40MDwvZGM6ZGF0ZT48bWV0YTplZGl0aW5nLWN5Y2xlcz4zMjwvbWV0YTplZGl0aW5nLWN5
Y2xlcz48bWV0YTplZGl0aW5nLWR1cmF0aW9uPlBUNjRINTNNNTNTPC9tZXRhOmVkaXRpbmctZHVy
YXRpb24+PG1ldGE6ZG9jdW1lbnQtc3RhdGlzdGljIG1ldGE6dGFibGUtY291bnQ9IjI0IiBtZXRh
OmNlbGwtY291bnQ9IjI0MDQiIG1ldGE6b2JqZWN0LWNvdW50PSIwIi8+PC9vZmZpY2U6bWV0YT48
L29mZmljZTpkb2N1bWVudC1tZXRhPlBLAwQUAAgICAAnjE4/AAAAAAAAAAAAAAAAGAAAAFRodW1i
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
AwAALk4AAAAA

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A12D88AC9FAshsmsx501ccrc_--
