Return-Path: <AMardegan@luxoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE86EE00C99; Thu, 21 Sep 2017 07:08:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [109.166.244.23 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from ORO-EDGE-03.luxoft.com (oro-edge-03.luxoft.com [109.166.244.23])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23419E00C7B
	for <poky@yoctoproject.org>; Thu, 21 Sep 2017 07:08:16 -0700 (PDT)
Received: from ORO-HUBT-01.luxoft.com (172.30.115.41) by
	oro-edge-03.luxoft.com (172.30.19.23) with Microsoft SMTP Server (TLS)
	id 14.3.319.2; Thu, 21 Sep 2017 17:08:13 +0300
Received: from ORO-MBOX-01.luxoft.com ([fe80::387f:bf07:869c:b95e]) by
	ORO-HUBT-01.luxoft.com ([::1]) with mapi id 14.03.0319.002;
	Thu, 21 Sep 2017 17:08:14 +0300
From: "Mardegan, Alberto" <AMardegan@luxoft.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [PATCH] bitbake: lib/bb/utils: fix movefile() copy to dir
	fallback
Thread-Index: AQHTMuMQ/wm2bWcuoUyJZqdBgkJCPA==
Date: Thu, 21 Sep 2017 14:08:13 +0000
Message-ID: <4c4a33cb-b2d8-f56f-f037-6769b77f70f0@luxoft.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [172.31.240.120]
MIME-Version: 1.0
Subject: [PATCH] bitbake: lib/bb/utils: fix movefile() copy to dir fallback
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
X-List-Received-Date: Thu, 21 Sep 2017 14:08:18 -0000
X-Groupsio-MsgNum: 11014
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_4c4a33cbb2d8f56ff0376769b77f70f0luxoftcom_"

--_002_4c4a33cbb2d8f56ff0376769b77f70f0luxoftcom_
Content-Type: text/plain; charset="utf-8"
Content-ID: <4E8DB03B6C269C48A0B149BC87121156@luxoft.com>
Content-Transfer-Encoding: base64

DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KDQpUaGlzIGUtbWFpbCBhbmQgYW55
IGF0dGFjaG1lbnQocykgYXJlIGludGVuZGVkIG9ubHkgZm9yIHRoZSByZWNpcGllbnQocykgbmFt
ZWQgYWJvdmUgYW5kIG90aGVycyB3aG8gaGF2ZSBiZWVuIHNwZWNpZmljYWxseSBhdXRob3JpemVk
IHRvIHJlY2VpdmUgdGhlbS4gVGhleSBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgaW5mb3JtYXRp
b24uIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBkbyBub3Qg
cmVhZCB0aGlzIGVtYWlsIG9yIGl0cyBhdHRhY2htZW50KHMpLiBGdXJ0aGVybW9yZSwgeW91IGFy
ZSBoZXJlYnkgbm90aWZpZWQgdGhhdCBhbnkgZGlzc2VtaW5hdGlvbiwgZGlzdHJpYnV0aW9uIG9y
IGNvcHlpbmcgb2YgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGlzIHN0cmljdGx5
IHByb2hpYml0ZWQuIElmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZS1tYWlsIGluIGVycm9yLCBw
bGVhc2UgaW1tZWRpYXRlbHkgbm90aWZ5IHRoZSBzZW5kZXIgYnkgcmVwbHlpbmcgdG8gdGhpcyBl
LW1haWwgYW5kIHRoZW4gZGVsZXRlIHRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudChzKSBv
ciBjb3BpZXMgdGhlcmVvZiBmcm9tIHlvdXIgc3lzdGVtLiBUaGFuayB5b3UuDQo=

--_002_4c4a33cbb2d8f56ff0376769b77f70f0luxoftcom_
Content-Type: text/x-patch;
	name="0001-bitbake-lib-bb-utils-fix-movefile-copy-to-dir-fallba.patch"
Content-Description: 0001-bitbake-lib-bb-utils-fix-movefile-copy-to-dir-fallba.patch
Content-Disposition: attachment;
	filename="0001-bitbake-lib-bb-utils-fix-movefile-copy-to-dir-fallba.patch";
	size=2664; creation-date="Thu, 21 Sep 2017 14:08:13 GMT";
	modification-date="Thu, 21 Sep 2017 14:08:13 GMT"
Content-ID: <CA70DFA8C063FD45BF8FE2539A9A66F3@luxoft.com>
Content-Transfer-Encoding: base64

RnJvbSA2ODUzNzNhMmQ3OGFmMjNkZThlMjliZjRmNzcxYWY2YjdmMjhmZGYwIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQ0KRnJvbTogQWxiZXJ0byBNYXJkZWdhbiA8YW1hcmRlZ2FuQGx1eG9mdC5j
b20+DQpEYXRlOiBXZWQsIDIwIFNlcCAyMDE3IDE2OjM1OjAwICswMjAwDQpTdWJqZWN0OiBbUEFU
Q0hdIGJpdGJha2U6IGxpYi9iYi91dGlsczogZml4IG1vdmVmaWxlKCkgY29weSB0byBkaXIgZmFs
bGJhY2sNCg0KV2hlbiB0aGUgZGVzdGluYXRpb24gaXMgYSBkaXJlY3RvcnksIGJ1aWxkaW5nIHRo
ZSB0aGUgZGVzdGluYXRpb24gZmlsZQ0KcGF0aCBpcyBhbHdheXMgbmVlZGVkLiAgVGhhdCdzIGJl
Y2F1c2UgZXZlbiBpZiB0aGUgY29weSBmYWxsYmFjayBpcw0KdGFrZW4sIGl0J3MgYWx3YXlzIGZv
bGxvd2VkIGJ5IGEgcmVuYW1lLg0KDQpTaWduZWQtb2ZmLWJ5OiBBbGJlcnRvIE1hcmRlZ2FuIDxh
bWFyZGVnYW5AbHV4b2Z0LmNvbT4NCi0tLQ0KIGJpdGJha2UvbGliL2JiL3V0aWxzLnB5IHwgMTkg
KysrKysrKysrKy0tLS0tLS0tLQ0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA5
IGRlbGV0aW9ucygtKQ0KDQpkaWZmIC0tZ2l0IGEvYml0YmFrZS9saWIvYmIvdXRpbHMucHkgYi9i
aXRiYWtlL2xpYi9iYi91dGlscy5weQ0KaW5kZXggODU1MGFmMy4uYzU0MGI0OSAxMDA2NDQNCi0t
LSBhL2JpdGJha2UvbGliL2JiL3V0aWxzLnB5DQorKysgYi9iaXRiYWtlL2xpYi9iYi91dGlscy5w
eQ0KQEAgLTc3MSwxMyArNzcxLDE0IEBAIGRlZiBtb3ZlZmlsZShzcmMsIGRlc3QsIG5ld210aW1l
ID0gTm9uZSwgc3N0YXQgPSBOb25lKToNCiAgICAgICAgICAgICByZXR1cm4gTm9uZQ0KIA0KICAg
ICByZW5hbWVmYWlsZWQgPSAxDQorICAgICMgb3MucmVuYW1lIG5lZWRzIHRvIGtub3cgdGhlIGRl
c3QgcGF0aCBlbmRpbmcgd2l0aCBmaWxlIG5hbWUNCisgICAgIyBzbyBhcHBlbmQgdGhlIGZpbGUg
bmFtZSB0byBhIHBhdGggb25seSBpZiBpdCdzIGEgZGlyIHNwZWNpZmllZA0KKyAgICBzcmNmbmFt
ZSA9IG9zLnBhdGguYmFzZW5hbWUoc3JjKQ0KKyAgICBkZXN0cGF0aCA9IG9zLnBhdGguam9pbihk
ZXN0LCBzcmNmbmFtZSkgaWYgb3MucGF0aC5pc2RpcihkZXN0KSBcDQorICAgICAgICAgICAgICAg
IGVsc2UgZGVzdA0KKw0KICAgICBpZiBzc3RhdFtzdGF0LlNUX0RFVl0gPT0gZHN0YXRbc3RhdC5T
VF9ERVZdOg0KICAgICAgICAgdHJ5Og0KLSAgICAgICAgICAgICMgb3MucmVuYW1lIG5lZWRzIHRv
IGtub3cgdGhlIGRlc3QgcGF0aCBlbmRpbmcgd2l0aCBmaWxlIG5hbWUNCi0gICAgICAgICAgICAj
IHNvIGFwcGVuZCB0aGUgZmlsZSBuYW1lIHRvIGEgcGF0aCBvbmx5IGlmIGl0J3MgYSBkaXIgc3Bl
Y2lmaWVkDQotICAgICAgICAgICAgc3JjZm5hbWUgPSBvcy5wYXRoLmJhc2VuYW1lKHNyYykNCi0g
ICAgICAgICAgICBkZXN0cGF0aCA9IG9zLnBhdGguam9pbihkZXN0LCBzcmNmbmFtZSkgaWYgb3Mu
cGF0aC5pc2RpcihkZXN0KSBcDQotICAgICAgICAgICAgICAgICAgICAgICAgZWxzZSBkZXN0DQog
ICAgICAgICAgICAgb3MucmVuYW1lKHNyYywgZGVzdHBhdGgpDQogICAgICAgICAgICAgcmVuYW1l
ZmFpbGVkID0gMA0KICAgICAgICAgZXhjZXB0IEV4Y2VwdGlvbiBhcyBlOg0KQEAgLTc5MSw4ICs3
OTIsOCBAQCBkZWYgbW92ZWZpbGUoc3JjLCBkZXN0LCBuZXdtdGltZSA9IE5vbmUsIHNzdGF0ID0g
Tm9uZSk6DQogICAgICAgICBkaWRjb3B5ID0gMA0KICAgICAgICAgaWYgc3RhdC5TX0lTUkVHKHNz
dGF0W3N0YXQuU1RfTU9ERV0pOg0KICAgICAgICAgICAgIHRyeTogIyBGb3Igc2FmZXR5IGNvcHkg
dGhlbiBtb3ZlIGl0IG92ZXIuDQotICAgICAgICAgICAgICAgIHNodXRpbC5jb3B5ZmlsZShzcmMs
IGRlc3QgKyAiI25ldyIpDQotICAgICAgICAgICAgICAgIG9zLnJlbmFtZShkZXN0ICsgIiNuZXci
LCBkZXN0KQ0KKyAgICAgICAgICAgICAgICBzaHV0aWwuY29weWZpbGUoc3JjLCBkZXN0cGF0aCAr
ICIjbmV3IikNCisgICAgICAgICAgICAgICAgb3MucmVuYW1lKGRlc3RwYXRoICsgIiNuZXciLCBk
ZXN0cGF0aCkNCiAgICAgICAgICAgICAgICAgZGlkY29weSA9IDENCiAgICAgICAgICAgICBleGNl
cHQgRXhjZXB0aW9uIGFzIGU6DQogICAgICAgICAgICAgICAgIHByaW50KCdtb3ZlZmlsZTogY29w
eScsIHNyYywgJy0+JywgZGVzdCwgJ2ZhaWxlZC4nLCBlKQ0KQEAgLTgxMyw5ICs4MTQsOSBAQCBk
ZWYgbW92ZWZpbGUoc3JjLCBkZXN0LCBuZXdtdGltZSA9IE5vbmUsIHNzdGF0ID0gTm9uZSk6DQog
ICAgICAgICAgICAgcmV0dXJuIE5vbmUNCiANCiAgICAgaWYgbmV3bXRpbWU6DQotICAgICAgICBv
cy51dGltZShkZXN0LCAobmV3bXRpbWUsIG5ld210aW1lKSkNCisgICAgICAgIG9zLnV0aW1lKGRl
c3RwYXRoLCAobmV3bXRpbWUsIG5ld210aW1lKSkNCiAgICAgZWxzZToNCi0gICAgICAgIG9zLnV0
aW1lKGRlc3QsIChzc3RhdFtzdGF0LlNUX0FUSU1FXSwgc3N0YXRbc3RhdC5TVF9NVElNRV0pKQ0K
KyAgICAgICAgb3MudXRpbWUoZGVzdHBhdGgsIChzc3RhdFtzdGF0LlNUX0FUSU1FXSwgc3N0YXRb
c3RhdC5TVF9NVElNRV0pKQ0KICAgICAgICAgbmV3bXRpbWUgPSBzc3RhdFtzdGF0LlNUX01USU1F
XQ0KICAgICByZXR1cm4gbmV3bXRpbWUNCiANCi0tIA0KMi43LjQNCg0K

--_002_4c4a33cbb2d8f56ff0376769b77f70f0luxoftcom_--
