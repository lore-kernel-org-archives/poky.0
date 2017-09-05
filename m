Return-Path: <prvs=41429ceb1=Thomas.Koeller@baslerweb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 163F2E00C1C; Tue,  5 Sep 2017 09:49:50 -0700 (PDT)
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
Received: from mail01.baslerweb.com (mail01.baslerweb.com [80.156.24.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CCA9E009F5
	for <poky@yoctoproject.org>; Tue,  5 Sep 2017 09:49:47 -0700 (PDT)
Received: from unknown (HELO ahr205s.basler.corp) ([172.16.20.205])
	by mail01-out.baslerweb.com with ESMTP; 05 Sep 2017 18:49:47 +0200
From: "Koeller, Thomas" <Thomas.Koeller@baslerweb.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Thread-Topic: [poky] Dependency problem
Thread-Index: AdMmHUgytoDqI6qsQSmzMQu+23fGkQAA1+cAAA94DnA=
Date: Tue, 5 Sep 2017 16:49:46 +0000
Message-ID: <34fac4a1e7ae40e781523234d14d26d4@ahr206s.basler.corp>
References: <8caf136aac8d4d66a542ef056a92c331@ahr206s.basler.corp>
	<CAHiDW_EmDLUxb4q4g2e4cJR6AYEP6XEYMyMiiQQ=PgA7=JpKoA@mail.gmail.com>
In-Reply-To: <CAHiDW_EmDLUxb4q4g2e4cJR6AYEP6XEYMyMiiQQ=PgA7=JpKoA@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.16.20.16]
x-c2processedorg: edc209ba-7b98-423a-8e4d-b8fa22bc0743
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Dependency problem
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
X-List-Received-Date: Tue, 05 Sep 2017 16:49:50 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogSnVzc2kgS3Vra29uZW4gW21haWx0bzpqdXNzaS5rdWtrb25lbkBpbnRlbC5jb21dDQoN
Cg0KVGhvbWFzIEtvZWxsZXINClNlbmlvciBTb2Z0d2FyZSBEZXZlbG9wZXINCg0KDQoNCkJhc2xl
ciBBRw0KQW4gZGVyIFN0cnVzYmVrIDYwLTYyDQoyMjkyNiBBaHJlbnNidXJnDQpHZXJtYW55DQoN
ClRlbC4gKzQ5IDQxMDIgNDYzIDM5MA0KRmF4ICs0OSA0MTAyIDQ2MyA0NiAzOTANCg0KVGhvbWFz
LktvZWxsZXJAYmFzbGVyd2ViLmNvbQ0Kd3d3LmJhc2xlcndlYi5jb20NCg0KQkFTTEVSwrRTIENP
TVBPTkVOVFMgRU5IQU5DRSBZT1VSIFZJU0lPTg0KYmFzbGVyd2ViLmNvbS92aXNpb24tY29tcG9u
ZW50cw0KDQpNYW5hZ2VtZW50IGJvYXJkOiBEci4tSW5nLiBEaWV0bWFyIExleSAoQ0VPKSDCtyBK
b2huIFAuIEplbm5pbmdzIMK3IEFybmR0IEJha2UgwrcgSGFyZHkgTWVobA0KQ2hhaXJtYW4gb2Yg
dGhlIHN1cGVydmlzb3J5IGJvYXJkOiBOb3JiZXJ0IEJhc2xlcg0KQmFzbGVyIEFHIMK3IEFtdHNn
ZXJpY2h0IEzDvGJlY2sgSFJCIDQwOTAgwrcgVXN0LUlkTnIuOiBERSAxMzUgMDk4IDEyMSDCtyBT
dGV1ZXItTnIuOiAzMCAyOTIgMDQ0OTcgwrcgV0VFRS1SZWcuLU5yLiBERSA4Mzg4ODA0NQ0KPiBP
biA1IFNlcHRlbWJlciAyMDE3IGF0IDExOjM2LCBLb2VsbGVyLCBUaG9tYXMgPFRob21hcy5Lb2Vs
bGVyQGJhc2xlcndlYi5jb20+IHdyb3RlOg0KPj4gSGVsbG8gYWxsLA0KDQo+PiBJIGhhdmUgYmVl
biBzdHJ1Z2dsaW5nIHdpdGggYSBwcm9ibGVtIGZvciBhIGNvdXBsZSBvZiBkYXlzIG5vdywgd2l0
aG91dCBzdWNjZXNzIHNvIGZhci4gSG9wZSBzb21lYm9keSBvbiB0aGlzIGxpc3QgY2FuIGhlbHAu
DQoNCj4+IEkgaGF2ZSB0d28gcmVjaXBlcywgbGV0J3MgY2FsbCB0aGVtIHJlY2lwZV9hIGFuZCBy
ZWNpcGVfYiAoSSBhbSBub3QgYWxsb3dlZCB0byBzaGFyZSB0aGUgYWN0dWFsIHJlY2lwZXMgZm9y
IGxlZ2FsIHJlYXNvbnMpLiByZWNpcGVfYSBkZXBlbmRzIG9uIHJlY2lwZSBiOyB0aGVyZSBpcyBh
IGxpbmUNCj4+IHJlYWRpbmcgJ0RFUEVORFMgPSAiLi4uIHJlY2lwZV9iIC4uLiIgaW4gcmVjaXBl
X2EuYmIuIFdoZW5ldmVyIEkgaW52b2tlIHJlY2lwZV9iIGRpcmVjdGx5IChiaXRiYWtlIHJlY2lw
ZV9iKSwgYWxsIGlzIHdlbGwgYW5kIHJlY2lwZV9iIHByb2R1Y2VzIHRoZSBleHBlY3RlZCByZXN1
bHRzLiBJbg0KPj4gcGFydGljdWxhciwgdGhlIHBvcHVsYXRlX3N5c3Jvb3QgdGFzayBwbGFjZXMg
YSBudW1iZXIgb2YgaGVhZGVyIGZpbGVzIGluIHRoZSBzeXNyb290IGRpcmVjdG9yeS4gSWYsIGhv
d2V2ZXIsIEkgZG8gJ2JpdGJha2UgcmVjaXBlX2EnLCBJIGZpbmQgdGhhdCwgd2hpbGUgc2V2ZXJh
bCB0YXNrcyBmcm9tDQo+PiByZWNpcGVfYiBhcmUgZXhlY3V0ZWQsIHBvcHVsYXRlX3N5c3Jvb3Qg
aXMgb2J2aW91c2x5IG5vdCBhbW9uZyB0aGVtLiBJIHNob3VsZCBwcm9iYWJseSBtZW50aW9uIHRo
YXQgcmVjaXBlX2IgaW5oZXJpdHMgZnJvbSB0aGUgcXByZWJ1aWx0IGNsYXNzLg0KDQo+IHFwcmVi
dWlsdCBpcyBub3QgYSBjbGFzcyBJJ20gYXdhcmUgb2YgLS0gaXQgbWlnaHQgYmUgYSBnb29kIGlk
ZWEgdG8gcmV2aWV3IHRoZSBjbGFzcy4NCg0KSW5kZWVkLCBJIGZhaWxlZCB0byBub3RpY2UgdGhh
dCB0aGlzIGlzIG5vdCBhIHN0YW5kYXJkIHRhc2suIEl0cyBwdXJwb3NlIGlzIHRvIGluc3RhbGwg
cHJlYnVpbHQgYmluYXJ5IHN0dWZmIGZyb20gYW4gYXJjaGl2ZS4NCg0KPj4gSSBub3RpY2VkIHRo
YXQgcmVjaXBlX2Egc2V0cyBhIHZhcmlhYmxlICdQUkVCVUlMVCA9ICIxIicsIHdoaWNoIGRvZXMg
bm90IGFwcGVhciB0byBiZSB1c2VkIGFueXdoZXJlIGFuZCBpcyBub3QgbWVudGlvbmVkIGluIHRo
ZSB5b2N0byBkb2NzLiBNYXliZSB0aGlzIGhhcyBzb21ldGhpbmcNCj4+IHRvIGRvIHdpdGggdGhl
IHByb2JsZW0sIG9yIG1heWJlIG5vdC4NCg0KPj4gSSdkIGJlIGdyYXRlZnVsIGZvciBhbnkgaW5m
b3JtYXRpb24gdGhhdCBtaWdodCBiZSB1c2VmdWwgaW4gc29sdmluZyB0aGlzIHByb2JsZW0uDQoN
Cj4gWW91IGRpZG4ndCBtZW50aW9uIHRoZSBZb2N0byB2ZXJzaW9uLiBTeXNyb290IGZ1bmN0aW9u
YWxpdHkgaGFzIGNoYW5nZWQgcXVpdGUgYSBiaXQgaW4gcmVjZW50IHJlbGVhc2VzIHNvIHlvdSBz
aG91bGQgZG8gdGhhdC4gVGhlIGNoYW5nZXMgYWxzbyBtZWFuIHRoYXQgdW51c3VhbA0KPiBzeXNy
b290IHRyaWNrcyB3cml0dGVuIGEgZmV3IHJlbGVhc2VzIGJhY2sgd2lsbCBub3Qgd29yayBhcyBp
cyBvbiBtb3JlIHJlY2VudCByZWxlYXNlcy4gU2VlDQo+IGh0dHA6Ly93d3cueW9jdG9wcm9qZWN0
Lm9yZy9kb2NzL2N1cnJlbnQvcmVmLW1hbnVhbC9yZWYtbWFudWFsLmh0bWwjbWlncmF0aW9uLTIu
My1yZWNpcGUtc3BlY2lmaWMtc3lzcm9vdHMgZm9yIG1vcmUgZGV0YWlscw0KDQpCaXRCYWtlIHRl
bGxzIG1lIHRoYXQgSSBhbSBvbiB2ZXJzaW9uIDEuMjguDQoNCj4gT24gbGF0ZXN0IHJlbGVhc2Ug
ImJpdGJha2UgLWcgLXUgdGFza2V4cCByZWNpcGUtYSIgd2lsbCBnaXZlIHlvdSBhIFVJIGZvciBi
cm93c2luZyB0YXNrIGRlcGVuZGVuY2llcy4gWW91IHNob3VsZCBmaW5kICJyZWNpcGUtYS5kb19j
b25maWd1cmUiIGRlcGVuZGluZw0KPiAicmVjaXBlLWEuZG9fcHJlcGFyZV9yZWNpcGVfc3lzcm9v
dCIsIGFuZCB0aGF0IGRlcGVuZGluZyBvbiAicmVjaXBlLWIuZG9fcG9wdWxhdGVfc3lzcm9vdCIu
IElmIHRoaXMgaXMgbm90IHRoZSBjYXNlIHRoZW4gaXQgc2VlbXMgbGlrZWx5IHNvbWV0aGluZyBp
biB0aGUgcmVjaXBlDQo+IChvciBpdHMgaW5oZXJpdHMpIGlzIHVuZG9pbmcgdGhhdCBkZXBlbmRl
bmN5Lg0KDQpJIGdvdCBhIHN0ZXAgZnVydGhlci4gTG9va2luZyBhdCB0aGUgbG9nIGZpbGVzIHBy
b2R1Y2VkIGJ5IGJ1aWxkaW5nIHJlY2lwZV9hLCBJIGNhbm5vdCBmaW5kIG9uZSBmb3IgdGhlIGRv
X2NvbmZpZ3VyZSB0YXNrLCB3aGljaCBzZWVtcyB0byBpbmRpY2F0ZSB0aGF0IG5vDQpzdWNoIHRh
c2sgd2FzIGV2ZXIgZXhlY3V0ZWQuIFRoaXMgd291bGQgZXhwbGFpbiB3aHkgdGhlIGRlcGVuZGVu
Y3kgZGlkIG5vdCB3b3JrLCBidXQgbGVhZHMgdG8gdGhlIHF1ZXN0aW9uIHdoeSBkb19jb25maWd1
cmUgZGlkIG5vdCBydW4uDQpBbnkgaWRlYSB3aGVyZSBJIHNob3VsZCBsb29rPw0KDQo+ICAtIEp1
c3NpDQoNClRoYW5rcywNClRob21hcw0KDQo=

