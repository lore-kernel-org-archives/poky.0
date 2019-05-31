Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01B45E00D59; Fri, 31 May 2019 07:21:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [67.219.246.4 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from mail1.bemta23.messagelabs.com (mail1.bemta23.messagelabs.com
	[67.219.246.4])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 580E5E009A0
	for <poky@yoctoproject.org>; Fri, 31 May 2019 07:21:01 -0700 (PDT)
Received: from [67.219.246.101] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-4.bemta.az-b.us-east-1.aws.symcld.net id 43/E7-22130-C4831FC5;
	Fri, 31 May 2019 14:21:00 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNKsWRWlGSWpSXmKPExsXi5LtOQNfH4mO
	Mwd13nBbT/61ht5j69yajA5PHzll32T3aT/SxBTBFsWbmJeVXJLBmNDbfZC2YKlHR/v8TewPj
	G/EuRi4OIYHVjBInPjxgh3D2Mkps3fKcqYuRk4NNwFDi3Ja37CC2iICxxMxPS1hBbGaBMIn2I
	+1gcWEBR4mbb29D1bhJvF7ziBnCNpJ4eHYjWD2LgKrEid9PGEFsXgFriRm3X4LNFwKymz9cYA
	OxOQVsJFY+mwMWZxQQk/h+ag0TxC5xiVtP5oPZEgICEkv2nGeGsEUlXj7+xwphy0vMuXUa6AY
	OoHpNifW79CFazSV+Pl/NCGErSkzpfsgOcYKgxMmZT1hAyoUEVCTmbNCawCg2C8myWQiDZiEZ
	NAvJoFlIBi1gZF3FaJZUlJmeUZKbmJmja2hgoGtoaKRrrGtkYqmXWKWbpFdarJuaWFyia6iXW
	F6sV1yZm5yTopeXWrKJERiLKQXMP3cwdh14rXeIUZKDSUmUV1nzQ4wQX1J+SmVGYnFGfFFpTm
	rxIUYZDg4lCV4Gk48xQoJFqempFWmZOcC0AJOW4OBREuFlNwdK8xYXJOYWZ6ZDpE4x2nMcWPR
	wLjPHl/ZHQPLtwedAcsHNX/OYhVjy8vNSpcR5e0DaBEDaMkrz4IbC0tglRlkpYV5GBgYGIZ6C
	1KLczBJU+VeM4hyMSsK8ySBTeDLzSuB2vwI6iwnoLNFn70DOKklESEk1MOVJHxZ4ZrRrBvvTE
	w+59VZwTbP487rB1i6of4bBWXOH+7FZM198FM6cfeBQMUfwDV2XRWt03ZoDshN0f/1mtfqzM+
	RS6qmFqdmhpp+vSghblk4WyXjpF7i1JflIddoLz6+vljZUP8re+zznqfnJPd9nsLzjip1XFmw
	SNulZy2+/q7KrP539/UmlUWb6Ru280hk+XA0vKv/HHbCaU8uX37hrye2XC97rPjl4WUxRRrVj
	Y1WLZU3z5gfTldmjn7SE+61fybO23PbD7E+B68yWsE9/6hd16c3dbtk0oxW7U0tOba299mOVl
	NQ9hewDp7Pa2x1z380qvqb9m23R09AFqet+TPraE7U0TuFhIaN12yMlluKMREMt5qLiRAAncI
	b63gMAAA==
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-5.tower-385.messagelabs.com!1559312459!12791742!3
X-Originating-IP: [66.77.174.16]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.31.5; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 1413 invoked from network); 31 May 2019 14:21:00 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-5.tower-385.messagelabs.com with SMTP;
	31 May 2019 14:21:00 -0000
Received: from MTK-SMS-XCH04.digi.com (10.10.8.198) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Fri, 31 May 2019 09:20:43 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MTK-SMS-XCH04.digi.com ([fe80::ed97:4834:fa1b:3be7%19]) with mapi id
	14.03.0439.000; Fri, 31 May 2019 09:20:43 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Thread-Topic: [poky] Possible bug with alternative /sbin/rmt providers
