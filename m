Return-Path: <jiajun.xu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id B69714C805A8
	for <poky@pokylinux.org>; Mon, 18 Apr 2011 08:29:01 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Apr 2011 06:29:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,232,1301900400"; 
	d="xml'?ods'72,48?png'72,48,150?scan'72,48,150,208,217,72,150,48";
	a="630490198"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga002.jf.intel.com with ESMTP; 18 Apr 2011 06:28:58 -0700
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 18 Apr 2011 21:28:56 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Mon, 18 Apr 2011 21:28:56 +0800
From: "Xu, Jiajun" <jiajun.xu@intel.com>
To: "poky@pokylinux.org" <poky@pokylinux.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Mon, 18 Apr 2011 21:28:53 +0800
Thread-Topic: Weekly Test Report for Yocto 20110412 Build
Thread-Index: Acv9zI+0/teNm9FpQVuh4ueohK/32w==
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A507AA144@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 18 Apr 2011 08:42:55 -0500
Subject: Weekly Test Report for Yocto 20110412 Build
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
X-List-Received-Date: Mon, 18 Apr 2011 13:29:03 -0000
X-Groupsio-MsgNum: 5373
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_004_D5AB6E638E5A3E4B8F4406B113A5A19A507AA144shsmsx501ccrcor_"

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A507AA144shsmsx501ccrcor_
Content-Type: multipart/alternative;
	boundary="_000_D5AB6E638E5A3E4B8F4406B113A5A19A507AA144shsmsx501ccrcor_"

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A507AA144shsmsx501ccrcor_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQogICAgICAgVGhpcyBpcyB0aGUgd2Vla2x5IHRlc3QgcmVwb3J0IGZvciBZb2N0
byAyMDExMDQxMiBidWlsZC4gVGhlcmUgYXJlIDIgbmV3IEJMT0NLIGlzc3VlcyBmb3IgQlNQIHRl
c3RpbmcsIHRoYXQgYWxsIG1ldGEtaW50ZWwgQlNQIGJ1aWxkIGZhaWxlZCBvbiBhdXRvYnVpbGRl
ciwgcmVwb3J0ZWQgYXMgYnVnIDk3NiBhbmQgOTc4LiBGb3IgenlwcGVyLCB0aGVyZSBpcyBvbmUg
bmV3IGlzc3VlIHdpdGggobAuYWxsobEgcGFja2FnZXMgd2hlbiB1c2luZyB6eXBwZXIgaW5zdGFs
bC4NCg0KICAgICAgIEZvciBidWcgZml4aW5nLCB0aGUgZ2NjIHNlZ2ZhdWx0IGlzc3VlIG9uIHFl
bXVwcGMgaXMgdmVyaWZpZWQgYXMgZml4ZWQgYnkgTml0aW4uDQoNCg0KDQpUZXN0IFN1bW1hcnkN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQoNCg0KDQoNClRlc3Qg
UmVzdWx0IFN1bW1hcnkNCg0KDQpDb21wb25lbnQNCg0KVGFyZ2V0DQoNClN0YXR1cw0KDQpDb21t
ZW50cw0KDQoNCkJTUA0KDQpTdWdhckJheQ0KDQpCTE9DSw0KDQpCdWlsZCBmYWlsZWQNCg0KDQqh
oQ0KDQpDcm93bkJheQ0KDQpCTE9DSw0KDQpCdWlsZCBmYWlsZWQNCg0KDQqhoQ0KDQpKYXNwZXJG
b3Jlc3QNCg0KQkxPQ0sNCg0KQnVpbGQgZmFpbGVkDQoNCg0KoaENCg0KQmxhY2tzYW5kDQoNCkJM
T0NLDQoNCkJ1aWxkIGZhaWxlZA0KDQoNCqGhDQoNCkJlYWdsZWJvYXJkDQoNCm4vYQ0KDQpObyB0
ZXN0IGR1ZSB0byB0ZXN0IGJvYXJkIGJyb2tlbg0KDQoNCqGhDQoNClJvdXRlcnN0YXRpb25wcm8N
Cg0KR09PRA0KDQpFdmVyeXRoaW5nIHJ1bnMgd2VsbCBleGNlcHQgZm9yIHp5cHBlciBpbnN0YWxs
IHdpdGggLmFsbCBwYWNrYWdlDQoNCg0KoaENCg0KTXBjODMxNWUtcmRiDQoNCkdPT0QNCg0KU2Ft
ZSBhcyBhYm92ZQ0KDQoNClFFTVUNCg0KcWVtdXg4Ng0KDQpHT09EDQoNClNhbWUgYXMgYWJvdmUN
Cg0KDQqhoQ0KDQpxZW11eDg2LTY0DQoNCkdPT0QNCg0KU2FtZSBhcyBhYm92ZQ0KDQoNCqGhDQoN
CnFlbXVhcm0NCg0KR09PRA0KDQpTYW1lIGFzIGFib3ZlDQoNCg0KoaENCg0KcWVtdXBwYw0KDQpH
T09EDQoNClNhbWUgYXMgYWJvdmUNCg0KDQqhoQ0KDQpxZW11bWlwcw0KDQpHT09EDQoNClNhbWUg
YXMgYWJvdmUNCg0KDQpTREsNCg0KoaENCg0KQnVnZ3kNCg0KdW5mcyBkb2VzIG5vdCB3b3JrIHdp
dGggcWVtdXBwYw0KDQoNCg0KDQqhoQ0KDQpDcml0aWNhbCBidWdzLCBtb3JlIHRoYW4gNTAlIHRl
c3QgY2FzZXMgYXJlIGJsb2NrZWQNCg0KoaENCg0KT25seSBOb3JtYWwsIE1pbm9yIG9yIEVuaGFu
Y2VtZW50IGJ1Z3MsIGxlc3MgdGhhbiAxMCUgdGVzdCBjYXNlcyBmYWlsZWQNCg0KoaENCg0KTm9y
bWFsLCBNYWpvciBhbmQgQ3JpdGljYWwgYnVncywgbW9yZSB0aGFuIDEwJSB0ZXN0IGNhc2VzIGZh
aWxlZA0KDQoNCkRldGFpbGVkIFRlc3QgUmVzdWx0IGZvciBlYWNoIGNvbXBvbmVudA0KDQpUYXJn
ZXQNCg0KVG90YWwgVENzDQoNCk5vdCBSdW4NCg0KUGFzc2VkDQoNCkZhaWxlZA0KDQpOb3QgdGVz
dGFibGUgKEJsb2NrZWQpDQoNClJvdXRlcnN0YXRpb25wcm8gU2F0by1TREsNCg0KMjYNCg0KMA0K
DQoyNQ0KDQoxKGJ1ZyA5OTMpDQoNCjANCg0KTXBjODMxNWUtcmRiIFNhdG8tU0RLDQoNCjI1DQoN
CjANCg0KMjQNCg0KMShidWcgOTkzKQ0KDQowDQoNClFlbXV4ODYtNjQgU2F0bw0KDQoyMQ0KDQow
DQoNCjIwDQoNCjEoYnVnIDk5MykNCg0KMA0KDQpRZW11eDg2LTY0IFNhdG8tU0RLDQoNCjI0DQoN
CjANCg0KMjMNCg0KMShidWcgOTkzKQ0KDQowDQoNClFlbXV4ODYgU2F0bw0KDQoyMQ0KDQowDQoN
CjIwDQoNCjEoYnVnIDk5MykNCg0KMA0KDQpRZW11eDg2IFNhdG8tU0RLDQoNCjI0DQoNCjANCg0K
MjMNCg0KMShidWcgOTkzKQ0KDQowDQoNClFlbXVtaXBzIFNhdG8NCg0KMjENCg0KMA0KDQoyMA0K
DQoxKGJ1ZyA5OTMpDQoNCjANCg0KUWVtdW1pcHMgU2F0by1TREsNCg0KMjQNCg0KMA0KDQoyMw0K
DQoxKGJ1ZyA5OTMpDQoNCjANCg0KUWVtdXBwYyBTYXRvDQoNCjE4DQoNCjANCg0KMTcNCg0KMShi
dWcgOTkzKQ0KDQowDQoNClFlbXVwcGMgU2F0by1TREsNCg0KMjENCg0KMA0KDQoyMA0KDQoxKGJ1
ZyA5OTMpDQoNCjANCg0KUWVtdWFybSBTYXRvDQoNCjIxDQoNCjANCg0KMjANCg0KMShidWcgOTkz
KQ0KDQowDQoNClFlbXVhcm0gU2F0by1TREsNCg0KMjQNCg0KMA0KDQoyMw0KDQoxKGJ1ZyA5OTMp
DQoNCjANCg0KU0RLDQoNCjMNCg0KMA0KDQoyDQoNCjEgKGJ1ZyA0MTQpDQoNCjANCg0KVG90YWwN
Cg0KMjczDQoNCjANCg0KMjYwDQoNCjEzDQoNCjANCg0KDQoNCg0KDQoNCiogWW91IGNhbiBjaGVj
ayB0aGUgZGV0YWlsZWQgdGVzdCByZXN1bHQgaW4gYXR0YWNobWVudCBmb3IgZWFjaCB0YXJnZXQu
DQoNCioqIFRoZSBmYWlsZWQvYmxvY2tlZCBjYXNlIG51bWJlciBpcyBsaXN0ZWQgd2l0aCBmYWls
ZWQgY2FzZXOhryBidWcgbnVtYmVyLg0KDQoNCg0KSW1hZ2VzDQotLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KSW1hZ2U6IGh0dHA6Ly9hdXRvYnVpbGRlcjAzLmpmLmlu
dGVsLmNvbS9uaWdodGx5LzIwMTEwNDEyLTEvDQoNClRyZWUvQnJhbmNoOiBQb2t5L01hc3Rlcg0K
DQpDb21taXQ6IDZiZjZhZWMxMjA3NDQyMTFmYmFiZjJiNGExNjdiZmQxYWI1ODY2ZmQNCg0KDQoN
Cklzc3VlIFN1bW1hcnkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
DQpaeXBwZXI6DQoNCjEuICAgICBOZXchIFt6eXBwZXJdIHp5cHBlciBjYW4gbm90IGluc3RhbGwg
cGFja2FnZXMgd2hpY2ggZnJvbSAnYWxsJyBkaXJlY3RvcnkgaW4gcmVwb3NpdG9yeQ0KDQpodHRw
Oi8vYnVnemlsbGEucG9reWxpbnV4Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTkzDQoNCg0KDQpTREs6
DQoNCjEuICAgICBbUFBDXSBrZXJuZWwgcGFuaWMgd2hlbiBib290aW5nIHBva3ktaW1hZ2Utc2Rr
LXFlbXVwcGMgdGhyb3VnaCBVTkZTDQoNCmh0dHA6Ly9idWd6aWxsYS5wb2t5bGludXgub3JnL3No
b3dfYnVnLmNnaT9pZD00MTQNCg0KDQoNCkJTUC9CdWlsZDoNCg0KMS4gICAgIE5ldyEgZG9fYm9v
dGltZyBmYWlsZWQgb24gc3VnYXJiYXksIGphc3BlcmZvcmVzdCwgbjQ1MDogIC4uLi9rZXJuZWwv
YnpJbWFnZTogTm8gc3VjaCBmaWxlIG9yIGRpcmVjdG9yeQ0KDQpodHRwOi8vYnVnemlsbGEucG9r
eWxpbnV4Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTg3DQoNCjIuICAgICBOZXchIGRvX3Jvb3RmcyBm
YWlsZWQgb24gY3Jvd25iYXktbm9lbWdkOiBVbmFibGUgdG8gZmluZCBwYWNrYWdlIGxvY2FsZS1i
YXNlLWVuLXVzIQ0KDQpodHRwOi8vYnVnemlsbGEucG9reWxpbnV4Lm9yZy9zaG93X2J1Zy5jZ2k/
aWQ9OTg2DQoNCg0KDQpPdGhlcnM6DQoNCjEuICAgICBhdXRvYnVpbGRlciBidWlsZCBmYWlsZWQg
Zm9yIG1wYzgzMTVlLXJkYiBsc2IgaW4gbmlnaHRseSBidWlsZCAoMjAxMTA0MTItMSkNCg0KaHR0
cDovL2J1Z3ppbGxhLnBva3lsaW51eC5vcmcvc2hvd19idWcuY2dpP2lkPTk5NQ0KDQoyLiAgICAg
cWVtdWFybSBjYW5ub3Qgc2h1dGRvd24gZW50aXJlbHkgdGhyb3VnaCBVTkZTDQoNCmh0dHA6Ly9i
dWd6aWxsYS5wb2t5bGludXgub3JnL3Nob3dfYnVnLmNnaT9pZD05NjINCg0KDQoNClZlcmlmaWVk
IEZpeGVkIEJ1Z3M6DQoNCjEuICAgICBubyBzZGsgcm9vdGZzIGZpbGUgZm91bmQgaW4gcWVtdXBw
YyBuaWdodGx5IGJ1aWxkICgyMDExMDQwNC0xKQ0KDQpodHRwOi8vYnVnemlsbGEucG9reWxpbnV4
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTU4DQoNCjIuICAgICBnY2Mgc2VnZmF1bHQgb24gcWVtdXBw
YyAobmlnaHRseSBidWlsZCAyMDExMDIyNi0xKQ0KDQpodHRwOi8vYnVnemlsbGEucG9reWxpbnV4
Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9NzgwDQoNCjMuICAgICBubyByb290ZnMgZmlsZSBmb3VuZCBp
biBtcGM4MzE1ZS1yZGIgbmlnaHRseSBidWlsZCAoMjAxMTA0MDQtMSkNCg0KaHR0cDovL2J1Z3pp
bGxhLnBva3lsaW51eC5vcmcvc2hvd19idWcuY2dpP2lkPTk1Nw0KDQoNCg0KDQoNCkJlc3QgUmVn
YXJkcywNCg0KSmlhanVuDQo=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A507AA144shsmsx501ccrcor_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dgb2312"><meta name=3DGenerator content=3D"Microsof=
t Word 12 (filtered medium)"><style><!--
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
	{mso-list-id:50230265;
	mso-list-type:hybrid;
	mso-list-template-ids:-2089664796 -1533779754 67698713 67698715 67698703 6=
7698713 67698715 67698703 67698713 67698715;}
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
	{mso-list-id:1010987349;
	mso-list-type:hybrid;
	mso-list-template-ids:1906337174 1763490080 67698713 67698715 67698703 676=
98713 67698715 67698703 67698713 67698715;}
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
	{mso-list-id:1787117093;
	mso-list-type:hybrid;
	mso-list-template-ids:1726878004 791419296 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l2:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l3
	{mso-list-id:2036037297;
	mso-list-type:hybrid;
	mso-list-template-ids:64550014 -1729594364 67698713 67698715 67698703 6769=
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
@list l4
	{mso-list-id:2108889433;
	mso-list-type:hybrid;
	mso-list-template-ids:-261745680 965791710 67698713 67698715 67698703 6769=
8713 67698715 67698703 67698713 67698715;}
@list l4:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:18.0pt;
	text-indent:-18.0pt;}
@list l4:level2
	{mso-level-tab-stop:72.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level3
	{mso-level-tab-stop:108.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level4
	{mso-level-tab-stop:144.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level5
	{mso-level-tab-stop:180.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level6
	{mso-level-tab-stop:216.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level7
	{mso-level-tab-stop:252.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level8
	{mso-level-tab-stop:288.0pt;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l4:level9
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
sans-serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; This is the weekly test r=
eport for Yocto 20110412 build. There are 2 new BLOCK issues for BSP testin=
g, that all meta-intel BSP build failed on autobuilder, reported as bug 976=
 and 978. For zypper, there is one new issue with =A1=B0.all=A1=B1 packages=
 when using zypper install.<o:p></o:p></span></p><p class=3DMsoPlainText><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; For bug fixing, the gcc segfault iss=
ue on qemuppc is verified as fixed by Nitin.<o:p></o:p></span></p><p class=
=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>Test Summary<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>-----=
----------------------------------<o:p></o:p></span></b></p><table class=3D=
MsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D659 style=
=3D'width:494.0pt;margin-left:-.75pt;border-collapse:collapse'><tr><td widt=
h=3D81 style=3D'width:61.0pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D82 c=
olspan=3D6 style=3D'width:61.85pt;padding:0cm 0cm 0cm 0cm'></td><td width=
=3D160 colspan=3D11 style=3D'width:119.75pt;padding:0cm 0cm 0cm 0cm'></td><=
td width=3D85 style=3D'width:63.75pt;padding:0cm 0cm 0cm 0cm'></td><td widt=
h=3D166 colspan=3D4 style=3D'width:124.8pt;padding:0cm 0cm 0cm 0cm'></td><t=
d width=3D84 colspan=3D2 style=3D'width:62.85pt;padding:0cm 0cm 0cm 0cm'></=
td></tr><tr><td width=3D81 style=3D'width:61.0pt;padding:0cm 0cm 0cm 0cm'><=
/td><td width=3D18 colspan=3D4 style=3D'width:13.7pt;padding:0cm 0cm 0cm 0c=
m'></td><td width=3D64 colspan=3D2 style=3D'width:48.15pt;padding:0cm 0cm 0=
cm 0cm'></td><td width=3D76 colspan=3D5 style=3D'width:56.75pt;padding:0cm =
0cm 0cm 0cm'></td><td width=3D67 colspan=3D5 style=3D'width:50.25pt;padding=
:0cm 0cm 0cm 0cm'></td><td width=3D17 style=3D'width:12.75pt;padding:0cm 0c=
m 0cm 0cm'></td><td width=3D85 style=3D'width:63.75pt;padding:0cm 0cm 0cm 0=
cm'></td><td width=3D166 colspan=3D4 style=3D'width:124.8pt;padding:0cm 0cm=
 0cm 0cm'></td><td width=3D8 style=3D'width:5.95pt;padding:0cm 0cm 0cm 0cm'=
></td><td width=3D76 style=3D'width:56.9pt;padding:0cm 0cm 0cm 0cm'></td></=
tr><tr><td width=3D81 style=3D'width:61.0pt;padding:0cm 0cm 0cm 0cm'></td><=
td width=3D18 colspan=3D4 style=3D'width:13.7pt;padding:0cm 0cm 0cm 0cm'></=
td><td width=3D15 style=3D'width:11.35pt;padding:0cm 0cm 0cm 0cm'></td><td =
width=3D49 style=3D'width:36.8pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D=
67 colspan=3D4 style=3D'width:50.0pt;padding:0cm 0cm 0cm 0cm'></td><td widt=
h=3D9 style=3D'width:6.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D53 co=
lspan=3D4 style=3D'width:39.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D=
14 style=3D'width:10.5pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D17 style=
=3D'width:12.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D85 style=3D'wid=
th:63.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D123 colspan=3D3 style=
=3D'width:92.5pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D43 style=3D'widt=
h:32.3pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D8 style=3D'width:5.95pt;=
padding:0cm 0cm 0cm 0cm'></td><td width=3D76 style=3D'width:56.9pt;padding:=
0cm 0cm 0cm 0cm'></td></tr><tr><td width=3D81 style=3D'width:61.0pt;padding=
:0cm 0cm 0cm 0cm'></td><td width=3D5 style=3D'width:3.8pt;padding:0cm 0cm 0=
cm 0cm'></td><td width=3D13 colspan=3D3 style=3D'width:9.9pt;padding:0cm 0c=
m 0cm 0cm'></td><td width=3D15 style=3D'width:11.35pt;padding:0cm 0cm 0cm 0=
cm'></td><td width=3D49 style=3D'width:36.8pt;padding:0cm 0cm 0cm 0cm'></td=
><td width=3D45 colspan=3D2 style=3D'width:34.05pt;padding:0cm 0cm 0cm 0cm'=
></td><td width=3D21 colspan=3D2 style=3D'width:15.95pt;padding:0cm 0cm 0cm=
 0cm'></td><td width=3D9 style=3D'width:6.75pt;padding:0cm 0cm 0cm 0cm'></t=
d><td width=3D39 colspan=3D2 style=3D'width:29.25pt;padding:0cm 0cm 0cm 0cm=
'></td><td width=3D14 colspan=3D2 style=3D'width:10.5pt;padding:0cm 0cm 0cm=
 0cm'></td><td width=3D14 style=3D'width:10.5pt;padding:0cm 0cm 0cm 0cm'></=
td><td width=3D17 style=3D'width:12.75pt;padding:0cm 0cm 0cm 0cm'></td><td =
width=3D85 style=3D'width:63.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=
=3D26 style=3D'width:19.5pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D97 co=
lspan=3D2 style=3D'width:73.0pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D4=
3 style=3D'width:32.3pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D8 style=
=3D'width:5.95pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D76 style=3D'widt=
h:56.9pt;padding:0cm 0cm 0cm 0cm'></td></tr><tr><td width=3D81 style=3D'wid=
th:61.0pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D5 style=3D'width:3.8pt;=
padding:0cm 0cm 0cm 0cm'></td><td width=3D2 style=3D'width:1.5pt;padding:0c=
m 0cm 0cm 0cm'></td><td width=3D11 colspan=3D2 style=3D'width:8.4pt;padding=
:0cm 0cm 0cm 0cm'></td><td width=3D15 style=3D'width:11.35pt;padding:0cm 0c=
m 0cm 0cm'></td><td width=3D49 style=3D'width:36.8pt;padding:0cm 0cm 0cm 0c=
m'></td><td width=3D41 style=3D'width:31.05pt;padding:0cm 0cm 0cm 0cm'></td=
><td width=3D4 style=3D'width:3.0pt;padding:0cm 0cm 0cm 0cm'></td><td width=
=3D21 colspan=3D2 style=3D'width:15.95pt;padding:0cm 0cm 0cm 0cm'></td><td =
width=3D9 style=3D'width:6.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D2=
5 style=3D'width:18.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D14 style=
=3D'width:10.5pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D14 colspan=3D2 s=
tyle=3D'width:10.5pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D14 style=3D'=
width:10.5pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D17 style=3D'width:12=
.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D85 style=3D'width:63.75pt;p=
adding:0cm 0cm 0cm 0cm'></td><td width=3D26 style=3D'width:19.5pt;padding:0=
cm 0cm 0cm 0cm'></td><td width=3D97 colspan=3D2 style=3D'width:73.0pt;paddi=
ng:0cm 0cm 0cm 0cm'></td><td width=3D43 style=3D'width:32.3pt;padding:0cm 0=
cm 0cm 0cm'></td><td width=3D8 style=3D'width:5.95pt;padding:0cm 0cm 0cm 0c=
m'></td><td width=3D76 style=3D'width:56.9pt;padding:0cm 0cm 0cm 0cm'></td>=
</tr><tr style=3D'height:14.25pt'><td width=3D448 nowrap colspan=3D21 style=
=3D'width:336.0pt;border:solid windowtext 1.0pt;border-right:solid black 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>Test Result Summar=
y<o:p></o:p></span></b></p></td><td style=3D'border:none;padding:0cm 0cm 0c=
m 0cm' width=3D211 colspan=3D4><p class=3D'MsoNormal'>&nbsp;</td></tr><tr s=
tyle=3D'height:14.25pt'><td width=3D95 nowrap colspan=3D4 style=3D'width:71=
.4pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:black'>Component<o:p></o:p></span></b></p></td><td width=
=3D126 nowrap colspan=3D6 style=3D'width:94.4pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>Target<o:p></o:p></spa=
n></b></p></td><td width=3D59 nowrap colspan=3D5 style=3D'width:44.35pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p =
class=3DMsoNormal align=3Dleft style=3D'text-align:left'><b><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'=
>Status<o:p></o:p></span></b></p></td><td width=3D168 colspan=3D6 style=3D'=
width:125.85pt;border-top:none;border-left:none;border-bottom:solid windowt=
ext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'>=
<b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>Comments<o:p></o:p></span></b></p></td><td style=3D'bord=
er:none;padding:0cm 0cm 0cm 0cm' width=3D211 colspan=3D4><p class=3D'MsoNor=
mal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D95 nowrap col=
span=3D4 style=3D'width:71.4pt;border:solid windowtext 1.0pt;border-top:non=
e;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3D=
left style=3D'text-align:left'><b><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:black'>BSP<o:p></o:p></span></b>=
</p></td><td width=3D126 nowrap colspan=3D6 style=3D'width:94.4pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>SugarBa=
y<o:p></o:p></span></p></td><td width=3D59 nowrap colspan=3D5 style=3D'widt=
h:44.35pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;background:red;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-al=
ign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif";color:black'>BLOCK<o:p></o:p></span></p></td><td width=3D168 c=
olspan=3D6 style=3D'width:125.85pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>Build failed<o:p></o:p></span></p></td=
><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D211 colspan=3D4>=
<p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td wid=
th=3D95 nowrap colspan=3D4 style=3D'width:71.4pt;border:solid windowtext 1.=
0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dleft style=3D'text-align:left'><span style=3D'font-size:1=
0.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p><=
/o:p></span></span></p></td><td width=3D126 nowrap colspan=3D6 style=3D'wid=
th:94.4pt;border-top:none;border-left:none;border-bottom:solid windowtext 1=
.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'>CrownBay<o:p></o:p></span></p></td><td width=3D59 nowrap colspan=
=3D5 style=3D'width:44.35pt;border-top:none;border-left:none;border-bottom:=
solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;background:red;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dlef=
t style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif";color:black'>BLOCK<o:p></o:p></span></p></td=
><td width=3D168 colspan=3D6 style=3D'width:125.85pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>Build failed<o:p></o:=
p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=
=3D211 colspan=3D4><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'heig=
ht:14.25pt'><td width=3D95 nowrap colspan=3D4 style=3D'width:71.4pt;border:=
solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:1=
4.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span s=
tyle=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span =
lang=3DEN-US><o:p></o:p></span></span></p></td><td width=3D126 nowrap colsp=
an=3D6 style=3D'width:94.4pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'tex=
t-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>JasperForest<o:p></o:p></span></p></td><td wi=
dth=3D59 nowrap colspan=3D5 style=3D'width:44.35pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;background:red;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>BLOCK<o=
:p></o:p></span></p></td><td width=3D168 colspan=3D6 style=3D'width:125.85p=
t;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt=
'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'>Build failed<o:p></o:p></span></p></td><td style=3D'border:none;padding:=
0cm 0cm 0cm 0cm' width=3D211 colspan=3D4><p class=3D'MsoNormal'>&nbsp;</td>=
</tr><tr style=3D'height:14.25pt'><td width=3D95 nowrap colspan=3D4 style=
=3D'width:71.4pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm =
5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'=
text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;c=
olor:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p></td><td =
width=3D126 nowrap colspan=3D6 style=3D'width:94.4pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>Blacksand<o:p></o:p><=
/span></p></td><td width=3D59 nowrap colspan=3D5 style=3D'width:44.35pt;bor=
der-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-r=
ight:solid windowtext 1.0pt;background:red;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><sp=
an lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";=
color:black'>BLOCK<o:p></o:p></span></p></td><td width=3D168 colspan=3D6 st=
yle=3D'width:125.85pt;border-top:none;border-left:none;border-bottom:solid =
windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm =
5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align=
:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sa=
ns-serif";color:black'>Build failed<o:p></o:p></span></p></td><td style=3D'=
border:none;padding:0cm 0cm 0cm 0cm' width=3D211 colspan=3D4><p class=3D'Ms=
oNormal'>&nbsp;</td></tr><tr style=3D'height:26.25pt'><td width=3D95 nowrap=
 colspan=3D4 style=3D'width:71.4pt;border:solid windowtext 1.0pt;border-top=
:none;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal alig=
n=3Dleft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-fam=
ily:=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></=
span></p></td><td width=3D126 nowrap colspan=3D6 style=3D'width:94.4pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p c=
lass=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Bea=
gleboard<o:p></o:p></span></p></td><td width=3D59 nowrap colspan=3D5 style=
=3D'width:44.35pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:lef=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif";color:black'>n/a<o:p></o:p></span></p></td><td width=3D168 colspan=3D=
6 style=3D'width:125.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-a=
lign:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif";color:black'>No test due to test board broken<o:p></o:p></spa=
n></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D211 co=
lspan=3D4><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:39.0pt=
'><td width=3D95 nowrap colspan=3D4 style=3D'width:71.4pt;border:solid wind=
owtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p =
class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span style=3D'fon=
t-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN-U=
S><o:p></o:p></span></span></p></td><td width=3D126 nowrap colspan=3D6 styl=
e=3D'width:94.4pt;border-top:none;border-left:none;border-bottom:solid wind=
owtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4p=
t;height:39.0pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>Routerstationpro<o:p></o:p></span></p></td><td width=3D59=
 nowrap colspan=3D5 style=3D'width:44.35pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;b=
ackground:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMso=
Normal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:=
p></span></p></td><td width=3D168 colspan=3D6 style=3D'width:125.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US st=
yle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Every=
thing runs well except for zypper install with .all package<o:p></o:p></spa=
n></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D211 co=
lspan=3D4><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25p=
t'><td width=3D95 nowrap colspan=3D4 style=3D'width:71.4pt;border:solid win=
dowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span style=3D'f=
ont-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN=
-US><o:p></o:p></span></span></p></td><td width=3D126 nowrap colspan=3D6 st=
yle=3D'width:94.4pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Mpc8315e-rdb<o:p></o:p></span></p></td><td width=3D59 =
nowrap colspan=3D5 style=3D'width:44.35pt;border-top:none;border-left:none;=
border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;ba=
ckground:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMso=
Normal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:=
p></span></p></td><td width=3D168 colspan=3D6 style=3D'width:125.85pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cl=
ass=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Same=
 as above<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0c=
m 0cm 0cm' width=3D211 colspan=3D4><p class=3D'MsoNormal'>&nbsp;</td></tr><=
tr style=3D'height:14.25pt'><td width=3D95 nowrap colspan=3D4 style=3D'widt=
h:71.4pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0c=
m 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-ali=
gn:left'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>QEMU<o:p></o:p></span></b></p></td><td width=3D=
126 nowrap colspan=3D6 style=3D'width:94.4pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dl=
eft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:black'>qemux86<o:p></o:p></span></p>=
</td><td width=3D59 nowrap colspan=3D5 style=3D'width:44.35pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'>GOOD<o:p></o:p></span></p></td><td width=3D168 colspan=3D6 style=3D'=
width:125.85pt;border-top:none;border-left:none;border-bottom:solid windowt=
ext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Same as above<o:p></o:p></span></p></td><td style=3D'border=
:none;padding:0cm 0cm 0cm 0cm' width=3D211 colspan=3D4><p class=3D'MsoNorma=
l'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><td width=3D95 nowrap colsp=
an=3D4 style=3D'width:71.4pt;border:solid windowtext 1.0pt;border-top:none;=
padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dle=
ft style=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=
=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span=
></p></td><td width=3D126 nowrap colspan=3D6 style=3D'width:94.4pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>qemux86=
-64<o:p></o:p></span></p></td><td width=3D59 nowrap colspan=3D5 style=3D'wi=
dth:44.35pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5=
.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D't=
ext-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif";color:black'>GOOD<o:p></o:p></span></p></td><td width=3D=
168 colspan=3D6 style=3D'width:125.85pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft s=
tyle=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'>Same as above<o:p></o:p></span></p=
></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D211 colspan=
=3D4><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:14.25pt'><t=
d width=3D95 nowrap colspan=3D4 style=3D'width:71.4pt;border:solid windowte=
xt 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p cla=
ss=3DMsoNormal align=3Dleft style=3D'text-align:left'><span style=3D'font-s=
ize:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><=
o:p></o:p></span></span></p></td><td width=3D126 nowrap colspan=3D6 style=
=3D'width:94.4pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>qemuarm<o:p></o:p></span></p></td><td width=3D59 nowrap c=
olspan=3D5 style=3D'width:44.35pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;background=
:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal a=
lign=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>GOOD<o:p></o:p></span=
></p></td><td width=3D168 colspan=3D6 style=3D'width:125.85pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMs=
oNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Same as abov=
e<o:p></o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0c=
m' width=3D211 colspan=3D4><p class=3D'MsoNormal'>&nbsp;</td></tr><tr style=
=3D'height:14.25pt'><td width=3D95 nowrap colspan=3D4 style=3D'width:71.4pt=
;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;=
height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'=
><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=E5;color:black'>=A1=
=A1<span lang=3DEN-US><o:p></o:p></span></span></p></td><td width=3D126 now=
rap colspan=3D6 style=3D'width:94.4pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft sty=
le=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>qemuppc<o:p></o:p></span></p></td><t=
d width=3D59 nowrap colspan=3D5 style=3D'width:44.35pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><=
p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>=
GOOD<o:p></o:p></span></p></td><td width=3D168 colspan=3D6 style=3D'width:1=
25.85pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:1=
4.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:black'>Same as above<o:p></o:p></span></p></td><td style=3D'border:none;p=
adding:0cm 0cm 0cm 0cm' width=3D211 colspan=3D4><p class=3D'MsoNormal'>&nbs=
p;</td></tr><tr style=3D'height:14.25pt'><td width=3D95 nowrap colspan=3D4 =
style=3D'width:71.4pt;border:solid windowtext 1.0pt;border-top:none;padding=
:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=
=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p></td=
><td width=3D126 nowrap colspan=3D6 style=3D'width:94.4pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNor=
mal align=3Dleft style=3D'text-align:left'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:black'>qemumips<o:p></o=
:p></span></p></td><td width=3D59 nowrap colspan=3D5 style=3D'width:44.35pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;background:#92D050;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>GOOD<o:p></o:p></span></p></td><td width=3D168 colspan=
=3D6 style=3D'width:125.85pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'tex=
t-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif";color:black'>Same as above<o:p></o:p></span></p></td><td s=
tyle=3D'border:none;padding:0cm 0cm 0cm 0cm' width=3D211 colspan=3D4><p cla=
ss=3D'MsoNormal'>&nbsp;</td></tr><tr style=3D'height:30.75pt'><td width=3D9=
5 nowrap colspan=3D4 style=3D'width:71.4pt;border:solid windowtext 1.0pt;bo=
rder-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:30.75pt'><p class=3DMsoNor=
mal align=3Dleft style=3D'text-align:left'><b><span lang=3DEN-US style=3D'f=
ont-size:10.0pt;font-family:"Arial","sans-serif";color:black'>SDK<o:p></o:p=
></span></b></p></td><td width=3D126 nowrap colspan=3D6 style=3D'width:94.4=
pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bo=
rder-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:30.75p=
t'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left'><span style=
=3D'font-family:=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o=
:p></span></span></p></td><td width=3D59 nowrap colspan=3D5 style=3D'width:=
44.35pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0=
pt;border-right:solid windowtext 1.0pt;background:#FFC000;padding:0cm 5.4pt=
 0cm 5.4pt;height:30.75pt'><p class=3DMsoNormal align=3Dleft style=3D'text-=
align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>Buggy<o:p></o:p></span></p></td><td width=3D168=
 colspan=3D6 style=3D'width:125.85pt;border-top:none;border-left:none;borde=
r-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding=
:0cm 5.4pt 0cm 5.4pt;height:30.75pt'><p class=3DMsoNormal align=3Dleft styl=
e=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>unfs does not work with qemuppc<o:p><=
/o:p></span></p></td><td style=3D'border:none;padding:0cm 0cm 0cm 0cm' widt=
h=3D211 colspan=3D4><p class=3D'MsoNormal'>&nbsp;</td></tr><tr height=3D0><=
td width=3D81 style=3D'border:none'></td><td width=3D5 style=3D'border:none=
'></td><td width=3D2 style=3D'border:none'></td><td width=3D7 style=3D'bord=
er:none'></td><td width=3D4 style=3D'border:none'></td><td width=3D15 style=
=3D'border:none'></td><td width=3D49 style=3D'border:none'></td><td width=
=3D41 style=3D'border:none'></td><td width=3D4 style=3D'border:none'></td><=
td width=3D12 style=3D'border:none'></td><td width=3D9 style=3D'border:none=
'></td><td width=3D9 style=3D'border:none'></td><td width=3D25 style=3D'bor=
der:none'></td><td width=3D14 style=3D'border:none'></td><td width=3D2 styl=
e=3D'border:none'></td><td width=3D12 style=3D'border:none'></td><td width=
=3D14 style=3D'border:none'></td><td width=3D17 style=3D'border:none'></td>=
<td width=3D85 style=3D'border:none'></td><td width=3D26 style=3D'border:no=
ne'></td><td width=3D14 style=3D'border:none'></td><td width=3D84 style=3D'=
border:none'></td><td width=3D43 style=3D'border:none'></td><td width=3D8 s=
tyle=3D'border:none'></td><td width=3D76 style=3D'border:none'></td></tr></=
table><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></b></p><table cl=
ass=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D514=
 style=3D'width:385.15pt;margin-left:-.75pt;border-collapse:collapse'><tr s=
tyle=3D'height:14.25pt'><td width=3D72 nowrap style=3D'width:54.0pt;backgro=
und:red;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span style=3D'font-size:10.0pt;fo=
nt-family:=CB=CE=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></s=
pan></span></p></td><td width=3D442 nowrap style=3D'width:331.15pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=
=3D'text-align:left'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>Critical bugs, more than 50% test case=
s are blocked<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><=
td width=3D72 nowrap style=3D'width:54.0pt;background:#9BBB59;padding:0cm 5=
.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span style=3D'font-size:10.0pt;font-family:=CB=CE=CC=
=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p></td=
><td width=3D442 nowrap style=3D'width:331.15pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:left=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>Only Normal, Minor or Enhancement bugs, less than 10% tes=
t cases failed<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'>=
<td width=3D72 nowrap style=3D'width:54.0pt;background:#FFC000;padding:0cm =
5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span style=3D'font-size:10.0pt;font-family:=CB=CE=
=CC=E5;color:black'>=A1=A1<span lang=3DEN-US><o:p></o:p></span></span></p><=
/td><td width=3D442 nowrap style=3D'width:331.15pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dleft style=3D'text-align:l=
eft'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif";color:black'>Normal, Major and Critical bugs, more than 10% test ca=
ses failed<o:p></o:p></span></p></td></tr></table><p class=3DMsoNormal><b><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'><o:p>&nbsp;</o:p></span></b></p><table class=3DMsoNormalTable border=3D0=
 cellspacing=3D0 cellpadding=3D0 width=3D532 style=3D'width:399.3pt;margin-=
left:-1.15pt;border-collapse:collapse'><tr style=3D'height:14.25pt'><td wid=
th=3D532 nowrap colspan=3D6 style=3D'width:399.3pt;border:solid windowtext =
1.0pt;border-right:solid black 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.=
25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>Detailed Test Result for each component<o:p></o:p></span></b>=
</p></td></tr><tr style=3D'height:39.0pt'><td width=3D169 nowrap style=3D'w=
idth:127.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4p=
t 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'tex=
t-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family=
:"Arial","sans-serif";color:black'>Target<o:p></o:p></span></b></p></td><td=
 width=3D77 style=3D'width:58.05pt;border-top:none;border-left:none;border-=
bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0=
cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font=
-family:"Arial","sans-serif";color:black'>Total TCs</span></b><span lang=3D=
EN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:blac=
k'> <b><o:p></o:p></b></span></p></td><td width=3D67 style=3D'width:49.95pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'>=
<p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color=
:black'>Not Run<o:p></o:p></span></b></p></td><td width=3D59 style=3D'width=
:44.55pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Passed</span></b><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'> <b><o:p></o:p></b></span>=
</p></td><td width=3D82 style=3D'width:61.4pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:39.0pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:=
10.0pt;font-family:"Arial","sans-serif";color:black'>Failed</span></b><span=
 lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";co=
lor:black'> <b><o:p></o:p></b></span></p></td><td width=3D78 style=3D'width=
:58.35pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
39.0pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:black'>Not testable (Blocked)</span></b><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'> <b><o:p=
></o:p></b></span></p></td></tr><tr style=3D'height:26.25pt'><td width=3D16=
9 style=3D'width:127.0pt;border:solid windowtext 1.0pt;border-top:none;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>Routerstationpro Sato-SDK<o=
:p></o:p></span></b></p></td><td width=3D77 style=3D'width:58.05pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>26<=
o:p></o:p></span></p></td><td width=3D67 style=3D'width:49.95pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p>=
</o:p></span></p></td><td width=3D59 style=3D'width:44.55pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>25<o:p=
></o:p></span></p></td><td width=3D82 nowrap style=3D'width:61.4pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1(bug=
 993)<o:p></o:p></span></p></td><td width=3D78 style=3D'width:58.35pt;borde=
r-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-rig=
ht:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:26.25pt'><p cl=
ass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-=
US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<=
o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D169=
 style=3D'width:127.0pt;border:solid windowtext 1.0pt;border-top:none;paddi=
ng:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter =
style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt=
;font-family:"Arial","sans-serif";color:black'>Mpc8315e-rdb Sato-SDK<o:p></=
o:p></span></b></p></td><td width=3D77 style=3D'width:58.05pt;border-top:no=
ne;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid=
 windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMs=
oNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>25<o:p><=
/o:p></span></p></td><td width=3D67 style=3D'width:49.95pt;border-top:none;=
border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid wi=
ndowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNo=
rmal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D=
'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p=
></span></p></td><td width=3D59 style=3D'width:44.55pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>24<o:p></o:p>=
</span></p></td><td width=3D82 nowrap style=3D'width:61.4pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1(bug 993)=
<o:p></o:p></span></p></td><td width=3D78 style=3D'width:58.35pt;border-top=
:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:so=
lid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D169 no=
wrap style=3D'width:127.0pt;border:solid windowtext 1.0pt;border-top:none;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86-64 Sato<o:p></o:=
p></span></b></p></td><td width=3D77 nowrap style=3D'width:58.05pt;border-t=
op:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:=
solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>21<=
o:p></o:p></span></p></td><td width=3D67 valign=3Dtop style=3D'width:49.95p=
t;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bor=
der-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt=
'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:=
black'>0<o:p></o:p></span></p></td><td width=3D59 valign=3Dtop style=3D'wid=
th:44.55pt;border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heigh=
t:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f";color:#00B050'>20<o:p></o:p></span></p></td><td width=3D82 nowrap style=
=3D'width:61.4pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>1(bug 993)<o:p></o:p></span></p></td><td width=3D78 sty=
le=3D'width:58.35pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height=
:14.25pt'><td width=3D169 nowrap style=3D'width:127.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Qemux86-64 Sato-SDK<o:p></o:p></span></b></p></td><td width=3D77 nowr=
ap style=3D'width:58.05pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:black'>24<o:p></o:p></span></p></td><td width=3D67 =
valign=3Dtop style=3D'width:49.95pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td wi=
dth=3D59 valign=3Dtop style=3D'width:44.55pt;border-top:none;border-left:no=
ne;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt=
;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dc=
enter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif";color:#00B050'>23<o:p></o:p></span></p=
></td><td width=3D82 nowrap style=3D'width:61.4pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'>1(bug 993)<o:p></o:p><=
/span></p></td><td width=3D78 style=3D'width:58.35pt;border-top:none;border=
-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowte=
xt 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal a=
lign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-=
size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span>=
</p></td></tr><tr style=3D'height:14.25pt'><td width=3D169 nowrap style=3D'=
width:127.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif";color:black'>Qemux86 Sato<o:p></o:p></span></b></p>=
</td><td width=3D77 nowrap style=3D'width:58.05pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:black'>21<o:p></o:p></span>=
</p></td><td width=3D67 valign=3Dtop style=3D'width:49.95pt;border-top:none=
;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid w=
indowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoN=
ormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></=
o:p></span></p></td><td width=3D59 valign=3Dtop style=3D'width:44.55pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B05=
0'>20<o:p></o:p></span></p></td><td width=3D82 nowrap style=3D'width:61.4pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>1(bug 993)<o:p></o:p></span></p></td><td width=3D78 style=3D'width:58.3=
5pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td wi=
dth=3D169 nowrap style=3D'width:127.0pt;border:solid windowtext 1.0pt;borde=
r-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemux86 Sato=
-SDK<o:p></o:p></span></b></p></td><td width=3D77 nowrap style=3D'width:58.=
05pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.2=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>24<o:p></o:p></span></p></td><td width=3D67 valign=3Dtop style=3D=
'width:49.95pt;border-top:none;border-left:none;border-bottom:solid windowt=
ext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;h=
eight:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:cent=
er'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-=
serif";color:black'>0<o:p></o:p></span></p></td><td width=3D59 valign=3Dtop=
 style=3D'width:44.55pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0c=
m 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-a=
lign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Aria=
l","sans-serif";color:#00B050'>23<o:p></o:p></span></p></td><td width=3D82 =
nowrap style=3D'width:61.4pt;border-top:none;border-left:none;border-bottom=
:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4=
pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D't=
ext-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif";color:red'>1(bug 993)<o:p></o:p></span></p></td><td wi=
dth=3D78 style=3D'width:58.35pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr s=
tyle=3D'height:14.25pt'><td width=3D169 nowrap style=3D'width:127.0pt;borde=
r:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>Qemumips Sato<o:p></o:p></span></b></p></td><td width=3D7=
7 nowrap style=3D'width:58.05pt;border-top:none;border-left:none;border-bot=
tom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm =
5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:black'>21<o:p></o:p></span></p></td><td wid=
th=3D67 nowrap style=3D'width:49.95pt;border-top:none;border-left:none;bord=
er-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;paddin=
g:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter s=
tyle=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;fon=
t-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><td =
width=3D59 nowrap style=3D'width:44.55pt;border-top:none;border-left:none;b=
order-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;pad=
ding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcente=
r style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif";color:#00B050'>20<o:p></o:p></span></p></t=
d><td width=3D82 nowrap style=3D'width:61.4pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:red'>1(bug 993)<o:p></o:p></spa=
n></p></td><td width=3D78 style=3D'width:58.35pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p>=
</td></tr><tr style=3D'height:14.25pt'><td width=3D169 nowrap style=3D'widt=
h:127.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0=
cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-=
align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"=
Arial","sans-serif";color:black'>Qemumips Sato-SDK<o:p></o:p></span></b></p=
></td><td width=3D77 nowrap style=3D'width:58.05pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:black'>24<o:p></o:p></span=
></p></td><td width=3D67 nowrap style=3D'width:49.95pt;border-top:none;bord=
er-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid window=
text 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></s=
pan></p></td><td width=3D59 nowrap style=3D'width:44.55pt;border-top:none;b=
order-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid win=
dowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNor=
mal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B050'>23<o:p></o=
:p></span></p></td><td width=3D82 nowrap style=3D'width:61.4pt;border-top:n=
one;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:soli=
d windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DM=
soNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US styl=
e=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>1(bug 993=
)<o:p></o:p></span></p></td><td width=3D78 style=3D'width:58.35pt;border-to=
p:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:s=
olid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=
=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US =
style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p=
></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td width=3D169 no=
wrap style=3D'width:127.0pt;border:solid windowtext 1.0pt;border-top:none;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:black'>Qemuppc Sato<o:p></o:p><=
/span></b></p></td><td width=3D77 nowrap style=3D'width:58.05pt;border-top:=
none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right:sol=
id windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3D=
MsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US sty=
le=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>18<o:p=
></o:p></span></p></td><td width=3D67 nowrap style=3D'width:49.95pt;border-=
top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-right=
:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p clas=
s=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US=
 style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>0<=
o:p></o:p></span></p></td><td width=3D59 nowrap style=3D'width:44.55pt;bord=
er-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;border-ri=
ght:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=3DEN=
-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:#00B05=
0'>17<o:p></o:p></span></p></td><td width=3D82 nowrap style=3D'width:61.4pt=
;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;bord=
er-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'=
><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:r=
ed'>1(bug 993)<o:p></o:p></span></p></td><td width=3D78 style=3D'width:58.3=
5pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;b=
order-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25=
pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";colo=
r:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height:14.25pt'><td wi=
dth=3D169 nowrap style=3D'width:127.0pt;border:solid windowtext 1.0pt;borde=
r-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal=
 align=3Dcenter style=3D'text-align:center'><b><span lang=3DEN-US style=3D'=
font-size:10.0pt;font-family:"Arial","sans-serif";color:black'>Qemuppc Sato=
-SDK<o:p></o:p></span></b></p></td><td width=3D77 nowrap style=3D'width:58.=
05pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.0pt;=
border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.2=
5pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";col=
or:black'>21<o:p></o:p></span></p></td><td width=3D67 nowrap style=3D'width=
:49.95pt;border-top:none;border-left:none;border-bottom:solid windowtext 1.=
0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:=
14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><s=
pan lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"=
;color:black'>0<o:p></o:p></span></p></td><td width=3D59 nowrap style=3D'wi=
dth:44.55pt;border-top:none;border-left:none;border-bottom:solid windowtext=
 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;heig=
ht:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'=
><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-ser=
if";color:#00B050'>20<o:p></o:p></span></p></td><td width=3D82 nowrap style=
=3D'width:61.4pt;border-top:none;border-left:none;border-bottom:solid windo=
wtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt=
;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:ce=
nter'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","san=
s-serif";color:red'>1(bug 993)<o:p></o:p></span></p></td><td width=3D78 sty=
le=3D'width:58.35pt;border-top:none;border-left:none;border-bottom:solid wi=
ndowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.=
4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align=
:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","=
sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr style=3D'height=
:14.25pt'><td width=3D169 nowrap style=3D'width:127.0pt;border:solid window=
text 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p c=
lass=3DMsoNormal align=3Dcenter style=3D'text-align:center'><b><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif";color:b=
lack'>Qemuarm Sato<o:p></o:p></span></b></p></td><td width=3D77 nowrap styl=
e=3D'width:58.05pt;border-top:none;border-left:none;border-bottom:solid win=
dowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm 5.4=
pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:=
center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","s=
ans-serif";color:black'>21<o:p></o:p></span></p></td><td width=3D67 nowrap =
style=3D'width:49.95pt;border-top:none;border-left:none;border-bottom:solid=
 windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt 0cm=
 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-al=
ign:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial=
","sans-serif";color:black'>0<o:p></o:p></span></p></td><td width=3D59 nowr=
ap style=3D'width:44.55pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5.4pt =
0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text=
-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif";color:#00B050'>20<o:p></o:p></span></p></td><td width=3D8=
2 nowrap style=3D'width:61.4pt;border-top:none;border-left:none;border-bott=
om:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0cm 5=
.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D=
'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:red'>1(bug 993)<o:p></o:p></span></p></td><td =
width=3D78 style=3D'width:58.35pt;border-top:none;border-left:none;border-b=
ottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0c=
m 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=
=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-fa=
mily:"Arial","sans-serif";color:red'>0<o:p></o:p></span></p></td></tr><tr s=
tyle=3D'height:14.25pt'><td width=3D169 nowrap style=3D'width:127.0pt;borde=
r:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4pt 0cm 5.4pt;height=
:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'text-align:center'><=
b><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif";color:black'>Qemuarm Sato-SDK<o:p></o:p></span></b></p></td><td width=
=3D77 nowrap style=3D'width:58.05pt;border-top:none;border-left:none;border=
-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:=
0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter sty=
le=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif";color:black'>24<o:p></o:p></span></p></td><td w=
idth=3D67 nowrap style=3D'width:49.95pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td><t=
d width=3D59 nowrap style=3D'width:44.55pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:#00B050'>23<o:p></o:p></span></p><=
/td><td width=3D82 nowrap style=3D'width:61.4pt;border-top:none;border-left=
:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.=
0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:red'>1(bug 993)<o:p></o:p></=
span></p></td><td width=3D78 style=3D'width:58.35pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span><=
/p></td></tr><tr style=3D'height:14.25pt'><td width=3D169 nowrap style=3D'w=
idth:127.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.4p=
t 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'te=
xt-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif";color:black'>SDK<o:p></o:p></span></b></p></td><td w=
idth=3D77 nowrap style=3D'width:58.05pt;border-top:none;border-left:none;bo=
rder-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padd=
ing:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter=
 style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0pt;f=
ont-family:"Arial","sans-serif";color:black'>3<o:p></o:p></span></p></td><t=
d width=3D67 nowrap style=3D'width:49.95pt;border-top:none;border-left:none=
;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;p=
adding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcen=
ter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0p=
t;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></p></td=
><td width=3D59 nowrap style=3D'width:44.55pt;border-top:none;border-left:n=
one;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0p=
t;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3D=
center style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif";color:#00B050'>2<o:p></o:p></span></p=
></td><td width=3D82 nowrap style=3D'width:61.4pt;border-top:none;border-le=
ft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext =
1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal alig=
n=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif";color:red'>1 (bug 414)<o:p></o:p>=
</span></p></td><td width=3D78 style=3D'width:58.35pt;border-top:none;borde=
r-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowt=
ext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span=
></p></td></tr><tr style=3D'height:14.25pt'><td width=3D169 nowrap style=3D=
'width:127.0pt;border:solid windowtext 1.0pt;border-top:none;padding:0cm 5.=
4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dcenter style=3D'=
text-align:center'><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-fam=
ily:"Arial","sans-serif";color:black'>Total<o:p></o:p></span></b></p></td><=
td width=3D77 nowrap style=3D'width:58.05pt;border-top:none;border-left:non=
e;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt;=
padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=3Dce=
nter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size:10.0=
pt;font-family:"Arial","sans-serif";color:black'>273<o:p></o:p></span></p><=
/td><td width=3D67 nowrap style=3D'width:49.95pt;border-top:none;border-lef=
t:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1=
.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal align=
=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif";color:black'>0<o:p></o:p></span></=
p></td><td width=3D59 nowrap style=3D'width:44.55pt;border-top:none;border-=
left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtex=
t 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal al=
ign=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif";color:black'>260<o:p></o:p></sp=
an></p></td><td width=3D82 nowrap style=3D'width:61.4pt;border-top:none;bor=
der-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windo=
wtext 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNorma=
l align=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'fo=
nt-size:10.0pt;font-family:"Arial","sans-serif";color:red'>13<o:p></o:p></s=
pan></p></td><td width=3D78 style=3D'width:58.35pt;border-top:none;border-l=
eft:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext=
 1.0pt;padding:0cm 5.4pt 0cm 5.4pt;height:14.25pt'><p class=3DMsoNormal ali=
gn=3Dcenter style=3D'text-align:center'><span lang=3DEN-US style=3D'font-si=
ze:10.0pt;font-family:"Arial","sans-serif";color:red'>0<o:p></o:p></span></=
p></td></tr></table><p class=3DMsoNormal><b><span lang=3DEN-US style=3D'fon=
t-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></b=
></p><table class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=
=3D0 width=3D674 style=3D'width:505.25pt;margin-left:-.75pt;border-collapse=
:collapse'><tr><td width=3D72 style=3D'width:54.0pt;padding:0cm 0cm 0cm 0cm=
'></td><td width=3D121 style=3D'width:91.0pt;padding:0cm 0cm 0cm 0cm'></td>=
<td width=3D72 colspan=3D2 style=3D'width:54.25pt;padding:0cm 0cm 0cm 0cm'>=
</td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;padding:0cm 0cm 0cm 0=
cm'></td><td width=3D72 colspan=3D2 style=3D'width:54.0pt;padding:0cm 0cm 0=
cm 0cm'></td><td width=3D130 colspan=3D2 style=3D'width:97.75pt;padding:0cm=
 0cm 0cm 0cm'></td><td width=3D3 colspan=3D2 style=3D'width:2.25pt;padding:=
0cm 0cm 0cm 0cm'></td><td width=3D131 colspan=3D2 style=3D'width:98.0pt;pad=
ding:0cm 0cm 0cm 0cm'></td></tr><tr><td width=3D72 style=3D'width:54.0pt;pa=
dding:0cm 0cm 0cm 0cm'></td><td width=3D121 style=3D'width:91.0pt;padding:0=
cm 0cm 0cm 0cm'></td><td width=3D29 style=3D'width:22.0pt;padding:0cm 0cm 0=
cm 0cm'></td><td width=3D43 style=3D'width:32.25pt;padding:0cm 0cm 0cm 0cm'=
></td><td width=3D29 style=3D'width:21.75pt;padding:0cm 0cm 0cm 0cm'></td><=
td width=3D43 style=3D'width:32.25pt;padding:0cm 0cm 0cm 0cm'></td><td widt=
h=3D29 style=3D'width:21.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D43 =
style=3D'width:32.25pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D29 style=
=3D'width:21.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D101 style=3D'wi=
dth:76.0pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D2 style=3D'width:1.5pt=
;padding:0cm 0cm 0cm 0cm'></td><td width=3D1 style=3D'width:.75pt;padding:0=
cm 0cm 0cm 0cm'></td><td width=3D71 style=3D'width:53.55pt;padding:0cm 0cm =
0cm 0cm'></td><td width=3D59 style=3D'width:44.45pt;padding:0cm 0cm 0cm 0cm=
'></td></tr><tr><td width=3D72 style=3D'width:54.0pt;padding:0cm 0cm 0cm 0c=
m'></td><td width=3D121 style=3D'width:90.75pt;padding:0cm 0cm 0cm 0cm'></t=
d><td width=3D29 style=3D'width:21.75pt;padding:0cm 0cm 0cm 0cm'></td><td w=
idth=3D43 style=3D'width:32.25pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D=
29 style=3D'width:21.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D43 styl=
e=3D'width:32.25pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D29 style=3D'wi=
dth:21.75pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D43 style=3D'width:32.=
25pt;padding:0cm 0cm 0cm 0cm'></td><td width=3D29 style=3D'width:21.75pt;pa=
dding:0cm 0cm 0cm 0cm'></td><td width=3D101 style=3D'width:75.75pt;padding:=
0cm 0cm 0cm 0cm'></td><td width=3D2 style=3D'width:1.5pt;padding:0cm 0cm 0c=
m 0cm'></td><td width=3D1 style=3D'width:.75pt;padding:0cm 0cm 0cm 0cm'></t=
d><td width=3D71 style=3D'width:53.25pt;padding:0cm 0cm 0cm 0cm'></td><td w=
idth=3D59 style=3D'width:44.25pt;padding:0cm 0cm 0cm 0cm'></td></tr></table=
><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-=
family:"Arial","sans-serif"'>* You can check the detailed test result in at=
tachment for each target.<o:p></o:p></span></p><p class=3DMsoPlainText><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>=
** The failed/blocked case number is listed with failed cases=A1=AF bug num=
ber.<o:p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=
=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></s=
pan></p><p class=3DMsoPlainText><b><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif"'>Images<o:p></o:p></span></b></p><p c=
lass=3DMsoNormal><b><span lang=3DEN-US style=3D'font-size:10.0pt;font-famil=
y:"Arial","sans-serif"'>---------------------------------------<o:p></o:p><=
/span></b></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size=
:10.0pt;font-family:"Arial","sans-serif"'>Image: <a href=3D"http://autobuil=
der03.jf.intel.com/nightly/20110412-1/">http://autobuilder03.jf.intel.com/n=
ightly/20110412-1/</a><o:p></o:p></span></p><p class=3DMsoPlainText><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Tre=
e/Branch: Poky/Master<o:p></o:p></span></p><p class=3DMsoPlainText><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Comm=
it: 6bf6aec120744211fbabf2b4a167bfd1ab5866fd<o:p></o:p></span></p><p class=
=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><b>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>Issue Summary<o:p></o:p></span></b></p><p class=3DMsoNormal><b><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>----=
-----------------------------------<o:p></o:p></span></b></p><p class=3DMso=
PlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial",=
"sans-serif"'>Zypper:<o:p></o:p></span></p><p class=3DMsoPlainText style=3D=
'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l0 level1 lfo2'><![if !sup=
portLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial"=
,"sans-serif"'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt =
"Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'>New! [zypper] zypper can not install packages which from 'all' director=
y in repository<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margi=
n-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ar=
ial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=
=3D993">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D993</a><o:p></o:p><=
/span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.=
0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'>SDK:<o:p></o:p></span></p><p class=3DMsoPlainText style=
=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l1 level1 lfo4'><![if !=
supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Ari=
al","sans-serif"'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0=
pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endi=
f]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'>[PPC] kernel panic when booting poky-image-sdk-qemuppc through UNFS<=
o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D414">http://b=
ugzilla.pokylinux.org/show_bug.cgi?id=3D414</a><o:p></o:p></span></p><p cla=
ss=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'>BSP/Build:<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-=
left:18.0pt;text-indent:-18.0pt;mso-list:l2 level1 lfo9'><![if !supportList=
s]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times N=
ew Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>New!=
 do_bootimg failed on sugarbay, jasperforest, n450:&nbsp; .../kernel/bzImag=
e: No such file or directory<o:p></o:p></span></p><p class=3DMsoPlainText s=
tyle=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/sh=
ow_bug.cgi?id=3D987">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D987</a=
><o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt;=
text-indent:-18.0pt;mso-list:l2 level1 lfo9'><![if !supportLists]><span lan=
g=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'><span=
 style=3D'mso-list:Ignore'>2.<span style=3D'font:7.0pt "Times New Roman"'>&=
nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=3DEN-US s=
tyle=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>New! do_rootfs f=
ailed on crownbay-noemgd: Unable to find package locale-base-en-us!<o:p></o=
:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span la=
ng=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>http=
://bugzilla.pokylinux.org/show_bug.cgi?id=3D986<o:p></o:p></span></p><p cla=
ss=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:=
"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainText><=
span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif=
"'>Others:<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-lef=
t:18.0pt;text-indent:-18.0pt;mso-list:l3 level1 lfo6'><![if !supportLists]>=
<span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-seri=
f"'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7.0pt "Times New =
Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![endif]><span lang=
=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>autobu=
ilder build failed for mpc8315e-rdb lsb in nightly build (20110412-1)<o:p><=
/o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><span =
lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>ht=
tp://bugzilla.pokylinux.org/show_bug.cgi?id=3D995<o:p></o:p></span></p><p c=
lass=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-lis=
t:l3 level1 lfo6'><![if !supportLists]><span lang=3DEN-US style=3D'font-siz=
e:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>=
2.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </s=
pan></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;fo=
nt-family:"Arial","sans-serif"'>qemuarm cannot shutdown entirely through UN=
FS<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt=
'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D962">http:=
//bugzilla.pokylinux.org/show_bug.cgi?id=3D962</a><o:p></o:p></span></p><p =
class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-fami=
ly:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlainTex=
t><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-se=
rif"'>Verified Fixed Bugs:<o:p></o:p></span></p><p class=3DMsoPlainText sty=
le=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l4 level1 lfo8'><![if=
 !supportLists]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"A=
rial","sans-serif"'><span style=3D'mso-list:Ignore'>1.<span style=3D'font:7=
.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><![en=
dif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'>no sdk rootfs file found in qemuppc nightly build (20110404-1)<o:p=
></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0pt'><spa=
n lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>=
<a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D958">http://bugz=
illa.pokylinux.org/show_bug.cgi?id=3D958</a><o:p></o:p></span></p><p class=
=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-list:l4=
 level1 lfo8'><![if !supportLists]><span lang=3DEN-US style=3D'font-size:10=
.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore'>2.<s=
pan style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; </span>=
</span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'>gcc segfault on qemuppc (nightly build 20110226=
-1)<o:p></o:p></span></p><p class=3DMsoPlainText style=3D'margin-left:18.0p=
t'><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-s=
erif"'><a href=3D"http://bugzilla.pokylinux.org/show_bug.cgi?id=3D780">http=
://bugzilla.pokylinux.org/show_bug.cgi?id=3D780</a><o:p></o:p></span></p><p=
 class=3DMsoPlainText style=3D'margin-left:18.0pt;text-indent:-18.0pt;mso-l=
ist:l3 level1 lfo6'><![if !supportLists]><span lang=3DEN-US style=3D'font-s=
ize:10.0pt;font-family:"Arial","sans-serif"'><span style=3D'mso-list:Ignore=
'>3.<span style=3D'font:7.0pt "Times New Roman"'>&nbsp;&nbsp;&nbsp;&nbsp; <=
/span></span></span><![endif]><span lang=3DEN-US style=3D'font-size:10.0pt;=
font-family:"Arial","sans-serif"'>no rootfs file found in mpc8315e-rdb nigh=
tly build (20110404-1)<o:p></o:p></span></p><p class=3DMsoPlainText style=
=3D'margin-left:18.0pt'><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'><a href=3D"http://bugzilla.pokylinux.org/show_b=
ug.cgi?id=3D957">http://bugzilla.pokylinux.org/show_bug.cgi?id=3D957</a><o:=
p></o:p></span></p><p class=3DMsoPlainText><span lang=3DEN-US style=3D'font=
-size:10.0pt;font-family:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p>=
<p class=3DMsoPlainText><span lang=3DEN-US style=3D'font-size:10.0pt;font-f=
amily:"Arial","sans-serif"'><o:p>&nbsp;</o:p></span></p><p class=3DMsoPlain=
Text><span lang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans=
-serif"'>Best Regards,<o:p></o:p></span></p><p class=3DMsoPlainText><span l=
ang=3DEN-US style=3D'font-size:10.0pt;font-family:"Arial","sans-serif"'>Jia=
jun<o:p></o:p></span></p></div></body></html>=

--_000_D5AB6E638E5A3E4B8F4406B113A5A19A507AA144shsmsx501ccrcor_--

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A507AA144shsmsx501ccrcor_
Content-Type: application/oleobject;
	name="weekly_detail_testreport-20110412.ods"
Content-Description: weekly_detail_testreport-20110412.ods
Content-Disposition: attachment;
	filename="weekly_detail_testreport-20110412.ods"; size=16298;
	creation-date="Thu, 07 Apr 2011 15:04:23 GMT";
	modification-date="Mon, 18 Apr 2011 16:31:34 GMT"
Content-Transfer-Encoding: base64

UEsDBBQAAAgAAPFDkj6FbDmKLgAAAC4AAAAIAAAAbWltZXR5cGVhcHBsaWNhdGlvbi92bmQub2Fz
aXMub3BlbmRvY3VtZW50LnNwcmVhZHNoZWV0UEsDBBQAAAgAAPFDkj4AAAAAAAAAAAAAAAAaAAAA
Q29uZmlndXJhdGlvbnMyL3N0YXR1c2Jhci9QSwMEFAAICAgA8UOSPgAAAAAAAAAAAAAAACcAAABD
b25maWd1cmF0aW9uczIvYWNjZWxlcmF0b3IvY3VycmVudC54bWwDAFBLBwgAAAAAAgAAAAAAAABQ
SwMEFAAACAAA8UOSPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvZmxvYXRlci9QSwME
FAAACAAA8UOSPgAAAAAAAAAAAAAAABoAAABDb25maWd1cmF0aW9uczIvcG9wdXBtZW51L1BLAwQU
AAAIAADxQ5I+AAAAAAAAAAAAAAAAHAAAAENvbmZpZ3VyYXRpb25zMi9wcm9ncmVzc2Jhci9QSwME
FAAACAAA8UOSPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvbWVudWJhci9QSwMEFAAA
CAAA8UOSPgAAAAAAAAAAAAAAABgAAABDb25maWd1cmF0aW9uczIvdG9vbGJhci9QSwMEFAAACAAA
8UOSPgAAAAAAAAAAAAAAAB8AAABDb25maWd1cmF0aW9uczIvaW1hZ2VzL0JpdG1hcHMvUEsDBBQA
CAgIAPFDkj4AAAAAAAAAAAAAAAALAAAAY29udGVudC54bWztXeuuq8iZ/T9PgdzSKFGEzcX36X2i
nhO1FE2fVtRn90zyK2JD2aY3t3DZPrtfYX7mPfIGeZvMe0wV2Bh7Gx/AwAZqdaTubFMUH99a9VUB
a8G3v/9iW8IL8QPTdR5G8lgaCcTRXcN0tg+jnx+/F5ej33/4t2/dzcbUydpw9cgmTijqrhPS/wp0
bydYJ1sfRpHvrF0tMIO1o9kkWIf62vWIc9xrnW29jo+V/BKEr1bh3ePG2b1D8iUsujNre7av9lT8
yHHj7N6Gr+2L7sza0qRmd9+4RXf+EljixqVZtz0tNC+i+GKZzvPDaBeG3noy2e/34706dv3tRF6t
VpN4axqwnrbzIt+KWxn6hFiEHSyYyGN5cmxrk1ArGh9rmw3Jiewn4hdOjRZqb1D1fBLQJvR0GTGL
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
qx2j14qg7dnxkGnfwRDhessae5ZNZ/8lm8aYQEcae/QypiMu8fIk8edXe4bYGWnnEo+hwujsNL2y
rqLVWkak8hKfLi3Guq6OL1X2KnP29/f/+P34kv6nXyWSMOL5j0ap0FQDfTIz9Zl5mQleBqFdGc+G
q5GWJ+RLu/n1dZ4wvtYR/rTyiE8vO8he+1k9Fc3/D1BLBwgAo0wiZwwAAFWTAABQSwMEFAAACAAA
8UOSPsvEd3esAwAArAMAAAgAAABtZXRhLnhtbDw/eG1sIHZlcnNpb249IjEuMCIgZW5jb2Rpbmc9
IlVURi04Ij8+CjxvZmZpY2U6ZG9jdW1lbnQtbWV0YSB4bWxuczpvZmZpY2U9InVybjpvYXNpczpu
YW1lczp0YzpvcGVuZG9jdW1lbnQ6eG1sbnM6b2ZmaWNlOjEuMCIgeG1sbnM6eGxpbms9Imh0dHA6
Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxl
bWVudHMvMS4xLyIgeG1sbnM6bWV0YT0idXJuOm9hc2lzOm5hbWVzOnRjOm9wZW5kb2N1bWVudDp4
bWxuczptZXRhOjEuMCIgeG1sbnM6b29vPSJodHRwOi8vb3Blbm9mZmljZS5vcmcvMjAwNC9vZmZp
Y2UiIHhtbG5zOmdyZGRsPSJodHRwOi8vd3d3LnczLm9yZy8yMDAzL2cvZGF0YS12aWV3IyIgb2Zm
aWNlOnZlcnNpb249IjEuMiIgZ3JkZGw6dHJhbnNmb3JtYXRpb249Imh0dHA6Ly9kb2NzLm9hc2lz
LW9wZW4ub3JnL29mZmljZS8xLjIveHNsdC9vZGYycmRmLnhzbCI+PG9mZmljZTptZXRhPjxtZXRh
OmNyZWF0aW9uLWRhdGU+MjAxMS0wMy0wMlQxMzoxMzoxNi44MjwvbWV0YTpjcmVhdGlvbi1kYXRl
PjxkYzp0aXRsZT5UZXN0TGluazwvZGM6dGl0bGU+PGRjOmRhdGU+MjAxMS0wNC0xOFQxNjozMToz
NDwvZGM6ZGF0ZT48bWV0YTplZGl0aW5nLWR1cmF0aW9uPlBUMjlINTBNMjFTPC9tZXRhOmVkaXRp
bmctZHVyYXRpb24+PG1ldGE6ZWRpdGluZy1jeWNsZXM+NTY8L21ldGE6ZWRpdGluZy1jeWNsZXM+
PG1ldGE6Z2VuZXJhdG9yPk9wZW5PZmZpY2Uub3JnLzMuMiRXaW4zMiBPcGVuT2ZmaWNlLm9yZ19w
cm9qZWN0LzMyMG0xOCRCdWlsZC05NTAyPC9tZXRhOmdlbmVyYXRvcj48bWV0YTpkb2N1bWVudC1z
dGF0aXN0aWMgbWV0YTp0YWJsZS1jb3VudD0iMTMiIG1ldGE6Y2VsbC1jb3VudD0iODYzIiBtZXRh
Om9iamVjdC1jb3VudD0iMCIvPjwvb2ZmaWNlOm1ldGE+PC9vZmZpY2U6ZG9jdW1lbnQtbWV0YT5Q
SwMEFAAICAgA8UOSPgAAAAAAAAAAAAAAABgAAABUaHVtYm5haWxzL3RodW1ibmFpbC5wbmftV2dQ
EwqXjT4VG6CUF3qeoBSl92KCUqVGqQ8QUBQCQqgBpUhABKUG6QhJgEjyCJ08QEKTB4I0AQlEQYoE
AqEECS20sO73zezv/bW7P/bXuTPnzp0799y5c0/iXWtT7vMi5wEAALfZHSObX/gRADgBOHvyV5Ry
9poAAMCTZWZ02+5Z4RoanEG0FIqfJDaf5rZ8rSCt7HniT6/Vjhfc2okWeUZaMQsSA/JOMWWxWSqJ
J+RfVCOLO4JMWte/D41snnoq5CPizZMqMaS3C3XKuQiQ5BzOcAEw55fO3T0JPmFeJHPr3NYp2VgM
4Nowf9GpiJNZt6AxfP9jpAGUUbf5e5k7zVCYDHzb54W/Tb5fN6yukLHLq1lwMIUM/DBbfDkiuLPu
YsZCtJCbjdHbq+AZ3oZaNQpfcGeN25R4GtcBSN/u5wVv/XW23aiowldEs3iKyZu31UmPNUS4eTzv
avla+YCPJvp6VSxa1eHgBb/C3BC5REOxSrFiAchRl4uKCproVQWEEvxuXnh1cBWoJGYKDpNdzMVk
zxoPR5hTcbJJYJVRvwj0ZSyCx9LyVhAEZnC/Z8T0H1iFrEewQxJN21leSDTST61vv4nk9FMYTmWs
tj07Pu0GqJTZ+N289Qpr0VMn14IuCLm9ATzqvpHSLkxdW0Aee4wfZz46g7pwePK/N6nHEXV88u49
rOXxjbCVrecz8La2TczBjQWXM+aEV3OGzEIW/Q5YFrGZSRrs5zh/6phU0IffeycX4nrZUdbaFJIx
XUVa0Wo3COv8Av87yqBK4i/Jva+fttLT/9A7TFKa7N2a34e071JKXkt8mgwkD8o4BXyci+U/tUqD
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

--_004_D5AB6E638E5A3E4B8F4406B113A5A19A507AA144shsmsx501ccrcor_--
