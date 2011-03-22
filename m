Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 90A604C800BA
	for <poky@pokylinux.org>; Tue, 22 Mar 2011 08:27:27 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 22 Mar 2011 06:27:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.63,224,1299484800"; 
	d="xml'?ods'72,48?png'72,48,150?scan'72,48,150,208,217,48,150,72";
	a="616184164"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 22 Mar 2011 06:27:23 -0700
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 22 Mar 2011 21:27:21 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi;
	Tue, 22 Mar 2011 21:27:20 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Tue, 22 Mar 2011 21:27:17 +0800
Thread-Topic: Partial Fullpass Test Report for Yocto M4 Gold Build 20110318
Thread-Index: AcvolNz1nz5mEN0NQKq10rv8+X9kUw==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A3370F26A@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 22 Mar 2011 10:04:30 -0500
Subject: Partial Fullpass Test Report for Yocto M4 Gold Build 20110318
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
X-List-Received-Date: Tue, 22 Mar 2011 13:27:29 -0000
X-Groupsio-MsgNum: 4861
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_D5AB6E638E5A3E4B8F4406B113A5A19A3370F26Ashsmsx501ccrcor_"

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A3370F26Ashsmsx501ccrcor_
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A3370F26Ashsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A3370F26Ashsmsx501ccrcor_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQogICAgICAgVGhpcyBpcyB0aGUgcGFydGlhbCBmdWxscGFzcyB0ZXN0IHJlcG9y
dCBmb3IgR29sZCBCdWlsZCAyMDExMDMxOC4gUUEgZmluaXNoZWQgbW9zdCBmdW5jdGlvbmFsaXR5
IHRlc3RpbmcgaW4gaW1hZ2VzLiAzIG5ldyBidWdzIGFyZSByZXBvcnRlZCBmb3IgbXVsdGltZWRp
YSBhbmQgcnBtIHF1ZXJ5IHdpdGggcm9vdGxlc3MgWC4gV2UgZm91bmQgdGhlIHBlcmZvcm1hbmNl
IG9mIHZpZGVvIHBsYXlpbmcgaXMgcG9vciB3aXRoIG40NTAgYW5kIGNyb3duYmF5IG5vZW1nZCBp
bWFnZXMuIFJwbSBxdWVyeSB3aXRoIG5vbi1yb290IHVzZXIgY291bGQgbm90IHdvcmsuIFRpbGwg
bm93LCBvbmx5IDEyIG9mIHRvdGFsIDQ3NyBjYXNlcyBhcmUgZmFpbGVkIG9yIGJsb2NrZWQgaW4g
b3VyIHRlc3RpbmcsIHdpdGggdG90YWxseSA5IG9wZW4gYnVncy4NCg0KRm9yIGJ1ZyBmaXhpbmcs
IHRoZXJlIGFyZSAxNCBidWdzIGFyZSB2ZXJpZmllZCBhcyBmaXhlZC4gVGhlIGdvb2QgbmV3cyBp
cyB0aGF0IHdlIGhhdmUgdmVyaWZpZWQgYWxsIHp5cHBlci9ycG0gYnVncyBmaXhlZCBpbiB0aGlz
IGJ1aWxkLCBleGNlcHQgZm9yIG9ubHkgb25lIHp5cHBlciBpc3N1ZSBvbiBxZW11YXJtKGJ1ZyA4
MjcpLiBBbGwgdGhlIGltYWdlcyBhbmQgdG9vbGNoYWluIHRhcmJhbGxzIGFyZSBidWlsdCBvdXQu
IEF1ZGlvL3ZpZGVvIGNvbWUgdG8gd29yayBvbiBibGFja3NhbmQgYWdhaW4uIFRpbGwgbm93LCBi
b3RoIHJlYWwgYW5kIHFlbXUgdGFyZ2V0cyBjb3VsZCB3b3JrIHdlbGwgd2l0aG91dCBjcml0aWNh
bC9tYWpvciBidWdzLiAyRCAmIDNEIGdyYXBoaWNzIGJlbmNobWFyayBvbiBzdWdhcmJheSBzaG93
cyBhIHNpbWlsYXIgc2NvcmUgd2l0aCB0aGUgcmVzdWx0IG9mIEludGVsIEdyYXBoaWNzIDIwMTBR
NCByZWxlYXNlKENoZWNrIHRoZSBhdHRhY2hlZCByZXN1bHQgZm9yIGRldGFpbGVkIHNjb3JlKS4g
Q3Jvd25iYXkgZW1nZCBhbmQgbm9lbWdkIGltYWdlIGNvdWxkIHdvcmsgd2l0aCBvbmx5IDIgbm9u
LWNyaXRpY2FsIGJ1Z3MuIE40NTAgYWxzbyBoYXMgMyBub24tY3JpdGljYWwgYnVncywgd2hpY2gg
aGF2ZSBtaW5vciBpbXBhY3RzLiBKYXNwZXJmb3Jlc3QsIGFzIHdlbGwgYXMgcm91dGVyc3RhdGlv
bnBybyBhbmQgbXBjODMxNWUtcmRiLCBwYXNzIHRoZSB0ZXN0aW5nIHdpdGhvdXQgYW55IGZhaWx1
cmUuDQoNCk5vdGU6IFRoZSBiZWFnbGVib2FyZCBib2FyZCBpcyBicm9rZW4gc28gd2UgY291bGQg
bm90IHBlcmZvcm0gdGVzdGluZyBmb3IgdGhpcyBidWlsZC4gVGVzdGluZyByZXN1bHQgZm9yIG90
aGVyIGNvbXBvbmVudHMsIGxpa2UgZG9jdW1lbnRhdGlvbiwgY29tcGxpYW5jZSwgZXRjLCB3aWxs
IGJlIGNvdmVyZWQgaW4gdGhlIGZpbmFsIGZ1bGxwYXNzIHRlc3RpbmcgcmVwb3J0Lg0KDQoNCg0K
VGVzdCBTdW1tYXJ5DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0K
DQpUZXN0IFJlc3VsdCBTdW1tYXJ5DQoNCg0KQ29tcG9uZW50DQoNClRhcmdldA0KDQpTdGF0dXMN
Cg0KQ29tbWVudHMNCg0KDQpCU1ANCg0KU3VnYXJCYXkNCg0KR09PRA0KDQpFdmVyeXRoaW5nIHJ1
bnMgd2VsbDsgMkQgJiAzRCBncmFwaGljcyBiZW5jaG1hcmsgc2hvd3MgYSBzaW1pbGFyIHNjb3Jl
IHdpdGggUkMyOw0KDQoNCqGhDQoNCkNyb3duQmF5DQoNCkdPT0QNCg0KUzMgZG9lcyBub3Qgd29y
azsgTG93IHBlcmZvcm1hbmNlIHdoZW4gcGxheWluZyB2aWRlbyBvbiBub2VtZ2QgaW1hZ2U7DQoN
Cg0KoaENCg0KSmFzcGVyRm9yZXN0DQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0K
DQqhoQ0KDQpCbGFja3NhbmQNCg0KR09PRA0KDQp4dXNlciBoYXMgbm8gcHJpdmlsZWdlIHRvIHJ1
biBycG0gcXVlcnk7IFMzIGRvZXMgbm90IHdvcms7IExvdyBwZXJmb3JtYW5jZSB3aGVuIHBsYXlp
bmcgdmlkZW87DQoNCg0KoaENCg0KQmVhZ2xlYm9hcmQNCg0KTi9BDQoNCk5vIHRlc3QgYmVjYXVz
ZSB0aGUgYm9hcmQgaXMgYnJva2VuDQoNCg0KoaENCg0KUm91dGVyc3RhdGlvbnBybw0KDQpHT09E
DQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCg0KoaENCg0KTXBjODMxNWUtcmRiDQoNCkdPT0QN
Cg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0KDQpRRU1VDQoNCnFlbXV4ODYNCg0KR09PRA0KDQpF
dmVyeXRoaW5nIHJ1bnMgd2VsbA0KDQoNCqGhDQoNCnFlbXV4ODYtNjQNCg0KR09PRA0KDQpFdmVy
eXRoaW5nIHJ1bnMgd2VsbA0KDQoNCqGhDQoNCnFlbXVhcm0NCg0KR09PRA0KDQp6eXBwZXIgY291
bGQgb25seSBzaG93IHBhcnRpYWwgcGFja2FnZXMgaW5zdGFsbGVkIG9uIHN5c3RlbTsNCg0KDQqh
oQ0KDQpxZW11cHBjDQoNCkdPT0QNCg0KRXZlcnl0aGluZyBydW5zIHdlbGwNCg0KDQqhoQ0KDQpx
ZW11bWlwcw0KDQpHT09EDQoNCkV2ZXJ5dGhpbmcgcnVucyB3ZWxsDQoNCg0KU0RLDQoNCkJ1Z2d5
DQoNCnVuZnMgZG9lcyBub3Qgd29yayB3aXRoIHFlbXVwcGMNCg0KDQpEb2N1bWVudGF0aW9uDQoN
Ck4vQQ0KDQpUZXN0aW5nIGlzIG5vdCBzdGFydGVkIHlldA0KDQoNCkNvbXBsaWFuY2UgVGVzdA0K
DQpOL0ENCg0KVGVzdGluZyBpcyBub3Qgc3RhcnRlZCB5ZXQNCg0KDQpQb2t5DQoNCk4vQQ0KDQpU
ZXN0aW5nIGlzIG5vdCBzdGFydGVkIHlldA0KDQoNClN0cmVzcyBUZXN0DQoNCk4vQQ0KDQpUZXN0
aW5nIGlzIG5vdCBzdGFydGVkIHlldA0KDQoNCg0KDQqhoQ0KDQpDcml0aWNhbCBidWdzLCBtb3Jl
IHRoYW4gNTAlIHRlc3QgY2FzZXMgYXJlIGJsb2NrZWQNCg0KoaENCg0KT25seSBOb3JtYWwsIE1p
bm9yIG9yIEVuaGFuY2VtZW50IGJ1Z3MsIGxlc3MgdGhhbiAxMCUgdGVzdCBjYXNlcyBmYWlsZWQN
Cg0KoaENCg0KTm9ybWFsLCBNYWpvciBhbmQgQ3JpdGljYWwgYnVncywgbW9yZSB0aGFuIDEwJSB0
ZXN0IGNhc2VzIGZhaWxlZA0KDQoNCg0KRGV0YWlsZWQgVGVzdCBSZXN1bHQgZm9yIGVhY2ggY29t
cG9uZW50DQoNCg0KVGFyZ2V0DQoNClRvdGFsIFRDcw0KDQpOb3QgUnVuDQoNClBhc3NlZA0KDQpG
YWlsZWQNCg0KTm90IHRlc3RhYmxlIChCbG9ja2VkKQ0KDQoNCkNyb3duYmF5IGVtZ2QgU2F0by1T
REsNCg0KNTQNCg0KMA0KDQo1MQ0KDQoxIChidWcgODgyKQ0KDQoyIChidWcgODgyKQ0KDQoNCkNy
b3duYmF5IG5vZW1nZCBTYXRvLVNESw0KDQo1MA0KDQowDQoNCjQ3DQoNCjEgKGJ1ZyA4ODIpDQoN
CjIgKGJ1ZyA4ODIpDQoNCg0KU3VnYXJiYXkgU2F0by1TREsNCg0KNTkNCg0KMA0KDQo1OQ0KDQow
DQoNCjANCg0KDQpKYXNwZXJmb3Jlc3QgTFNCLVNESw0KDQozMw0KDQowDQoNCjMzDQoNCjANCg0K
MA0KDQoNCm40NTAgU2F0by1TREsNCg0KNTYNCg0KMA0KDQo1Mg0KDQoyIChidWcgNjA3LCA2MTMp
DQoNCjIgKGJ1ZyA2MTMNCg0KDQpSb3V0ZXJzdGF0aW9ucHJvIFNhdG8tU0RLDQoNCjIwDQoNCjAN
Cg0KMjANCg0KMA0KDQowDQoNCg0KTXBjODMxNWUtcmRiIFNhdG8tU0RLDQoNCjE5DQoNCjANCg0K
MTkNCg0KMA0KDQowDQoNCg0KUWVtdXg4Ni02NCBTYXRvDQoNCjIxDQoNCjANCg0KMjENCg0KMA0K
DQowDQoNCg0KUWVtdXg4Ni02NCBTYXRvLVNESw0KDQoyNA0KDQowDQoNCjI0DQoNCjANCg0KMA0K
DQoNClFlbXV4ODYgU2F0bw0KDQoyMQ0KDQowDQoNCjIxDQoNCjANCg0KMA0KDQoNClFlbXV4ODYg
U2F0by1TREsNCg0KMjQNCg0KMA0KDQoyNA0KDQowDQoNCjANCg0KDQpRZW11bWlwcyBTYXRvDQoN
CjE1DQoNCjANCg0KMTUNCg0KMA0KDQowDQoNCg0KUWVtdW1pcHMgU2F0by1TREsNCg0KMTgNCg0K
MA0KDQoxNg0KDQowDQoNCjANCg0KDQpRZW11cHBjIFNhdG8NCg0KMTINCg0KMA0KDQoxMg0KDQow
DQoNCjANCg0KDQpRZW11cHBjIFNhdG8tU0RLDQoNCjE1DQoNCjANCg0KMTQNCg0KMSAoYnVnIDc4
MCkNCg0KMA0KDQoNClFlbXVhcm0gU2F0bw0KDQoxNQ0KDQowDQoNCjE1DQoNCjANCg0KMA0KDQoN
ClFlbXVhcm0gU2F0by1TREsNCg0KMTgNCg0KMA0KDQoxOA0KDQowDQoNCjANCg0KDQpTREsNCg0K
Mw0KDQowDQoNCjINCg0KMSAoYnVnIDQxNCkNCg0KMA0KDQoNClRvdGFsDQoNCjQ3Nw0KDQowDQoN
CjQ2Mw0KDQo2DQoNCjYNCg0KDQoNCg0KKiBZb3UgY2FuIGNoZWNrIHRoZSBkZXRhaWxlZCB0ZXN0
IHJlc3VsdCBpbiBhdHRhY2htZW50IGZvciBlYWNoIHRhcmdldC4NCg0KKiogVGhlIGZhaWxlZC9i
bG9ja2VkIGNhc2UgbnVtYmVyIGlzIGxpc3RlZCB3aXRoIGZhaWxlZCBjYXNlc6GvIGJ1ZyBudW1i
ZXIuDQoNCg0KDQpJbWFnZXMNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LQ0KDQpJbWFnZTogaHR0cDovL2F1dG9idWlsZGVyLnBva3lsaW51eC5vcmcvbmlnaHRseS8yMDEx
MDMxOC0zLw0KDQpUcmVlL0JyYW5jaDogUG9reS9CZXJuYXJkDQoNCkNvbW1pdDogODJhZjhiOWZi
NmQ2ZDE0Mzk5NDNmZDE1YjhhNzVjMGU2NjNlNGE0NQ0KDQoNCg0KSXNzdWUgU3VtbWFyeQ0KLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNClp5cHBlci9SUE06DQoNCjEu
ICAgICBbenlwcGVyXSB6eXBwZXIgY2FuIG5vdCBzZWFyY2ggYW55IHBhY2thZ2VzIGFmdGVyIGlu
c3RhbGxlZCBwYWNrYWdlIGJ5IHJwbSBvbiBxZW11YXJtDQoNCmh0dHA6Ly9idWd6aWxsYS5wb2t5
bGludXgub3JnL3Nob3dfYnVnLmNnaT9pZD04MjcNCg0KDQoNCkJTUDoNCg0KMS4gICAgIE5ldyEg
W2JsYWNrc2FuZF0gaXQgc2hvdyBwb29yIHBlcmZvcm1hbmNlIHdpdGggdmlkZW8gcGxheWVyDQoN
Cmh0dHA6Ly9idWd6aWxsYS5wb2t5bGludXgub3JnL3Nob3dfYnVnLmNnaT9pZD05MjENCg0KMi4g
ICAgIE5ldyEgW2Nyb3duYmF5LW5vZW1nZF0gdmlkZW8gcGxheWVyIGhhcyBwb29yIHBlcmZvcm1h
bmNlIHdoZW4gcGxheWluZyB2aWRlbyBmaWxlDQoNCmh0dHA6Ly9idWd6aWxsYS5wb2t5bGludXgu
b3JnL3Nob3dfYnVnLmNnaT9pZD05MjANCg0KMy4gICAgIE5ldyEgInJwbSAtcWEiIGNhbiBub3Qg
cnVuIGZvciBub24tcm9vdCB1c2VyOiBQZXJtaXNzaW9uIGRlbmllZA0KDQpodHRwOi8vYnVnemls
bGEucG9reWxpbnV4Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTIyDQoNCjQuICAgICBbQmxhY2tzYW5k
XXN5c3RlbSBjYW5ub3QgZW50ZXIgUzMgc3RhbmRieSBtb2RlDQoNCmh0dHA6Ly9idWd6aWxsYS5w
b2t5bGludXgub3JnL3Nob3dfYnVnLmNnaT9pZD02MTMNCg0KNS4gICAgIFtjcm93bmJheV0gc3lz
dGVtIGNvdWxkIG5vdCBlbnRlciBpbnRvIFMzIHdpdGggY3Jvd25iYXkNCg0KaHR0cDovL2J1Z3pp
bGxhLnBva3lsaW51eC5vcmcvc2hvd19idWcuY2dpP2lkPTg4Mg0KDQo2LiAgICAgW1N1Z2FyYmF5
XSBHRlggM0QgZ2FtZSB0ZXN0IGZhaWwgdG8gcnVuIHdpdGggc3VnYXJiYXkgQlNQIGltYWdlIGR1
ZSB0byBsaWJzZGwuc28NCg0KaHR0cDovL2J1Z3ppbGxhLnBva3lsaW51eC5vcmcvc2hvd19idWcu
Y2dpP2lkPTg4Mw0KDQo3LiAgICAgW0JsYWNrc2FuZF0gU29tZSBlcnJvciBpbmZvcm1hdGlvbiBw
cm9tcHRlZCB3aGVuIHJ1biBkbWVzZyBjb21tYW5kDQoNCmh0dHA6Ly9idWd6aWxsYS5wb2t5bGlu
dXgub3JnL3Nob3dfYnVnLmNnaT9pZD02MDcNCg0KDQoNCk90aGVyczoNCg0KMS4gICAgIGdjYyBz
ZWdmYXVsdCBvbiBxZW11cHBjIChuaWdodGx5IGJ1aWxkIDIwMTEwMjI2LTEpDQoNCmh0dHA6Ly9i
dWd6aWxsYS5wb2t5bGludXgub3JnL3Nob3dfYnVnLmNnaT9pZD03ODANCg0KDQoNClZlcmlmaWVk
IEZpeGVkIEJ1Z3M6DQoNCjEuICAgICBbY3Jvd25iYXldIGVtZ2QgY3Jvd25iYXkgYnVpbGQgZmFp
bCBvbiB4c2VydmVyLXhmODYtZW1nZCBmZXRjaA0KDQpodHRwOi8vYnVnemlsbGEucG9reWxpbnV4
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9ODg1DQoNCjIuICAgICBbbjQ1MF1CbGFja3NhbmQga2V5Ym9h
cmQvbW91c2UgZG8gbm90IHdvcmsgb24gWCB3aW5kb3cNCg0KaHR0cDovL2J1Z3ppbGxhLnBva3ls
aW51eC5vcmcvc2hvd19idWcuY2dpP2lkPTg2OQ0KDQozLiAgICAgbWF0Y2hib3gtcGFuZWwgc2Vn
ZmF1bHQgYWZ0ZXIgWCBzdGFydHVwDQoNCmh0dHA6Ly9idWd6aWxsYS5wb2t5bGludXgub3JnL3No
b3dfYnVnLmNnaT9pZD03MzgNCg0KNC4gICAgIFthdXRvYnVpbGRlcl0gaTY4NiB0b29sY2hhaW4g
bm90IGNvcGllZCB0byBzaGFyaW5nIGZvbGRlcg0KDQpodHRwOi8vYnVnemlsbGEucG9reWxpbnV4
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9ODg0DQoNCjUuICAgICBhdWRpbyBtaXhlciBvbiBCbGFja1Nh
bmQgaXMgbXV0ZWQgb24gYm9vdA0KDQpodHRwOi8vYnVnemlsbGEucG9reWxpbnV4Lm9yZy9zaG93
X2J1Zy5jZ2k/aWQ9NDM5DQoNCjYuICAgICBbYmxhY2tzYW5kXSBubyBzb3VuZCBldmVuIGFsbCBv
cHRpb25zIGluIGFtaXhlciBlbmFibGVkDQoNCmh0dHA6Ly9idWd6aWxsYS5wb2t5bGludXgub3Jn
L3Nob3dfYnVnLmNnaT9pZD03OTgNCg0KNy4gICAgIFtibGFja3NhbmRdIGNvbmZpZ3VyZWQgYXVk
aW9zaW5rIGlzIG5vdCB3b3JraW5nIGZvciB2aWRlbyBwbGF5ZXINCg0KaHR0cDovL2J1Z3ppbGxh
LnBva3lsaW51eC5vcmcvc2hvd19idWcuY2dpP2lkPTc5OQ0KDQo4LiAgICAgW0Nvbm5tYW5dIHh1
c2VyIG11c3QgYmUgZ3JhbnRlZCBwcml2aWxlZ2UgdG8gc3RhcnQgY29ubm1hbi1hcHBsZXQNCg0K
aHR0cDovL2J1Z3ppbGxhLnBva3lsaW51eC5vcmcvc2hvd19idWcuY2dpP2lkPTc3OQ0KDQo5LiAg
ICAgVGhlIGJvdHRvbSBpY29ucyBvbiBBcHBsaWNhdGlvbnMgYW5kIEFsbCBzY3JlZW4gYXJlIGN1
dC1vZmYgaW4gcWVtdS4NCg0KaHR0cDovL2J1Z3ppbGxhLnBva3lsaW51eC5vcmcvc2hvd19idWcu
Y2dpP2lkPTY1OA0KDQoxMC4gIFt6eXBwZXJdIHp5cHBlciBpbnN0YWxsIGRvZXMgbm90IHdvcmsg
b24gcWVtdXg4Ni9hdG9tLXBjDQoNCmh0dHA6Ly9idWd6aWxsYS5wb2t5bGludXgub3JnL3Nob3df
YnVnLmNnaT9pZD04MDMNCg0KMTEuICBbenlwcGVyXSB6eXBwZXIgbG9zZSBwYWNrYWdlIGluZm9y
bWF0aW9uIGFmdGVyIHp5cHBlci9ycG0gaW5zdGFsbC9yZW1vdmUNCg0KaHR0cDovL2J1Z3ppbGxh
LnBva3lsaW51eC5vcmcvc2hvd19idWcuY2dpP2lkPTgwNA0KDQoxMi4gIFt6eXBwZXJdIGluc3Rh
bGxhdGlvbiBmYWlsdXJlIG9uIHBwYyAobmlnaHRseSBidWlsZCAyMDExMDMwNS00KQ0KDQpodHRw
Oi8vYnVnemlsbGEucG9reWxpbnV4Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9ODQxDQoNCjEzLiAgW3p5
cHBlcl0genlwcGVyIGluc3RhbGwgZmFpbGVkIG9uIHJvdXRlcnN0YXRpb25wcm8gc2RrIGltYWdl
DQoNCmh0dHA6Ly9idWd6aWxsYS5wb2t5bGludXgub3JnL3Nob3dfYnVnLmNnaT9pZD04NDUNCg0K
DQoNCkJlc3QgUmVnYXJkcywNCg0KSmlhanVuDQo=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A3370F26Ashsmsx501ccrcor_
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
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal-compose;
	font-family:"Arial","sans-serif";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:64568002;
	mso-list-type:hybrid;
	mso-list-template-ids:-744948306 -738313138 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
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
@list l1
	{mso-list-id:189103186;
	mso-list-type:hybrid;
	mso-list-template-ids:1850528476 -1531018400 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2
	{mso-list-id:1687753733;
	mso-list-type:hybrid;
	mso-list-template-ids:1608696960 -1499415482 67698713 67698715 67698703 67=
698713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l2:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l2:level9
	{mso-level-tab-stop:324.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3
	{mso-list-id:2108889433;
	mso-list-type:hybrid;
	mso-list-template-ids:-261745680 965791710 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l3:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l3:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l3:level9
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
n1><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif"'>Hi all,<o:p></o:p></span></p><p class=3DMsoP=
lainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the partial fullp=
ass test report for Gold Build 20110318. QA finished most functionality tes=
ting in images. 3 new bugs are reported for multimedia and rpm query with r=
ootless X. We found the performance of video playing is poor with n450 and =
crownbay noemgd images. Rpm query with non-root user could not work. Till n=
ow, only 12 of total 477 cases are failed or blocked in our testing, with t=
otally 9 open bugs.<o:p></o:p></span></p><p class=3DMsoPlainText style=3D't=
ext-indent:21.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif"'>For bug fixing, there are 14 bugs are verified as fi=
xed. The good news is that we have verified all zypper/rpm bugs fixed in th=
is build, except for only one zypper issue on qemuarm(bug 827). All the ima=
ges and toolchain tarballs are built out. Audio/video come to work on black=
sand again. Till now, both real and qemu targets could work well without cr=
itical/major bugs. 2D &amp; 3D graphics benchmark on sugarbay shows a simil=
ar score with the result of Intel Graphics 2010Q4 release(Check the attache=
d result for detailed score). Crownbay emgd and noemgd image could work wit=
h only 2 non-critical bugs. N450 also has 3 non-critical bugs, which have m=
inor impacts. Jasperforest, as well as routerstationpro and mpc8315e-rdb, p=
ass the testing without any failure.<o:p></o:p></span></p><p class=3DMsoPla=
inText style=3D'text-indent:21.0pt'><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif"'>Note: The beagleboard board is brok=
en so we could not perform testing for this build. Testing result for other=
 components, like documentation, compliance, etc, will be covered in the fi=
nal fullpass testing report.<o:p></o:p></span></p><p class=3DMsoPlainText><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Test Summary<=
o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>--------------------=
-------------------<o:p></o:p></span></b></p><table class=3DMsoNormalTable =
border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D659 style=3D'width:494.0=
pt;margin-left:-.75pt;border-collapse:collapse'><tr><td width=3D81 style=3D=
'width:60.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D82 colspan=3D3 sty=
le=3D'width:61.85pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D152 colspan=
=3D5 style=3D'width:113.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D85 s=
tyle=3D'width:63.9pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D172 colspan=
=3D2 style=3D'width:129.05pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D86 c=
olspan=3D2 style=3D'width:64.7pt;padding:0cm 0cm 0cm 0cm'></td></tr><tr><td=
 width=3D81 style=3D'width:60.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=
=3D18 style=3D'width:13.7pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D64 co=
lspan=3D2 style=3D'width:48.15pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D=
72 colspan=3D2 style=3D'width:53.85pt;padding:0cm 0cm 0cm 0cm'></td><td wid=
th=3D63 colspan=3D2 style=3D'width:47.15pt;padding:0cm 0cm 0cm 0cm'></td><t=
d width=3D17 style=3D'width:12.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=
=3D85 style=3D'width:63.9pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D172 c=
olspan=3D2 style=3D'width:129.05pt;padding:0cm 0cm 0cm 0cm'></td><td width=
=3D8 style=3D'width:5.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D79 sty=
le=3D'width:58.95pt;padding:0cm 0cm 0cm 0cm'></td></tr><tr style=3D'height:=
14.25pt'><td width=3D527 nowrap colspan=3D11 style=3D'width:395.3pt;border:=
solid windowtext 1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>Test Result Summary<o:p></o:p></span></b></p=
></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132 colspan=
=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><t=
d width=3D114 nowrap colspan=3D3 style=3D'width:85.8pt;border:solid windowt=
ext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>C=
omponent<o:p></o:p></span></b></p></td><td width=3D113 nowrap colspan=3D2 s=
tyle=3D'width:3.0cm;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:black'>Target<o:p></o:p></span></b></p></td><td width=3D57=
 nowrap colspan=3D2 style=3D'width:42.55pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dlef=
t style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>Status<o:p></o:p></span></b>=
</p></td><td width=3D243 colspan=3D4 style=3D'width:181.9pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Comments<o:=
p></o:p></span></b></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0c=
m' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=
=3D'height:43.5pt'><td width=3D114 nowrap colspan=3D3 style=3D'width:85.8pt=
;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:43.5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'>=
<b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>BSP<o:p></o:p></span></b></p></td><td width=3D113 nowrap=
 colspan=3D2 style=3D'width:3.0cm;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:43.5pt'><p class=3DMsoNormal align=3Dleft style=3D=
'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>SugarBay<o:p></o:p></span></p></td><td wi=
dth=3D57 nowrap colspan=3D2 style=3D'width:42.55pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:43.5pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<=
o:p></o:p></span></p></td><td width=3D243 colspan=3D4 style=3D'width:181.9p=
t;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:43.5pt'=
><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>Everything runs well; 2D &amp; 3D graphics benchmark shows a similar scor=
e with RC2;<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm =
0cm 0cm 0cm' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr=
><tr style=3D'height:34.5pt'><td width=3D114 nowrap colspan=3D3 style=3D'wi=
dth:85.8pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt =
0cm 5.4pt;height:34.5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-al=
ign:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:bl=
ack'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D11=
3 nowrap colspan=3D2 style=3D'width:3.0cm;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:34.5pt'><p class=3DMsoNormal align=3Dleft =
style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>CrownBay<o:p></o:p></span></p></t=
d><td width=3D57 nowrap colspan=3D2 style=3D'width:42.55pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:34.5pt=
'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>GOOD<o:p></o:p></span></p></td><td width=3D243 colspan=3D4 style=3D'widt=
h:181.9pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:34.5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>S3 does not work; Low performance when playing video on noemgd im=
age;<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm=
 0cm' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr st=
yle=3D'height:14.25pt'><td width=3D114 nowrap colspan=3D3 style=3D'width:85=
.8pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=
=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D113 now=
rap colspan=3D2 style=3D'width:3.0cm;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>JasperForest<o:p></o:p></span></p></t=
d><td width=3D57 nowrap colspan=3D2 style=3D'width:42.55pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14.25p=
t'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>GOOD<o:p></o:p></span></p></td><td width=3D243 colspan=3D4 style=3D'w=
idth:181.9pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>Everything runs well<o:p></o:p></span></p></td><td style=3D'b=
order:none;padding:0cm 0cm 0cm 0cm' width=3D132 colspan=3D3><p class=3D'Mso=
Normal'>&nbsp;</td></tr><tr style=3D'height:45.75pt'><td width=3D114 nowrap=
 colspan=3D3 style=3D'width:85.8pt;border:solid windowtext 1.0pt;border-top=
:none;padding:0cm 5.4pt 0cm 5.4pt;height:45.75pt'><p class=3DMsoNormal alig=
n=3Dleft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-fam=
ily:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></spa=
n></p></td><td width=3D113 nowrap colspan=3D2 style=3D'width:3.0cm;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:45.75pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Blacksa=
nd<o:p></o:p></span></p></td><td width=3D57 nowrap colspan=3D2 style=3D'wid=
th:42.55pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.=
4pt 0cm 5.4pt;height:45.75pt'><p class=3DMsoNormal align=3Dleft style=3D'te=
xt-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>GOOD<o:p></o:p></span></p></td><td width=3D2=
43 colspan=3D4 style=3D'width:181.9pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:45.75pt'><p class=3DMsoNormal align=3Dleft sty=
le=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>xuser has no privilege to run rpm qu=
ery; S3 does not work; Low performance when playing video; <o:p></o:p></spa=
n></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132 co=
lspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:25.5pt=
'><td width=3D114 nowrap colspan=3D3 style=3D'width:85.8pt;border:solid win=
dowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:25.5pt'><p=
 class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span style=3D'fo=
nt-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'><o:p></o:p></span></p></td><td width=3D113 nowrap colspan=3D2 style=
=3D'width:3.0cm;border-top:none;border-left:none;border-bottom:solid window=
text 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;=
height:25.5pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Beagleboard<o:p></o:p></span></p></td><td width=3D57 nowrap=
 colspan=3D2 style=3D'width:42.55pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:25.5pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>N/A<o:p></o:p></span></p></td><td widt=
h=3D243 colspan=3D4 style=3D'width:181.9pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:25.5pt'><p class=3DMsoNormal align=3Dleft=
 style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>No test because the board is bro=
ken <o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm=
 0cm' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr st=
yle=3D'height:14.25pt'><td width=3D114 nowrap colspan=3D3 style=3D'width:85=
.8pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=
=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'><o:p></o:p></span></p></td><td width=3D113 now=
rap colspan=3D2 style=3D'width:3.0cm;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>Routerstationpro<o:p></o:p></span></p=
></td><td width=3D57 nowrap colspan=3D2 style=3D'width:42.55pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14=
.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'>GOOD<o:p></o:p></span></p></td><td width=3D243 colspan=3D4 style=3D=
'width:181.9pt;border-top:none;border-left:none;border-bottom:solid windowt=
ext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Everything runs well<o:p></o:p></span></p></td><td style=3D=
'border:none;padding:0cm 0cm 0cm 0cm' width=3D132 colspan=3D3><p class=3D'M=
soNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D114 nowr=
ap colspan=3D3 style=3D'width:85.8pt;border:solid windowtext 1.0pt;border-t=
op:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dleft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-f=
amily:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></s=
pan></p></td><td width=3D113 nowrap colspan=3D2 style=3D'width:3.0cm;border=
-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-righ=
t:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Mpc83=
15e-rdb<o:p></o:p></span></p></td><td width=3D57 nowrap colspan=3D2 style=
=3D'width:42.55pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span></p></td><td wi=
dth=3D243 colspan=3D4 style=3D'width:181.9pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dl=
eft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>Everything runs well<o:p></o:=
p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=
=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'heig=
ht:14.25pt'><td width=3D114 nowrap colspan=3D3 style=3D'width:85.8pt;border=
:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>QEMU<o:p></o:p></span></b></p></td><td width=3D113 nowrap cols=
pan=3D2 style=3D'width:3.0cm;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'tex=
t-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>qemux86<o:p></o:p></span></p></td><td width=
=3D57 nowrap colspan=3D2 style=3D'width:42.55pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:=
p></o:p></span></p></td><td width=3D243 colspan=3D4 style=3D'width:181.9pt;=
border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>=
<p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>Everything runs well<o:p></o:p></span></p></td><td style=3D'border:none;pa=
dding:0cm 0cm 0cm 0cm' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp=
;</td></tr><tr style=3D'height:14.25pt'><td width=3D114 nowrap colspan=3D3 =
style=3D'width:85.8pt;border:solid windowtext 1.0pt;border-top:none;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=
=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'><o:p></o:p></span></p></td><t=
d width=3D113 nowrap colspan=3D2 style=3D'width:3.0cm;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'>qemux86-64<o:p></o:p=
></span></p></td><td width=3D57 nowrap colspan=3D2 style=3D'width:42.55pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4p=
t;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>GOOD<o:p></o:p></span></p></td><td width=3D243 colspan=
=3D4 style=3D'width:181.9pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text=
-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:black'>Everything runs well<o:p></o:p></span></p></td=
><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132 colspan=3D3>=
<p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:31.5pt'><td widt=
h=3D114 nowrap colspan=3D3 style=3D'width:85.8pt;border:solid windowtext 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:31.5pt'><p class=3DM=
soNormal align=3Dleft style=3D'text-align:left'><span style=3D'font-size:10=
.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:=
p></o:p></span></p></td><td width=3D113 nowrap colspan=3D2 style=3D'width:3=
.0cm;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:31.5=
pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>qemuarm<o:p></o:p></span></p></td><td width=3D57 nowrap colspan=3D2 s=
tyle=3D'width:42.55pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:31.5pt'><p class=3DMsoNormal align=3Dleft s=
tyle=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span></p></td><td=
 width=3D243 colspan=3D4 style=3D'width:181.9pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:31.5pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>zypper could only show pa=
rtial packages installed on system;<o:p></o:p></span></p></td><td style=3D'=
border:none;padding:0cm 0cm 0cm 0cm' width=3D132 colspan=3D3><p class=3D'Ms=
oNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D114 nowra=
p colspan=3D3 style=3D'width:85.8pt;border:solid windowtext 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal ali=
gn=3Dleft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-fa=
mily:=CB=CE=CC=E5;color:black'>=A1=A1</span><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'><o:p></o:p></sp=
an></p></td><td width=3D113 nowrap colspan=3D2 style=3D'width:3.0cm;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>qemupp=
c<o:p></o:p></span></p></td><td width=3D57 nowrap colspan=3D2 style=3D'widt=
h:42.55pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'tex=
t-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>GOOD<o:p></o:p></span></p></td><td width=3D24=
3 colspan=3D4 style=3D'width:181.9pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>Everything runs well<o:p></o:p></span=
></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132 col=
span=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt=
'><td width=3D114 nowrap colspan=3D3 style=3D'width:85.8pt;border:solid win=
dowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span style=3D'f=
ont-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1</span><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'><o:p></o:p></span></p></td><td width=3D113 nowrap colspan=3D2 style=
=3D'width:3.0cm;border-top:none;border-left:none;border-bottom:solid window=
text 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;=
height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'>qemumips<o:p></o:p></span></p></td><td width=3D57 nowrap c=
olspan=3D2 style=3D'width:42.55pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;background=
:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span=
></p></td><td width=3D243 colspan=3D4 style=3D'width:181.9pt;border-top:non=
e;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMso=
Normal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Everything ru=
ns well<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm =
0cm 0cm' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr=
 style=3D'height:26.25pt'><td width=3D114 nowrap colspan=3D3 style=3D'width=
:85.8pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm=
 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-alig=
n:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>SDK<o:p></o:p></span></b></p></td><td width=3D11=
3 nowrap colspan=3D2 style=3D'width:3.0cm;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'></td><td width=3D57 nowrap colspa=
n=3D2 style=3D'width:42.55pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:#FFC=
000;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>Buggy<o:p></o:p></span></=
p></td><td width=3D243 colspan=3D4 style=3D'width:181.9pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNor=
mal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>unfs does not wo=
rk with qemuppc<o:p></o:p></span></p></td><td style=3D'border:none;padding:=
0cm 0cm 0cm 0cm' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td>=
</tr><tr style=3D'height:14.25pt'><td width=3D114 nowrap colspan=3D3 style=
=3D'width:85.8pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm =
5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'=
text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'>Documentation<o:p></o:p></span></b></p>=
</td><td width=3D113 nowrap colspan=3D2 style=3D'width:3.0cm;border-top:non=
e;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid =
windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'></td><td width=
=3D57 nowrap colspan=3D2 style=3D'width:42.55pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>N/A<o:p></o:p></span></p>=
</td><td width=3D243 colspan=3D4 style=3D'width:181.9pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorma=
l align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Testing is not sta=
rted yet<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm=
 0cm 0cm' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><t=
r style=3D'height:14.25pt'><td width=3D114 nowrap colspan=3D3 style=3D'widt=
h:85.8pt;border-top:none;border-left:solid windowtext 1.0pt;border-bottom:s=
olid windowtext 1.0pt;border-right:none;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>Compliance Test<o:p></o:p></span></b></p></td><td width=3D113 =
nowrap colspan=3D2 style=3D'width:3.0cm;border:solid windowtext 1.0pt;borde=
r-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'></td><td width=3D57 =
nowrap colspan=3D2 style=3D'width:42.55pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft=
 style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>N/A<o:p></o:p></span></p></td><t=
d width=3D243 colspan=3D4 style=3D'width:181.9pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>Testing is not started ye=
t<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0c=
m' width=3D132 colspan=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=
=3D'height:14.25pt'><td width=3D114 nowrap colspan=3D3 style=3D'width:85.8p=
t;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left=
'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Poky<o:p></o:p></span></b></p></td><td width=3D113 now=
rap colspan=3D2 style=3D'width:3.0cm;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'></td><td width=3D57 nowrap colspan=3D2=
 style=3D'width:42.55pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-ali=
gn:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:black'>N/A<o:p></o:p></span></p></td><td width=3D243 cols=
pan=3D4 style=3D'width:181.9pt;border-top:none;border-left:none;border-bott=
om:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D't=
ext-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'>Testing is not started yet<o:p></o:p></span=
></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132 col=
span=3D3><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt=
'><td width=3D114 nowrap colspan=3D3 style=3D'width:85.8pt;border-top:none;=
border-left:solid windowtext 1.0pt;border-bottom:solid windowtext 1.0pt;bor=
der-right:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNo=
rmal align=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Stress Test<=
o:p></o:p></span></b></p></td><td width=3D113 nowrap colspan=3D2 style=3D'w=
idth:3.0cm;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt =
0cm 5.4pt;height:14.25pt'></td><td width=3D57 nowrap colspan=3D2 style=3D'w=
idth:42.55pt;border-top:none;border-left:none;border-bottom:solid windowtex=
t 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;hei=
ght:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>N/A<o:p></o:p></span></p></td><td width=3D243 colspan=3D4 sty=
le=3D'width:181.9pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Testing is not started yet<o:p></o:p></span></p></td><=
td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D132 colspan=3D3><p=
 class=3D'MsoNormal'>&nbsp;</td></tr><tr height=3D0><td width=3D81 style=3D=
'border:none'></td><td width=3D18 style=3D'border:none'></td><td width=3D15=
 style=3D'border:none'></td><td width=3D49 style=3D'border:none'></td><td w=
idth=3D64 style=3D'border:none'></td><td width=3D7 style=3D'border:none'></=
td><td width=3D49 style=3D'border:none'></td><td width=3D14 style=3D'border=
:none'></td><td width=3D17 style=3D'border:none'></td><td width=3D85 style=
=3D'border:none'></td><td width=3D127 style=3D'border:none'></td><td width=
=3D45 style=3D'border:none'></td><td width=3D8 style=3D'border:none'></td><=
td width=3D79 style=3D'border:none'></td></tr></table><p class=3DMsoNormal>=
<b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'><o:p>&nbsp;</o:p></span></b></p><table class=3DMsoNormalTable border=
=3D0 cellspacing=3D0 cellpadding=3D0 width=3D515 style=3D'width:386.15pt;ma=
rgin-left:-.75pt;border-collapse:collapse'><tr style=3D'height:14.25pt'><td=
 width=3D73 nowrap style=3D'width:55.0pt;background:red;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;colo=
r:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p></td><td wid=
th=3D442 nowrap style=3D'width:331.15pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>Critical bugs, more than 50% test cases are blocked<o:p></o:p></s=
pan></p></td></tr><tr style=3D'height:14.25pt'><td width=3D73 nowrap style=
=3D'width:55.0pt;background:#9BBB59;padding:0cm 5.4pt 0cm 5.4pt;height:14.2=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span=
 lang=3DEN-US><o:p></o:p></span></span></p></td><td width=3D442 nowrap styl=
e=3D'width:331.15pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Only Nor=
mal, Minor or Enhancement bugs, less than 10% test cases failed<o:p></o:p><=
/span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D73 nowrap styl=
e=3D'width:55.0pt;background:#FFC000;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<spa=
n lang=3DEN-US><o:p></o:p></span></span></p></td><td width=3D442 nowrap sty=
le=3D'width:331.15pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Normal,=
 Major and Critical bugs, more than 10% test cases failed<o:p></o:p></span>=
</p></td></tr></table><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span><=
/b></p><table class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=
=3D0 width=3D674 style=3D'width:505.25pt;margin-left:-.75pt;border-collapse=
:collapse'><tr><td width=3D72 style=3D'width:54.0pt;padding:0cm 0cm 0cm 0cm=
'></td><td width=3D121 style=3D'width:91.0pt;padding:0cm 0cm 0cm 0cm'></td>=
<td width=3D72 colspan=3D2 style=3D'width:54.0pt;padding:0cm 0cm 0cm 0cm'><=
/td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;padding:0cm 0cm 0cm 0c=
m'></td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;padding:0cm 0cm 0c=
m 0cm'></td><td width=3D130 colspan=3D2 style=3D'width:97.75pt;padding:0cm =
0cm 0cm 0cm'></td><td width=3D3 colspan=3D2 style=3D'width:2.25pt;padding:0=
cm 0cm 0cm 0cm'></td><td width=3D131 colspan=3D2 style=3D'width:98.25pt;pad=
ding:0cm 0cm 0cm 0cm'></td></tr><tr style=3D'height:14.25pt'><td width=3D61=
4 nowrap colspan=3D13 style=3D'width:460.3pt;border:solid windowtext 1.0pt;=
border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'>Detailed Test Result for each component<o:p></o:p></span></b></p></=
td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D=
'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:39.0pt'><td width=3D223 now=
rap colspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Target<o:p></o=
:p></span></b></p></td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Total TCs</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span></p></t=
d><td width=3D72 colspan=3D2 style=3D'width:54.0pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:black'>Not Run<o:p></o:p=
></span></b></p></td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p cla=
ss=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>Passed</span></b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span></p></td><td w=
idth=3D103 colspan=3D2 style=3D'width:77.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:1=
0.0pt;font-family:"Arial","sans-serif";color:black'>Failed</span></b><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'> <b><o:p></o:p></b></span></p></td><td width=3D72 colspan=3D2 sty=
le=3D'width:54.3pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>Not testable (Blocked)</span></b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
 <b><o:p></o:p></b></span></p></td><td style=3D'border:none;padding:0cm 0cm=
 0cm 0cm' width=3D60><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'he=
ight:14.25pt'><td width=3D223 nowrap colspan=3D3 style=3D'width:167.0pt;bor=
der:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'>Crownbay emgd Sato-SDK<o:p></o:p></span></b></p></td><t=
d width=3D72 colspan=3D2 style=3D'width:54.0pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>54<o:p></o:p></span><=
/p></td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;border-top:none;bo=
rder-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wind=
owtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorm=
al align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p><=
/span></p></td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>51<o=
:p></o:p></span></p></td><td width=3D103 colspan=3D2 style=3D'width:77.0pt;=
border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;borde=
r-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>1 (bug 882)<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 style=
=3D'width:54.3pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>2 (bug 882)<o:p></o:p></span></p></td><td style=3D'bord=
er:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D'MsoNormal'>&nbsp;</=
td></tr><tr style=3D'height:14.25pt'><td width=3D223 nowrap colspan=3D3 sty=
le=3D'width:167.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0=
cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>Crownbay noemgd Sato-SDK<o:p></o=
:p></span></b></p></td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p =
class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black=
'>50<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 style=3D'width:54=
.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.2=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>0<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 style=3D'w=
idth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:#00B050'>47<o:p></o:p></span></p></td><td width=3D103 colspan=3D2=
 style=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:solid=
 windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:red'>1 (bug 882)<o:p></o:p></span></p></td><td width=
=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'>2 (bug 882)<o:p></o:p></span></p=
></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=
=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D223=
 nowrap colspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;bo=
rder-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Sugarbay=
 Sato-SDK<o:p></o:p></span></b></p></td><td width=3D72 colspan=3D2 style=3D=
'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windowte=
xt 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>59<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 =
style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 colsp=
an=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:#00B050'>59<o:p></o:p></span></p></td><td width=
=3D103 colspan=3D2 style=3D'width:77.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td=
 width=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></t=
d><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D'=
MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D223 now=
rap colspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Jasperforest =
LSB-SDK<o:p></o:p></span></b></p></td><td width=3D72 colspan=3D2 style=3D'w=
idth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:black'>33<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 st=
yle=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 colspan=
=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:#00B050'>33<o:p></o:p></span></p></td><td width=3D=
103 colspan=3D2 style=3D'width:77.0pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td wi=
dth=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><=
td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D'Mso=
Normal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D223 nowrap=
 colspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;border-to=
p:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>n450 Sato-SDK<o:=
p></o:p></span></b></p></td><td width=3D72 colspan=3D2 style=3D'width:54.0p=
t;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'>56<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 style=3D'wid=
th:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'>0<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:#00B050'>52<o:p></o:p></span></p></td><td width=3D103 colspa=
n=3D2 style=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4p=
t 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:red'>2 (bug 607, 613)<o:p></o:p></span></p></td><=
td width=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>2 (bug 613<o:p></o:p></=
span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60>=
<p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td wid=
th=3D223 colspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;b=
order-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Routerst=
ationpro Sato-SDK<o:p></o:p></span></b></p></td><td width=3D72 colspan=3D2 =
style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-ali=
gn:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>20<o:p></o:p></span></p></td><td width=3D72 cols=
pan=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D=
72 colspan=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:#00B050'>20<o:p></o:p></span></p></td><t=
d width=3D103 colspan=3D2 style=3D'width:77.0pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p>=
</td><td width=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span=
></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p c=
lass=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:16.5pt'><td width=3D=
223 colspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;border=
-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:16.5pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Mpc8315e-rdb S=
ato-SDK<o:p></o:p></span></b></p></td><td width=3D72 colspan=3D2 style=3D'w=
idth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:16.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>19<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 sty=
le=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:16.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:c=
enter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 colspan=
=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:16.5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:#00B050'>19<o:p></o:p></span></p></td><td width=3D1=
03 colspan=3D2 style=3D'width:77.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:16.5pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td widt=
h=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:16.5pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td =
style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D'MsoNor=
mal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D223 nowrap co=
lspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;border-top:n=
one;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86-64 Sato<o:=
p></o:p></span></b></p></td><td width=3D72 nowrap colspan=3D2 style=3D'widt=
h:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>21<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 valig=
n=3Dtop style=3D'width:54.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D=
72 colspan=3D2 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>21<o:p></o:p></spa=
n></p></td><td width=3D103 nowrap colspan=3D2 style=3D'width:77.0pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:=
p></o:p></span></p></td><td width=3D72 colspan=3D2 style=3D'width:54.3pt;bo=
rder-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-=
right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p=
 class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'=
>0<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0=
cm' width=3D60><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:1=
4.25pt'><td width=3D223 nowrap colspan=3D3 style=3D'width:167.0pt;border:so=
lid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>Qemux86-64 Sato-SDK<o:p></o:p></span></b></p></td><td width=
=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>24<o:p></o:p></span><=
/p></td><td width=3D72 colspan=3D2 valign=3Dtop style=3D'width:54.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
0<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 valign=3Dtop style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:#00B050'>24<o:p></o:p></span></p></td><td width=3D103 nowrap=
 colspan=3D2 style=3D'width:77.0pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td width=
=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td =
style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D'MsoNor=
mal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D223 nowrap co=
lspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;border-top:n=
one;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86 Sato<o:p><=
/o:p></span></b></p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:5=
4.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'>21<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 valign=
=3Dtop style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D7=
2 colspan=3D2 valign=3Dtop style=3D'width:54.0pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>21<o:p></o:p></span=
></p></td><td width=3D103 nowrap colspan=3D2 style=3D'width:77.0pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td><td width=3D72 colspan=3D2 style=3D'width:54.3pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p =
class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>=
0<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0c=
m' width=3D60><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14=
.25pt'><td width=3D223 nowrap colspan=3D3 style=3D'width:167.0pt;border:sol=
id windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.2=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>Qemux86 Sato-SDK<o:p></o:p></span></b></p></td><td width=3D72 =
nowrap colspan=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>24<o:p></o:p></span></p></td>=
<td width=3D72 colspan=3D2 valign=3Dtop style=3D'width:54.0pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></=
o:p></span></p></td><td width=3D72 colspan=3D2 valign=3Dtop style=3D'width:=
54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0p=
t;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14=
.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";c=
olor:#00B050'>24<o:p></o:p></span></p></td><td width=3D103 nowrap colspan=
=3D2 style=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td width=3D72 co=
lspan=3D2 style=3D'width:54.3pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td style=
=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D'MsoNormal'>=
&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D223 nowrap colspan=
=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;border-top:none;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>Qemumips Sato<o:p></o:p>=
</span></b></p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:54.0pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>15<o:p></o:p></span></p></td><td width=3D72 nowrap colspan=3D2 style=
=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 nowrap col=
span=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bott=
om:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:#00B050'>15<o:p></o:p></span></p></td><td widt=
h=3D103 nowrap colspan=3D2 style=3D'width:77.0pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p>=
</td><td width=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span=
></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p c=
lass=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=
=3D223 nowrap colspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qem=
umips Sato-SDK<o:p></o:p></span></b></p></td><td width=3D72 nowrap colspan=
=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'>18<o:p></o:p></span></p></td><td width=3D72=
 nowrap colspan=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pa=
dding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcent=
er style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td>=
<td width=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>16<o:p></o:p=
></span></p></td><td width=3D103 nowrap colspan=3D2 style=3D'width:77.0pt;b=
order-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border=
-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>0<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 style=3D'width:5=
4.3pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'>0<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0=
cm 0cm 0cm' width=3D60><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'=
height:14.25pt'><td width=3D223 nowrap colspan=3D3 style=3D'width:167.0pt;b=
order:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;he=
ight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cente=
r'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:black'>Qemuppc Sato<o:p></o:p></span></b></p></td><td width=
=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>12<o:p></o:p></span><=
/p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p>=
</o:p></span></p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:54.0=
pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bo=
rder-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25p=
t'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:#00B050'>12<o:p></o:p></span></p></td><td width=3D103 nowrap colspan=3D2 s=
tyle=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:solid w=
indowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5=
.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-alig=
n:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:red'>0<o:p></o:p></span></p></td><td width=3D72 colspan=
=3D2 style=3D'width:54.3pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td style=3D'bord=
er:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D'MsoNormal'>&nbsp;</=
td></tr><tr style=3D'height:14.25pt'><td width=3D223 nowrap colspan=3D3 sty=
le=3D'width:167.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0=
cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter styl=
e=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>Qemuppc Sato-SDK<o:p></o:p></spa=
n></b></p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>15<o:p></o:p></span></p></td><td width=3D72 nowrap colspan=3D2 style=3D'wi=
dth:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>0<o:p></o:p></span></p></td><td width=3D72 nowrap colspan=
=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:#00B050'>14<o:p></o:p></span></p></td><td width=3D=
103 nowrap colspan=3D2 style=3D'width:77.0pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:red'>1 (bug 780)<o:p></o:p></spa=
n></p></td><td width=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:=
p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=
=3D60><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><=
td width=3D223 nowrap colspan=3D3 style=3D'width:167.0pt;border:solid windo=
wtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p =
class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Qemuarm Sato<o:p></o:p></span></b></p></td><td width=3D72 nowrap cols=
pan=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-botto=
m:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.=
4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'>15<o:p></o:p></span></p></td><td width=
=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;border-top:none;border-left:=
none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0=
pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></=
p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>15<o:=
p></o:p></span></p></td><td width=3D103 nowrap colspan=3D2 style=3D'width:7=
7.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:red'>0<o:p></o:p></span></p></td><td width=3D72 colspan=3D2 style=3D'wi=
dth:54.3pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:red'>0<o:p></o:p></span></p></td><td style=3D'border:none;padding:=
0cm 0cm 0cm 0cm' width=3D60><p class=3D'MsoNormal'>&nbsp;</td></tr><tr styl=
e=3D'height:14.25pt'><td width=3D223 nowrap colspan=3D3 style=3D'width:167.=
0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>Qemuarm Sato-SDK<o:p></o:p></span></b></p></td><=
td width=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>18<o:p></o:p></=
span></p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
0<o:p></o:p></span></p></td><td width=3D72 nowrap colspan=3D2 style=3D'widt=
h:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:#00B050'>18<o:p></o:p></span></p></td><td width=3D103 nowrap colspan=
=3D2 style=3D'width:77.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td width=3D72 co=
lspan=3D2 style=3D'width:54.3pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td><td style=
=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p class=3D'MsoNormal'>=
&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D223 nowrap colspan=
=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;border-top:none;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>SDK<o:p></o:p></span></b=
></p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:54.0pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>3<o=
:p></o:p></span></p></td><td width=3D72 nowrap colspan=3D2 style=3D'width:5=
4.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt=
;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'>0<o:p></o:p></span></p></td><td width=3D72 nowrap colspan=3D2 st=
yle=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:#00B050'>2<o:p></o:p></span></p></td><td width=3D103 nowr=
ap colspan=3D2 style=3D'width:77.0pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter st=
yle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:red'>1 (bug 414)<o:p></o:p></span></p></=
td><td width=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span><=
/p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D60><p cla=
ss=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D2=
23 nowrap colspan=3D3 style=3D'width:167.0pt;border:solid windowtext 1.0pt;=
border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Total<o=
:p></o:p></span></b></p></td><td width=3D72 nowrap colspan=3D2 style=3D'wid=
th:54.0pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
";color:black'>477<o:p></o:p></span></p></td><td width=3D72 nowrap colspan=
=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;border-bottom:s=
olid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt=
 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D72 =
nowrap colspan=3D2 style=3D'width:54.0pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>463<o:p></o:p></span></p></td=
><td width=3D103 nowrap colspan=3D2 style=3D'width:77.0pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>6<o:p></o:p></=
span></p></td><td width=3D72 colspan=3D2 style=3D'width:54.3pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>6<o:p></o=
:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=
=3D60><p class=3D'MsoNormal'>&nbsp;</td></tr><tr height=3D0><td width=3D72 =
style=3D'border:none'></td><td width=3D121 style=3D'border:none'></td><td w=
idth=3D29 style=3D'border:none'></td><td width=3D43 style=3D'border:none'><=
/td><td width=3D29 style=3D'border:none'></td><td width=3D43 style=3D'borde=
r:none'></td><td width=3D29 style=3D'border:none'></td><td width=3D43 style=
=3D'border:none'></td><td width=3D29 style=3D'border:none'></td><td width=
=3D101 style=3D'border:none'></td><td width=3D2 style=3D'border:none'></td>=
<td width=3D1 style=3D'border:none'></td><td width=3D71 style=3D'border:non=
e'></td><td width=3D60 style=3D'border:none'></td></tr></table><p class=3DM=
soPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif"'>* You can check the detailed test result in attachment for =
each target.<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>** The failed=
/blocked case number is listed with failed cases=A1=AF bug number.<o:p></o:=
p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p cla=
ss=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'>Images<o:p></o:p></span></b></p><p class=3DMsoNorm=
al><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>---------------------------------------<o:p></o:p></span></b></p>=
<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>Image: <a href=3D"http://autobuilder.pokylinux.=
org/nightly/20110318-3/">http://autobuilder.pokylinux.org/nightly/20110318-=
3/</a><o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Tree/Branch: Poky/B=
ernard<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Commit: 82af8b9fb6d=
6d1439943fd15b8a75c0e663e4a45<o:p></o:p></span></p><p class=3DMsoPlainText>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Issue Summar=
y<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>--------------------=
-------------------<o:p></o:p></span></b></p><p class=3DMsoPlainText><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Zy=
pper/RPM:<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left=
:18.0pt;text-indent:-18.0pt;mso-list:l3 level1 lfo2'><![if !supportLists]><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New R=
oman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[zyppe=
r] zypper can not search any packages after installed package by rpm on qem=
uarm<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0=
pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D827">htt=
p://bugzilla.pokylinux.org/show_bug.cgi?id=3D827</a><o:p></o:p></span></p><=
p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainT=
ext><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif"'>BSP:<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-l=
eft:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![if !supportLists=
]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times Ne=
w Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>New! =
[blacksand] it show poor performance with video player<o:p></o:p></span></p=
><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http:/=
/bugzilla.pokylinux.org/show_bug.cgi?id=3D921">http://bugzilla.pokylinux.or=
g/show_bug.cgi?id=3D921</a><o:p></o:p></span></p><p class=3DMsoPlainText st=
yle=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![i=
f !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif"'><span style=3D'mso-list:Ignore'>2.<span style=3D'font:=
7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![e=
ndif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif"'>New! [crownbay-noemgd] video player has poor performance when pla=
ying video file<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margi=
n-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D920">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D920</a><o:p></o:p><=
/span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-=
18.0pt;mso-list:l1 level1 lfo4'><![if !supportLists]><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso=
-list:Ignore'>3.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&n=
bsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'>New! &quot;rpm -qa&quot; can =
not run for non-root user: Permission denied<o:p></o:p></span></p><p class=
=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla=
.pokylinux.org/show_bug.cgi?id=3D922">http://bugzilla.pokylinux.org/show_bu=
g.cgi?id=3D922</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'ma=
rgin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![if !suppor=
tLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif"'><span style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Ti=
mes New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
>[Blacksand]system cannot enter S3 standby mode<o:p></o:p></span></p><p cla=
ss=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzil=
la.pokylinux.org/show_bug.cgi?id=3D613">http://bugzilla.pokylinux.org/show_=
bug.cgi?id=3D613</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'=
margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![if !supp=
ortLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'><span style=3D'mso-list:Ignore'>5.<span style=3D'font:7.0pt "=
Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'>[crownbay] system could not enter into S3 with crownbay<o:p></o:p></span=
></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"ht=
tp://bugzilla.pokylinux.org/show_bug.cgi?id=3D882">http://bugzilla.pokylinu=
x.org/show_bug.cgi?id=3D882</a><o:p></o:p></span></p><p class=3DMsoPlainTex=
t style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'>=
<![if !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>6.<span style=3D'f=
ont:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span>=
<![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'>[Sugarbay] GFX 3D game test fail to run with sugarbay BSP ima=
ge due to libsdl.so<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'm=
argin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cg=
i?id=3D883">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D883</a><o:p></o=
:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-inde=
nt:-18.0pt;mso-list:l1 level1 lfo4'><![if !supportLists]><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D=
'mso-list:Ignore'>7.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbs=
p;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif"'>[Blacksand] Some error in=
formation prompted when run dmesg command<o:p></o:p></span></p><p class=3DM=
soPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif"'>http://bugzilla.pokylinux.org/=
show_bug.cgi?id=3D607<o:p></o:p></span></p><p class=3DMsoPlainText><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p=
>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif"'>Others:<o:p></o:p></spa=
n></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0=
pt;mso-list:l2 level1 lfo6'><![if !supportLists]><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-l=
ist:Ignore'>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbs=
p;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif"'>gcc segfault on qemuppc (nightl=
y build 20110226-1)<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'm=
argin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cg=
i?id=3D780">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D780</a><o:p></o=
:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p cl=
ass=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif"'>Verified Fixed Bugs:<o:p></o:p></span></b></p><p =
class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-li=
st:l0 level1 lfo8'><![if !supportLists]><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'=
>1.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </=
span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif"'>[crownbay] emgd crownbay build fail on xse=
rver-xf86-emgd fetch<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'=
margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.c=
gi?id=3D885">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D885</a><o:p></=
o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-ind=
ent:-18.0pt;mso-list:l0 level1 lfo8'><![if !supportLists]><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=
=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&=
nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[n450]Blacksand keyb=
oard/mouse do not work on X window<o:p></o:p></span></p><p class=3DMsoPlain=
Text style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.=
org/show_bug.cgi?id=3D869">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D=
869</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:1=
8.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !supportLists]><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'=
><span style=3D'mso-list:Ignore'>3.<span style=3D'font:7.0pt "Times New Rom=
an"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>matchbox-p=
anel segfault after X startup<o:p></o:p></span></p><p class=3DMsoPlainText =
style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/s=
how_bug.cgi?id=3D738">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D738</=
a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt=
;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !supportLists]><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><spa=
n style=3D'mso-list:Ignore'>4.<span style=3D'font:7.0pt "Times New Roman"'>=
&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[autobuilder] i=
686 toolchain not copied to sharing folder<o:p></o:p></span></p><p class=3D=
MsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.po=
kylinux.org/show_bug.cgi?id=3D884">http://bugzilla.pokylinux.org/show_bug.c=
gi?id=3D884</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margi=
n-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !supportLi=
sts]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'><span style=3D'mso-list:Ignore'>5.<span style=3D'font:7.0pt "Times=
 New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>au=
dio mixer on BlackSand is muted on boot<o:p></o:p></span></p><p class=3DMso=
PlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokyl=
inux.org/show_bug.cgi?id=3D439">http://bugzilla.pokylinux.org/show_bug.cgi?=
id=3D439</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-l=
eft:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !supportLists=
]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'><span style=3D'mso-list:Ignore'>6.<span style=3D'font:7.0pt "Times Ne=
w Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[blac=
ksand] no sound even all options in amixer enabled<o:p></o:p></span></p><p =
class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bu=
gzilla.pokylinux.org/show_bug.cgi?id=3D798">http://bugzilla.pokylinux.org/s=
how_bug.cgi?id=3D798</a><o:p></o:p></span></p><p class=3DMsoPlainText style=
=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !=
supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'><span style=3D'mso-list:Ignore'>7.<span style=3D'font:7.0=
pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endi=
f]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>[blacksand] configured audiosink is not working for video player<o:p=
></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>=
<a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D799">http://bugz=
illa.pokylinux.org/show_bug.cgi?id=3D799</a><o:p></o:p></span></p><p class=
=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0=
 level1 lfo8'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>8.<s=
pan style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span>=
</span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>[Connman] xuser must be granted privilege to st=
art connman-applet<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'ma=
rgin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi=
?id=3D779">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D779</a><o:p></o:=
p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;text-inden=
t:-18.0pt;mso-list:l0 level1 lfo8'><![if !supportLists]><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'=
mso-list:Ignore'>9.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp=
;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif"'>The bottom icons on Applic=
ations and All screen are cut-off in qemu.<o:p></o:p></span></p><p class=3D=
MsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.po=
kylinux.org/show_bug.cgi?id=3D658">http://bugzilla.pokylinux.org/show_bug.c=
gi?id=3D658</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margi=
n-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !supportLi=
sts]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'><span style=3D'mso-list:Ignore'>10.<span style=3D'font:7.0pt "Time=
s New Roman"'>&nbsp; </span></span></span><![endif]><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[zypper] zypper ins=
tall does not work on qemux86/atom-pc<o:p></o:p></span></p><p class=3DMsoPl=
ainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylin=
ux.org/show_bug.cgi?id=3D803">http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D803</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-lef=
t:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !supportLists]>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'><span style=3D'mso-list:Ignore'>11.<span style=3D'font:7.0pt "Times New=
 Roman"'>&nbsp; </span></span></span><![endif]><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif"'>[zypper] zypper lose pac=
kage information after zypper/rpm install/remove<o:p></o:p></span></p><p cl=
ass=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bugzi=
lla.pokylinux.org/show_bug.cgi?id=3D804">http://bugzilla.pokylinux.org/show=
_bug.cgi?id=3D804</a><o:p></o:p></span></p><p class=3DMsoPlainText style=3D=
'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !sup=
portLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif"'><span style=3D'mso-list:Ignore'>12.<span style=3D'font:7.0pt=
 "Times New Roman"'>&nbsp; </span></span></span><![endif]><span lang=3DEN-U=
S style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[zypper] inst=
allation failure on ppc (nightly build 20110305-4)<o:p></o:p></span></p><p =
class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bu=
gzilla.pokylinux.org/show_bug.cgi?id=3D841">http://bugzilla.pokylinux.org/s=
how_bug.cgi?id=3D841</a><o:p></o:p></span></p><p class=3DMsoPlainText style=
=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo8'><![if !=
supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'><span style=3D'mso-list:Ignore'>13.<span style=3D'font:7.=
0pt "Times New Roman"'>&nbsp; </span></span></span><![endif]><span lang=3DE=
N-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>[zypper] z=
ypper install failed on routerstationpro sdk image<o:p></o:p></span></p><p =
class=3DMsoPlainText style=3D'margin-left:18.0pt'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><a href=3D"http://bu=
gzilla.pokylinux.org/show_bug.cgi?id=3D845">http://bugzilla.pokylinux.org/s=
how_bug.cgi?id=3D845</a><o:p></o:p></span></p><p class=3DMsoPlainText><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><=
o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Best Regards,<o:p></=
o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif"'>Jiajun<o:p></o:p></span></p></di=
v></body></html>=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A3370F26Ashsmsx501ccrcor_--

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A3370F26Ashsmsx501ccrcor_
Content-Type: application/oleobject;
	name="M4-Gold_20110318_detail_testreport_fullpass.ods"
Content-Description: M4-Gold_20110318_detail_testreport_fullpass.ods
Content-Disposition: attachment;
	filename="M4-Gold_20110318_detail_testreport_fullpass.ods"; size=31185;
	creation-date="Mon, 21 Mar 2011 22:45:36 GMT";
	modification-date="Tue, 22 Mar 2011 21:15:00 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAgAAOBpdj6FbDmKLgAAAC4AAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2Fz
aXMub3BlbmRvY3VtZW50LnNwcmVhZHNoZWV0UEsDBBQAAAgAAOBpdj4AAAAAAAAAAAAAAAAaAAAA
Q29uZmlndXJhdGlvbnMyL3N0YXR1c2Jhci9QSwMEFAAICAgA4Gl2PgAAAAAAAAAAAAAAACcAAABD
b25maWd1cmF0aW9uczIvYWNjZWxlcmF0b3IvY3VycmVudC54bWwDAFBLBwgAAAAAAgAAAAAAAABQ
SwMEFAAACAAA4Gl2PgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvZmxvYXRlci9QSwME
FAAACAAA4Gl2PgAAAAAAAAAAAAAAABoAAABDb25maWd1cmF0aW9uczIvcG9wdXBtZW51L1BLAwQU
AAAIAADgaXY+AAAAAAAAAAAAAAAAHAAAAENvbmZpZ3VyYXRpb25zMi9wcm9ncmVzc2Jhci9QSwME
FAAACAAA4Gl2PgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvbWVudWJhci9QSwMEFAAA
CAAA4Gl2PgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvdG9vbGJhci9QSwMEFAAACAAA
4Gl2PgAAAAAAAAAAAAAAAB8AAABDb25maWd1cmF0aW9uczIvaW1hZ2VzL0JpdG1hcHMvUEsDBBQA
CAgIAOBpdj4AAAAAAAAAAAAAAAALAAAAY29udGVudC54bWztfeuS4zaW5v99CkR22JEOWxLvpOiu
mimnw92OdvXUdpVnPNHhyIVISGInb8WLVNk/5gX2577HvsG+ze57LEDqTjKTpCiKFI877GyRBHDw
fQcHIHhwzh//5YtjoxUJQstz39zxY+4OEdfwTMtdvLn79dNPI+3uX97+tz9687llEN30jNghbjQy
PDeifxEt7YZ6evfNXRy4uodDK9Rd7JBQjwzd84m7LaUfPq0nbaVXwujZLl08efiwdES+RGULs2eP
yuJZ+ZaThw9LmwFely3MnqWgHhafe2ULfwnt0dyjqDs+jqwTKb7Ylvv05m4ZRb4+mazX6/FaHHvB
YsJPp9NJcncnsLF7zo8DO3nKNCbEJqyxcMKP+cn2WYdEuKx87NlDkdzYmZGgNDQ4whlW/YCE9BHa
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
iTRe4tOlxcgwtNFYYy8WZn9//4/fj8b0P9NMJWHE85dKJjTVwDRmhjUbjXLBqyC0LePZcKXoRUK+
tJtfXxcJk2tHwp9eHfHZZQfZsZ/XU9H8/1BLBwjOPRzQxQwAALqVAABQSwMEFAAACAAA4Gl2PhVW
vAvpAwAA6QMAAAgAAABtZXRhLnhtbDw/eG1sIHZlcnNpb249IjEuMCIgZW5jb2Rpbmc9IlVURi04
Ij8+CjxvZmZpY2U6ZG9jdW1lbnQtbWV0YSB4bWxuczpvZmZpY2U9InVybjpvYXNpczpuYW1lczp0
YzpvcGVuZG9jdW1lbnQ6eG1sbnM6b2ZmaWNlOjEuMCIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cu
dzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMv
MS4xLyIgeG1sbnM6bWV0YT0idXJuOm9hc2lzOm5hbWVzOnRjOm9wZW5kb2N1bWVudDp4bWxuczpt
ZXRhOjEuMCIgeG1sbnM6b29vPSJodHRwOi8vb3Blbm9mZmljZS5vcmcvMjAwNC9vZmZpY2UiIHht
bG5zOmdyZGRsPSJodHRwOi8vd3d3LnczLm9yZy8yMDAzL2cvZGF0YS12aWV3IyIgb2ZmaWNlOnZl
cnNpb249IjEuMiIgZ3JkZGw6dHJhbnNmb3JtYXRpb249Imh0dHA6Ly9kb2NzLm9hc2lzLW9wZW4u
b3JnL29mZmljZS8xLjIveHNsdC9vZGYycmRmLnhzbCI+PG9mZmljZTptZXRhPjxtZXRhOmNyZWF0
aW9uLWRhdGU+MjAxMS0wMy0wMlQxMzoxMzoxNi44MjwvbWV0YTpjcmVhdGlvbi1kYXRlPjxkYzp0
aXRsZT5UZXN0TGluazwvZGM6dGl0bGU+PGRjOmRhdGU+MjAxMS0wMy0yMlQyMToxNTowMC40NDwv
ZGM6ZGF0ZT48bWV0YTplZGl0aW5nLWR1cmF0aW9uPlBUMzhIMzZNMjhTPC9tZXRhOmVkaXRpbmct
ZHVyYXRpb24+PG1ldGE6ZWRpdGluZy1jeWNsZXM+NDc8L21ldGE6ZWRpdGluZy1jeWNsZXM+PG1l
dGE6Z2VuZXJhdG9yPk9wZW5PZmZpY2Uub3JnLzMuMiRXaW4zMiBPcGVuT2ZmaWNlLm9yZ19wcm9q
ZWN0LzMyMG0xOCRCdWlsZC05NTAyPC9tZXRhOmdlbmVyYXRvcj48bWV0YTpwcmludC1kYXRlPjIw
MTEtMDMtMTZUMTM6MzU6NTYuNTg8L21ldGE6cHJpbnQtZGF0ZT48bWV0YTpkb2N1bWVudC1zdGF0
aXN0aWMgbWV0YTp0YWJsZS1jb3VudD0iMTgiIG1ldGE6Y2VsbC1jb3VudD0iMTUxNyIgbWV0YTpv
YmplY3QtY291bnQ9IjAiLz48L29mZmljZTptZXRhPjwvb2ZmaWNlOmRvY3VtZW50LW1ldGE+UEsD
BBQACAgIAOBpdj4AAAAAAAAAAAAAAAAYAAAAVGh1bWJuYWlscy90aHVtYm5haWwucG5nxXplVFTh
u+/AEEMPIR1DgzTSPTTSKJ1DN0ijNANIdwlIiDRICIhIDSEg3UgIkpLSDWfwnvU/5368n+6XWXv2
2vPuvZ/3+dWzJlpLQwkPmxIbAADgqSjL6wAAKMhDwCkIFfl5Y+0WAwBAClTkoS/9cvfzxFMq1Ei+
J+r+ImXipW/i5bVBMbA96ELgiUSrfoluQCmfD8/+iMMrmMQvxNep8PfsBuXSIo3iu9TDihlm4c1p
aElh8PvJhw1/fLa0yuvDZjyZwqAXcyhaGjjigEEHGKaMKNcegK00ggaw8bkWWJBL6gNIm0Tgh3gY
/f+6aBw/iaV6Gf7QMrf1SquRbkEpKIcFq8ej42RzjW5oU/vGDlex8D37T5QwkVGlHOvZRI5Pv70a
jorsP5tdBr4axnxV1eF6EbW0pJkVIytp3qsE8ZC+wMjnNf3UGt4FjwNlPwiSe11cKR++IOeTqNv/
MepOLXPH90RcBqObM7/hh19HVsAVbUsXz8zpTLDODdqqpVjEKufBoRDFkju5X+3oVvqoBtsUh6pX
iJdolhopfVvep28zIYvzFzKHx7HOy6yzFx14FGAWYouLu15LvqtbNPLIWkpq8eyOayZgX9P0T7PX
oTKFZrpFwLFZwL0J3fBJwIjUAFeXRGKcdLnlERG4TqFp40Lamh/7TGJVgO3/taxnnjSdl4Rn6Z1U
bbuWbefi2iRzC8309ysHbypWg68++F1bXb6wzQ/3nSRIANyL/RBXfY0VtVB8eyaqTg/aJqgbLQWK
QlebGvfnpGtxfkvUnstPj93d/7o1rqPrnZQC3lzcJ6+NeodAYvpd3gbHdRdP76jPzl9uB3YV7SYq
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
zXUAAAAA

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A3370F26Ashsmsx501ccrcor_--