Thread-Index: AQHVEJ8OVIDOJ5AW5Eyx9nGiaez4wKaFqqIA
Date: Fri, 31 May 2019 14:20:42 +0000
Message-ID: <74608DD8-25DD-4DC7-90ED-9268DBD441B6@digi.com>
References: <DF91CC19-47E1-46B3-98A5-D8A21C3CC3E5@digi.com>
In-Reply-To: <DF91CC19-47E1-46B3-98A5-D8A21C3CC3E5@digi.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.81.30]
MIME-Version: 1.0
Subject: Possible bug with alternative /sbin/rmt providers
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
X-List-Received-Date: Fri, 31 May 2019 14:21:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <F052F2620FFD4D48A1E5803C7E9836FB@digi.com>
Content-Transfer-Encoding: base64

SGVsbG8gQWxsLA0KDQpJ4oCZdmUgcmVjZW50bHkgcnVuIGludG8gYSBwcm9ibGVtIHdoZXJlIGNw
aW8tbmF0aXZlIGFuZCB0YXItbmF0aXZlIGFyZSBlYWNoIHRyeWluZyB0byBpbnN0YWxsIC9zYmlu
L3JtdC4gIElzIHRoaXMgYmVjYXVzZSB0aGUgYWx0ZXJuYXRpdmUgcHJpb3JpdHkgbGV2ZWxzIGFy
ZSB0aGUgc2FtZT8gIEkgdGVzdGVkIHdpdGggZGlmZmVyZW50IHByaW9yaXRpZXMsIGFuZCBpdCBz
dGlsbCBmYWlsZWQuDQoNCkVSUk9SOiBtYW51Zi1pbWFnZS0xLjAtcjAgZG9faW1hZ2VfY3Bpbzog
RXJyb3IgZXhlY3V0aW5nIGEgcHl0aG9uIGZ1bmN0aW9uIGluIGV4ZWNfcHl0aG9uX2Z1bmMoKSBh
dXRvZ2VuZXJhdGVkOg0KDQpUaGUgc3RhY2sgdHJhY2Ugb2YgcHl0aG9uIGNhbGxzIHRoYXQgcmVz
dWx0ZWQgaW4gdGhpcyBleGNlcHRpb24vZmFpbHVyZSB3YXM6DQpGaWxlOiAnZXhlY19weXRob25f
ZnVuYygpIGF1dG9nZW5lcmF0ZWQnLCBsaW5lbm86IDIsIGZ1bmN0aW9uOiA8bW9kdWxlPg0KICAg
IDAwMDE6DQoqKiogMDAwMjpleHRlbmRfcmVjaXBlX3N5c3Jvb3QoZCkNCiAgICAwMDAzOg0KRmls
ZTogJy9ob21lL3NldGgvcHJvamVjdHMvYXd1c2IvbGF5ZXJzL3Bva3kvbWV0YS9jbGFzc2VzL3N0
YWdpbmcuYmJjbGFzcycsIGxpbmVubzogNTQ1LCBmdW5jdGlvbjogZXh0ZW5kX3JlY2lwZV9zeXNy
b290DQogICAgMDU0MTogICAgICAgICAgICAgICAgICAgIGRlc3QgPSBuZXdtYW5pZmVzdFtsXQ0K
ICAgIDA1NDI6ICAgICAgICAgICAgICAgICAgICBpZiBsLmVuZHN3aXRoKCIvIik6DQogICAgMDU0
MzogICAgICAgICAgICAgICAgICAgICAgICBzdGFnaW5nX2NvcHlkaXIobCwgdGFyZ2V0ZGlyLCBk
ZXN0LCBzZWVuZGlycykNCiAgICAwNTQ0OiAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVl
DQoqKiogMDU0NTogICAgICAgICAgICAgICAgICAgIHN0YWdpbmdfY29weWZpbGUobCwgdGFyZ2V0
ZGlyLCBkZXN0LCBwb3N0aW5zdHMsIHNlZW5kaXJzKQ0KICAgIDA1NDY6DQogICAgMDU0NzogICAg
YmIubm90ZSgiSW5zdGFsbGVkIGludG8gc3lzcm9vdDogJXMiICUgc3RyKG1zZ19hZGRpbmcpKQ0K
ICAgIDA1NDg6ICAgIGJiLm5vdGUoIlNraXBwaW5nIGFzIGFscmVhZHkgZXhpc3RzIGluIHN5c3Jv
b3Q6ICVzIiAlIHN0cihtc2dfZXhpc3RzKSkNCiAgICAwNTQ5Og0KRmlsZTogJy9ob21lL3NldGgv
cHJvamVjdHMvYXd1c2IvbGF5ZXJzL3Bva3kvbWV0YS9jbGFzc2VzL3N0YWdpbmcuYmJjbGFzcycs
IGxpbmVubzogMTUxLCBmdW5jdGlvbjogc3RhZ2luZ19jb3B5ZmlsZQ0KICAgIDAxNDc6ICAgICAg
ICBvcy5zeW1saW5rKGxpbmt0bywgZGVzdCkNCiAgICAwMTQ4OiAgICAgICAgI2JiLndhcm4oYykN
CiAgICAwMTQ5OiAgICBlbHNlOg0KICAgIDAxNTA6ICAgICAgICB0cnk6DQoqKiogMDE1MTogICAg
ICAgICAgICBvcy5saW5rKGMsIGRlc3QpDQogICAgMDE1MjogICAgICAgIGV4Y2VwdCBPU0Vycm9y
IGFzIGVycjoNCiAgICAwMTUzOiAgICAgICAgICAgIGlmIGVyci5lcnJubyA9PSBlcnJuby5FWERF
VjoNCiAgICAwMTU0OiAgICAgICAgICAgICAgICBiYi51dGlscy5jb3B5ZmlsZShjLCBkZXN0KQ0K
ICAgIDAxNTU6ICAgICAgICAgICAgZWxzZToNCkV4Y2VwdGlvbjogRmlsZUV4aXN0c0Vycm9yOiBb
RXJybm8gMTddIEZpbGUgZXhpc3RzOiAnL2hvbWUvc2V0aC9wcm9qZWN0cy9hd3VzYi9idWlsZC90
bXAvc3lzcm9vdHMtY29tcG9uZW50cy94ODZfNjQvY3Bpby1uYXRpdmUvc2Jpbi9ybXQnIC0+ICcv
aG9tZS9zZXRoL3Byb2plY3RzL2F3dXNiL2J1aWxkL3RtcC93b3JrL2F3dXNiMTAxMi1hd3VzYi1s
aW51eC9tYW51Zi1pbWFnZS8xLjAtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL3NiaW4vcm10Jw0K
DQpFUlJPUjogbWFudWYtaW1hZ2UtMS4wLXIwIGRvX2ltYWdlX2NwaW86IEZ1bmN0aW9uIGZhaWxl
ZDogZXh0ZW5kX3JlY2lwZV9zeXNyb290DQpFUlJPUjogTG9nZmlsZSBvZiBmYWlsdXJlIHN0b3Jl
ZCBpbjogL2hvbWUvc2V0aC9wcm9qZWN0cy9hd3VzYi9idWlsZC90bXAvd29yay9hd3VzYjEwMTIt
YXd1c2ItbGludXgvbWFudWYtaW1hZ2UvMS4wLXIwL3RlbXAvbG9nLmRvX2ltYWdlX2NwaW8uMjk3
NjENCkVSUk9SOiBUYXNrICgvaG9tZS9zZXRoL3Byb2plY3RzL2F3dXNiL2xheWVycy9wb2t5Ly4u
L21ldGEtbmV0d29yay1wcm9kdWN0cy9yZWNpcGVzLWNvcmUvaW1hZ2VzL21hbnVmLWltYWdlLmJi
OmRvX2ltYWdlX2NwaW8pIGZhaWxlZCB3aXRoIGV4aXQgY29kZSAnMScNCg0KVGhhbmtzLA0KDQpT
ZXRoDQoNCg==

