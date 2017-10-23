Return-Path: <joshua.g.lock@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51A87E00D04; Mon, 23 Oct 2017 09:42:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C327EE00CF2
	for <poky@yoctoproject.org>; Mon, 23 Oct 2017 09:42:55 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Oct 2017 09:42:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,423,1503385200"; d="scan'208";a="163880061"
Received: from jlock-mobl3.ld.intel.com (HELO jlock-mobl3.ger.corp.intel.com)
	([10.103.239.29])
	by orsmga005.jf.intel.com with ESMTP; 23 Oct 2017 09:42:53 -0700
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
References: <20171020155406.7074-1-joshua.g.lock@intel.com>
	<1508528345.11251.0@fm-out.intel.com>
From: Joshua Lock <joshua.g.lock@intel.com>
Message-ID: <4bd6a505-4441-b864-a39a-55b5c76b169e@intel.com>
Date: Mon, 23 Oct 2017 17:42:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <1508528345.11251.0@fm-out.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] yocto-bsp: remove this tool
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
X-List-Received-Date: Mon, 23 Oct 2017 16:42:56 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

CgpPbiAyMC8xMC8xNyAyMDozOSwgTGVvbmFyZG8gU2FuZG92YWwgd3JvdGU6Cj4gCj4gCj4gT24g
RnJpLCBPY3QgMjAsIDIwMTcgYXQgMTA6NTQgQU0sIEpvc2h1YSBMb2NrIDxqb3NodWEuZy5sb2Nr
QGludGVsLmNvbT4gCj4gd3JvdGU6Cj4+IFRoZSB5b2N0by1ic3AgdG9vbCBpcyBub3QgYWN0aXZl
bHkgbWFpbnRhaW5lZCBhbmQgcmVxdWlyZXMgYWN0aXZlIAo+PiBmZWF0dXJlIGRldmVsb3BtZW50
IHRvIG1ha2UgaXQgYSB1c2VmdWwgYW5kIGNvbXBlbGxpbmcgdG9vbC4gSSBwcm9wb3NlIAo+PiB3
ZSBkcm9wIGl0IHVudGlsIHN1Y2ggdGltZSBhcyBzb21lb25lIGlzIGFibGUgdG8gZGVkaWNhdGUg
cmVzb3VyY2VzIHRvIAo+PiBkZXZlbG9waW5nIGFuZCBtYWludGFpbmluZyBpdC4KPiAKPiAKPiAo
SSB0cmllZCByZXBseWluZyB0aGlzIG1lc3NhZ2UgYnV0IGVtYWlsIHdhcyB0b28gaGVhdnkgc28g
aXQgd2FzIG5vdCAKPiBkZWxpdmVyZWQgYXQgdGhlIGVuZC4pCj4gCj4gCj4gSm9zaHVhLCBJIGJl
bGlldmUgdGhpcyBwYXRjaCBhZmZlY3RzIHlvY3RvLWtlcm5lbCB0b29sIChnaXQgZ3JlcCBzaG93
cyAKPiBzb21lIG1hdGNoZXMgd2l0aCB0aGlzIHNlcmllcyksIHNvIGVpdGhlciB0aGUgbGF0dGVy
IGlzIHJlbW92ZWQgb3IgbGVhdmUgCj4gcmVxdWlyZWQgZmlsZXMgaW4gdGhlIHJlcG8uCgpZb3Un
cmUgcmlnaHQhIFRoYW5rcyBmb3Igc3BvdHRpbmcgdGhhdCwgSSdkIGZvcmdvdHRlbiB0aGUgeW9j
dG8ta2VybmVsIAp0b29sIGV2ZW4gZXhpc3Rz4oCmCgpJJ3ZlIHN1Ym1pdHRlZCBhIHNlcmllcyB3
aGljaCByZW1vdmVzIHlvY3RvLWJzcCwgeW9jdG8tbGF5ZXIgYW5kIAp5b2N0by1rZXJuZWwg4oCU
IEkgZG9uJ3QgdGhpbmsgd2UgaGF2ZSB0aGUgcmVzb3VyY2VzIHRvIG1haW50YWluIGFueSBvZiAK
dGhlbS4gOi0vCgpKb3NodWEKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkludGVsIENvcnBvcmF0aW9uIChVSykgTGlt
aXRlZApSZWdpc3RlcmVkIE5vLiAxMTM0OTQ1IChFbmdsYW5kKQpSZWdpc3RlcmVkIE9mZmljZTog
UGlwZXJzIFdheSwgU3dpbmRvbiBTTjMgMVJKClZBVCBObzogODYwIDIxNzMgNDcKClRoaXMgZS1t
YWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFs
IGZvcgp0aGUgc29sZSB1c2Ugb2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gQW55IHJldmll
dyBvciBkaXN0cmlidXRpb24KYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlv
dSBhcmUgbm90IHRoZSBpbnRlbmRlZApyZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5k
ZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzLgo=


